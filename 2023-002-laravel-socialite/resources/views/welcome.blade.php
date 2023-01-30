@extends("layouts.guest")

@section("content")
    <div
        class="relative flex items-top justify-center min-h-screen bg-stone-50 sm:items-center py-4 sm:pt-0"
    >
        @if (Route::has('login'))
            <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                @auth
                    <a href="{{ route('home') }}" class="text-sm text-gray-700 dark:text-gray-500">Home</a>
                @else
                    <a
                        href="{{ route('login') }}"
                        class="flex-center gap-2 bg-indigo-500 py-2 px-4 text-white text-sm rounded-xl"
                    >
                        <svg class="w-5" viewBox="0 0 24 24">
                            <path
                                fill="currentColor"
                                d="M12,17A2,2 0 0,0 14,15C14,13.89 13.1,13 12,13A2,2 0 0,0 10,15A2,2 0 0,0 12,17M18,8A2,2 0 0,1 20,10V20A2,2 0 0,1 18,22H6A2,2 0 0,1 4,20V10C4,8.89 4.9,8 6,8H7V6A5,5 0 0,1 12,1A5,5 0 0,1 17,6V8H18M12,3A3,3 0 0,0 9,6V8H15V6A3,3 0 0,0 12,3Z"
                            />
                        </svg>
                        <span>Sign in</span>
                    </a>

                    @if (Route::has('register'))
                        <a
                            href="{{ route('register') }}"
                            class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline"
                        >
                            Register
                        </a>
                    @endif
                @endauth
            </div>
        @endif

        <div class="max-w-6xl mx-auto sm:px-6 lg:px-8">
            <div class="flex justify-center pt-8 sm:justify-start sm:pt-0">
                <h1 class="text-white text-7xl text-stone-900 text-transparent bg-clip-text bg-gradient-to-br from-rose-600 via-rose-400 to-indigo-600">
                    Laravel Socialite</h1>
            </div>
        </div>
    </div>
@endsection
