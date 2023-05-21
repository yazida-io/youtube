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
    <main class="flex-center w-full h-screen">
        <div class="bg-indigo-950/20 w-[900px] h-[500px]">
            <router-view/>
        </div>
    </main>
</template>