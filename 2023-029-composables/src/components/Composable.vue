<template>
  <div>
    <h1>Composable</h1>
    <p>x: {{ x }} y: {{ y }}</p>
  </div>
</template>
<script setup lang="ts">
import useMouseMove from "@/composables/useMouseMove";

const { x, y } = useMouseMove();
</script>
