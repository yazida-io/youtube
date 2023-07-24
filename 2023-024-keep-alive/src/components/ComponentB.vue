<template>
  <div>
    <h1>Component B</h1>
    <button @click="counter++">Counter: {{ counter }}</button>
  </div>
</template>
<script setup>
import { onActivated, onDeactivated, onMounted, ref } from "vue";

const counter = ref(0);

onMounted(() => {
  console.log("Component B mounted");
});
onActivated(() => {
  console.log("Component B activated");
});
onDeactivated(() => {
  console.log("Component B deactivated");
});

</script>
