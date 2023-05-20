<template>
    <thumbnail v-if="false"/>
    <template v-else class="bg-white h-screen">
        <nav class="flex-center bg-indigo-950">
            <router-link
                    v-for="({text, name}, index) in links"
                    :key="index"
                    :to="{ name }"
                    class="flex-1 text-center p-2 text-white text-opacity-80 shadow-xl"
                    active-class="bg-white border-transparent text-white text-indigo-950"
            >
                {{ text }}
            </router-link>
        </nav>
        <main>
            <router-view></router-view>
        </main>
    </template>
</template>
<script lang="ts" setup>
const links = [
    {text: 'Home', name: 'home'},
    {text: 'About', name: 'about'},
    {text: 'Users', name: 'users'},
]
</script>