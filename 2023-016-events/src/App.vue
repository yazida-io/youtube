<script setup lang="ts">
import Search from "./components/Search.vue";

const onSearch = (value: string) => {
  console.log("input:", value);
};
</script>

<template>
  <main>
    <search @submit="onSearch" />
  </main>
</template>
