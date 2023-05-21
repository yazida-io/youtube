<template>
    <main class="page">
        <span class="text-9xl">{{ icon }}</span>
        <h1 class="title">{{ title }}</h1>
        <p class="subtitle border-2 px-3 py-2">{{ subtitle }}</p>
    </main>
</template>
<script lang="ts" setup>
const icon = '🚏';
const title = 'Vue Router (4)';
const subtitle = 'Middleware & Navigation Guards';
</script>
<style scoped>
.page {
    @apply flex flex-col items-center justify-center h-screen;
    @apply bg-gradient-to-br from-indigo-950 to-gray-700;
}
.title {
    @apply bg-clip-text text-transparent bg-gradient-to-br from-green-400 to-indigo-500 mt-4 text-6xl uppercase font-bold;
}
.subtitle {
    @apply bg-clip-text text-transparent bg-gradient-to-br to-pink-50 from-rose-500 mt-4 text-3xl uppercase font-bold;
}
</style>
