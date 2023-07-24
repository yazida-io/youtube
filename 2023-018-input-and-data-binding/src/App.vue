<script setup lang="ts">
import { ref } from "vue";
import AddItem from "./components/AddItem.vue";
import InputDataBinding from "./components/InputDataBinding.vue";

const items = ref<string[]>([]);

const onAddItem = (input: string) => {
  items.value.push(input);
};
</script>

<template>
  <main>
    <!-- <add-item @submit-input="onAddItem" />
    <ul>
      <li v-for="(item, index) in items" :key="index">
        {{ item }}
      </li>
    </ul> -->
    <input-data-binding />
  </main>
</template>
