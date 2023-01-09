<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LaraBot</title>
    @vite('resources/css/app.css')
    @livewireStyles
</head>

<body>
<main class="h-screen w-screen bg-stone-200 flex justify-center items-center">
    <div class="container bg-stone-100 gap-4 max-w-4xl h-[700px] rounded-xl p-4 flex justify-start flex-col">
        <livewire:chat-bot />
    </div>
</main>
@livewireScripts
</body>

</html>
