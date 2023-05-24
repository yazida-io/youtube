<script setup lang="ts">
import counterStore from "@/stores/counterStore";

const store = counterStore()
</script>

<template>
    <h1>Counter: {{ store.count }}</h1>
</template>