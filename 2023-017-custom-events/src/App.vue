<script setup lang="ts">
import { ref } from "vue";
import AddItem from "./components/AddItem.vue";

const items = ref<string[]>([]);

const onAddItem = (input: string) => {
  items.value.push(input);
};
</script>

<template>
  <main>
    <add-item @submit-input="onAddItem" />
    <ul>
      <li v-for="(item, index) in items" :key="index">
        {{ item }}
      </li>
    </ul>
  </main>
</template>
<style scoped>
ul {
  display: flex;
  /* justify-content: center; */
  align-items: center;
  flex-direction: column;
  gap: 7px;
  width: 410px;
  padding: 0;
  margin: 10px 0;
}

li {
  list-style: none;
  background-color: rgba(62, 69, 74, 0.132);
  width: 100%;
  border: 1px solid rgba(62, 69, 74, 0.132);
}
</style>
