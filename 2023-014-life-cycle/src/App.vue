<template>
  <h1>Hello world !</h1>
</template>

<script setup lang="ts">
import { onMounted } from 'vue';

onMounted(() => {
  console.log('mounted');
});

/*
export default {
  beforeCreate() {
    console.log('beforeCreate');
  },
  created() {
    console.log('created');
  },
  beforeMount() {
    console.log('beforeMount');
  },
  mounted() {
    console.log('mounted');
  },
}
*/
</script>


<style scoped>
h1 {
  text-align: center;
}
</style>
