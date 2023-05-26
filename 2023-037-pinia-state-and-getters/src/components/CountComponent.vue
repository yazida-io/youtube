<script setup lang="ts">
import counterStore from "@/stores/counterStore";

const store = counterStore()

const increment = () => store.count++
</script>

<template>
    <button @click="increment">Increment {{ store.count }}</button>
    <button @click="() => store.$reset()">RESET</button>
</template>