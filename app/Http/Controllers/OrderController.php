<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Stripe\Charge;
use Stripe\Customer;
use Stripe\Stripe;
use Stripe\Issuing\Card;
use Stripe\Token;

class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::all();
        return response()->json(['data' => $orders], 200);
    }

    public function isStripeCustomer()
    {
        return Auth::user() && User::where('id', Auth::user()->id)->whereNotNull('stripe_id')->first();
    }

    public function createStripeCustomer($token)
    {
        Stripe::setApiKey(env('STRIPE_SECRET'));
        $customer = Customer::create([
            'description' => Auth::user()->email,
            'source' => $token
        ]);

        $user = User::findOrFail(Auth::user()->id);
        $user->stripe_id = $customer->id;
        $user->save();

        return $customer;
    }

    public function postStoreOrder($product_id)
    {
        Order::create([
            'user_id' => Auth::user()->id,
            'product_id' => $product_id
        ]);

        return response()->json([
            'message' => 'Purchase success, thank you very much!'
        ], 200);
    }

    public function createStripeCharge($product_id, $product_price, $product_name, $customer)
    {
        try {
            Charge::create([
                "amount" => $product_price * 120,
                "currency" => "usd",
                "customer" => $customer->id,
                "description" => $product_name
            ]);
        } catch (Card $e) {
            return response()->json([
                'message' => 'Your credit card was been declined',
                'error' => $e
            ], 402);
        }

        return $this->postStoreOrder($product_id);
    }

    public function chargeCustomer($product_id, $product_price, $product_name, $token)
    {
        Stripe::setApiKey(env('STRIPE_SECRET'));

        if (!$this->isStripeCustomer()) {
            $customer = $this->createStripeCustomer($token);
        }

        $customer = Customer::retrieve(Auth::user()->stripe_id);

        return $this->createStripeCharge($product_id, $product_price, $product_name, $customer);
    }

    public function postPayStripe(Request $request)
    {
        Stripe::setApiKey(env('STRIPE_KEY'));
        $product_id = $request->product_id;
        $product = Product::findOrFail($product_id);
        $product_price = $product->price;
        $product_name = $product->name;

        $token = Token::create([
            "card" => [
                "name" => $request->name,
                "number" => $request->number,
                "exp_month" => $request->exp_month,
                "exp_year" => $request->exp_year,
                "cvc" => $request->cvc
            ]
        ]);
        $stripeToken = $token['id'];

        return $this->chargeCustomer($product_id, $product_price, $product_name, $stripeToken);
    }
}
