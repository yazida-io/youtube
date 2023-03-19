<template>
  <main>
    <h1>🍃 Suspense</h1>
    <suspense>
      <async-component />

      <template #fallback>
        <h2>loading...</h2>
      </template>
    </suspense>
  </main>
</template>
<script setup>
import AsyncComponent from "./components/AsyncComponent.vue";
</script>

<style scoped>
main {
  overflow-y: scroll;
}
</style>
