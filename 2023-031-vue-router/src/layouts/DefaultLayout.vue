<script setup lang="ts">
import {useRouter} from "vue-router";

defineProps<{ links: { text: string, name: string }[] }>()
const router = useRouter()
const logout = () => {
    localStorage.removeItem('token')
    router.push({name: 'login'})
}
</script>

<template>
    <nav class="flex-center bg-indigo-950">
        <router-link
                v-for="({text, name}, index) in links"
                :key="index"
                :to="{ name }"
                class="flex-1 text-center p-2 text-white shadow-xl"
                active-class="bg-white border-transparent !text-indigo-950"
        >
            {{ text }}
        </router-link>

        <button class="flex-1 text-center p-2 text-white shadow-xl" @click="logout">
            Logout
        </button>
    </nav>
    <main class="flex-center w-screen h-screen overflow-hidden">
        <router-view v-slot="{ Component }">
            <transition
                mode="out-in"
                    class="transform"
                    enter-active-class="transition ease-out duration-400"
                    leave-active-class="transition ease-out duration-200"
                    enter-from-class="opacity-0 translate-x-full"
                    enter-to-class="opacity-100 translate-x-0"
                    leave-from-class="opacity-100 translate-x-0"
                    leave-to-class="opacity-0 -translate-x-full"
            >
                <component :is="Component"/>
            </transition>
        </router-view>
    </main>
</template>