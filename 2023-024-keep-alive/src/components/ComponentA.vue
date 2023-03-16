<template>
  <div>
    <h1>Component A</h1>
    <input type="text" placeholder="Type somthing" />
  </div>
</template>
<script setup>
import { onMounted } from "vue";

onMounted(() => {
  console.log("Component A mounted");
});
</script>
