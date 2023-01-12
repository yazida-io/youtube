<?php

namespace App\Http\Controllers;

use App\Enums\Provider;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Laravel\Socialite\Facades\Socialite;

class SocialiteAuthController extends Controller
{
    public function redirect(Provider $provider)
    {
        return Socialite::driver($provider->value)->redirect();
    }


    public function authenticate(Provider $provider)
    {
        try {
            $socialiteUser = Socialite::driver($provider->value)->user();
            $user = User::firstOrCreate(
                ['email' => strtolower($socialiteUser->getEmail())],
                ['name' => $socialiteUser->getName(), 'password' => Hash::make(time())]
            );

            Auth::login($user);

            return to_route('dashboard');
        } catch (\Exception $exception) {
            return to_route('login');
        }
    }
}
