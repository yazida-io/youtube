<?php

namespace App\Http\Controllers;

use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthenticationController extends Controller
{
    public function form(): View
    {
        return view('login');
    }

    public function authenticate(Request $request): RedirectResponse
    {
        $credentials = $request->validate(['email' => ['required', 'string'], 'password' => ['required', 'string']]);

        return Auth::attempt($credentials) ? to_route('dashboard') : to_route('login');
    }

    public function logout(): RedirectResponse
    {
        Auth::logout();

        return to_route('home');
    }
}
