<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laravel Socialite</title>
    @vite('resources/css/app.css')
</head>
<body class="h-full w-full overflow-x-hidden overflow-y-auto">
@yield('content')
</body>
</html>
