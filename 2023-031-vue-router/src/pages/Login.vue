<script setup lang="ts">
import {useRouter} from "vue-router";

const router = useRouter()

const authenticate = () => {
    localStorage.setItem('token', '123')
    router.push({name: 'home'})
}
</script>

<template>
    <div class="bg-indigo-200 p-7 rounded-xl">
        <form class="flex-center flex-col gap-3">
            <input
                    type="text"
                    placeholder="Username"
                    class="border-2 border-gray-300 p-2 rounded-lg"
            />
            <input
                    type="password"
                    placeholder="Password"
                    class="border-2 border-gray-300 p-2 rounded-lg"
            />
            <button @click="authenticate" class="bg-indigo-950 text-white p-2 rounded-lg block w-full">
                Login
            </button>
        </form>
    </div>
</template>