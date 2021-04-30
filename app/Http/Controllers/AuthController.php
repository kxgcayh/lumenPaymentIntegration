<?php

namespace App\Http\Controllers;

use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }

    public function register(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string',
            'email' => 'required|email|unique:users',
            'password' => 'required|confirmed:password_confirmation',
            'password_confirmation' => 'required'
        ]);

        try {
            $user = new User();
            $user->name = $request->name;
            $user->email = $request->email;
            $password = $request->password;
            $user->password = app('hash')->make($password);
            $user->save();
            return response()->json([
                'user' => $user,
                'message' => 'User Registered Successfully'
            ], 201);
        } catch (Exception $e) {
            return response()->json([
                'message' => 'Registration Failed',
                'error' => $e
            ], 409);
        }
    }

    public function login(Request $request)
    {
        $this->validate($request, [
            'email' => 'required|string',
            'password' => 'required|string',
        ]);

        $credentials = $request->only([
            'email', 'password'
        ]);

        if (!$token = Auth::attempt($credentials)) {
            return response()->json(['message' => 'Unauthorized'], 401);
        }

        return $this->generateToken($token);
    }

    public function logout()
    {
        Auth::logout();
        return response()->json([
            'message' => 'Logout Success'
        ]);
    }
}
