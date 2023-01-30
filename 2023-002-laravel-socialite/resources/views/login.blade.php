@extends("layouts.guest")

@section('content')
    <div
        class="bg-stone-100 text-blue-900 h-screen w-screen overflow-hidden flex justify-center items-center flex-col gap-7">
        <a href="{{ route('home') }}" class="login__logo">
            <svg class="w-10" viewBox="0 0 24 24">
                <path fill="currentColor"
                      d="M21.4 7.5C22.2 8.3 22.2 9.6 21.4 10.3L18.6 13.1L10.8 5.3L13.6 2.5C14.4 1.7 15.7 1.7 16.4 2.5L18.2 4.3L21.2 1.3L22.6 2.7L19.6 5.7L21.4 7.5M15.6 13.3L14.2 11.9L11.4 14.7L9.3 12.6L12.1 9.8L10.7 8.4L7.9 11.2L6.4 9.8L3.6 12.6C2.8 13.4 2.8 14.7 3.6 15.4L5.4 17.2L1.4 21.2L2.8 22.6L6.8 18.6L8.6 20.4C9.4 21.2 10.7 21.2 11.4 20.4L14.2 17.6L12.8 16.2L15.6 13.3Z"/>
            </svg>
        </a>
        <div class="bg-white rounded-2xl py-7 px-4 space-y-2 w-96">
            <form
                action="{{ route('login.submit') }}"
                method="post"
                class="flex flex-col gap-7"
            >
                @csrf

                <label class="login__form-item">
                    <span class="login__form-label">Email</span>
                    <input type="email" name="email" placeholder="musk@space-x.com" class="login__form-input"/>
                </label>

                <label class="login__form-item">
                    <span class="login__form-label">Password</span>
                    <input type="password" name="password" placeholder="∙∙∙∙∙∙∙" class="login__form-input"/>
                    <a class="mt-1 text-right text-xs" href="#">Forgot password ?</a>
                </label>

                <button class="login__form-submit" type="submit">
                    Sign In
                </button>
            </form>

            <div class="flex-center gap-4 py-3">
                <hr class="flex-1"/>
                <span class="text-xs">OR</span>
                <hr class="flex-1"/>
            </div>

            <div class="flex justify-center items-center gap-7">
                @foreach(\App\Enums\Provider::values() as $provider)
                    <a
                        href="{{ route('oauth.redirect', ['provider' => $provider]) }}"
                        class="bg-indigo-50 p-2 rounded-full"
                    >
                        <x-dynamic-component :component="'icon-' . $provider" class="text-stone-700"/>
                    </a>
                @endforeach
            </div>
        </div>
    </div>
@endsection
