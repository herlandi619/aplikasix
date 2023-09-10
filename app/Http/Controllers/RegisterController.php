<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register.index',[
            'title' => 'Register',
            'active' => 'Register'
        ]);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|max:255',
            'username' => 'required|max:255|unique:users',
            'email' => 'required|email:dns|unique:users',
            'password' => 'required|min:5|max:255'
        ]);
        $validated['password'] = bcrypt($validated['password']);
        $user = User::create($validated);

        Session::flash('message', 'Data Berhasil disimpan, Silahkan Login.'); 
        Session::flash('alert-class', 'alert-success'); 

        return redirect('/login');
    }
}
