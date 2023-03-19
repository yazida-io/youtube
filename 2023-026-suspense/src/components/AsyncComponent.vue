<template>
  <p>{{ users }}</p>
</template>
<script>
import { ref } from "vue";

export default {
  async setup() {
    const users = ref([]);

    const response = await fetch("https://jsonplaceholder.typicode.com/users");
    
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    await fetch("https://jsonplaceholder.typicode.com/users");
    users.value = await response.json();

    return {
      users,
    };
  },
};
</script>
