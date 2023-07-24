<script setup lang="ts">
defineProps<{user: number}>()
</script>

<template>
    <h1>
        Hello my user code is {{ user }}
    </h1>
</template>