<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return response()->json($products);
    }

    public function show($id)
    {
        $product = Product::find($id);
        return response()->json($product);
    }

    public function create(Request $request)
    {
        $product = new Product();
        $product->name =  $request->name;
        $product->description =  $request->description;
        $product->category =  $request->category;
        $product->price =  $request->price;
        $product->save();
        return response()->json([
            'message' => 'Create Product Success'
        ], 200);
    }

    public function update(Request $request)
    {
        $id = $request->id_product;
        $product = Product::find($id);
        $product->name =  $request->name;
        $product->description =  $request->description;
        $product->category =  $request->category;
        $product->price =  $request->price;
        $product->save();

        return response()->json([
            'message' => 'Data successfully updated',
            'data' => $product,
        ], 200);
    }

    public function delete($id)
    {
        $product = Product::find($id);
        $product->delete();

        return response()->json([
            'message' => 'Data successfully deleted',
            'data' => $product,
        ], 200);
    }
}
