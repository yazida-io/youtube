<script setup lang="ts">
import counterStore from "@/stores/counterStore";

const store = counterStore()

const increment = () => store.count++
</script>

<template>
    <button class="border mb-2 px-2" @click="increment">Increment {{ store.count }}</button>
    <button class="border  px-2" @click="() => store.$reset()">RESET</button>
</template>