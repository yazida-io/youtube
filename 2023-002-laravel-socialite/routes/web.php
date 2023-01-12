<?php

use App\Http\Controllers\AuthenticationController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\SocialiteAuthController;
use Illuminate\Support\Facades\Route;

Route::view('/', 'welcome')->name('home');

Route::controller(AuthenticationController::class)->group(function () {
    Route::get('login', 'form')->middleware('guest')->name('login');
    Route::post('login', 'authenticate')->middleware('guest')->name('login.submit');
    Route::any('logout', 'logout')->middleware('auth:web')->name('logout');
});

Route::controller(SocialiteAuthController::class)->group(function () {
    Route::get('oauth/{provider}/redirect', 'redirect')->name('oauth.redirect');
    Route::get('oauth/{provider}/callback', 'authenticate');
});

Route::prefix('dashboard')->middleware('auth:web')->group(function () {
    Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
});
