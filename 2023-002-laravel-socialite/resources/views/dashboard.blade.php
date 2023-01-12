@extends("layouts.auth")

@section("content")
    <div class="flex-center py-10 flex-col gap-5">
        <h1 class="text-7xl font-bold">Bonjour {{ auth()->user()->name }}</h1>
        <p>Bienvenue sur votre dashboard</p>

        <a
            href="{{ route('logout') }}"
            class="flex-center gap-2 bg-rose-500 py-2 px-4 text-white text-sm rounded-xl"
        >Logout</a>
    </div>
@endsection
