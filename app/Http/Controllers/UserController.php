<?php

namespace App\Http\Controllers;

use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redis;

class UserController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $users = User::all();
        return response()->json($users, 200);
    }

    public function show(Request $request)
    {
        $id = $request->id;
        try {
            $user = User::findOrFail($id);
            return response()->json(['user' => $user], 200);
        } catch (Exception $e) {
            return response()->json(['message' => 'User not Found', 'error' => $e], 404);
        }
    }

    public function profile()
    {
        return response()->json([
            'user' => Auth::user()
        ], 200);
    }
}
