<script setup lang="ts">
import { ref } from "vue";
import InputDataBinding from "./components/InputDataBinding.vue";
import Watchers from "./components/Watchers.vue";

const items = ref<string[]>([]);

const onAddItem = (input: string) => {
  items.value.push(input);
};
</script>

<template>
  <main>
    <input-data-binding v-if="false" />
    <watchers v-else />
  </main>
</template>
