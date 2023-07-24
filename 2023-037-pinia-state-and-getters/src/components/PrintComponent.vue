<script setup lang="ts">
import counterStore from "@/stores/counterStore";

const store = counterStore()
</script>

<template>
    <p>Counter: {{ store.count }}</p>
    <p>Double Counter: {{ store.doubleCount }}</p>
</template>