<template>
  <div>
    <input
      type="text"
      v-model="input"
      placeholder="type somthing..."
      @keyup.enter="submit"
    />
    <button @click="submit">ADD</button>
  </div>
</template>
<script setup lang="ts">
import { ref } from "vue";

const emit = defineEmits<{
  (e: "submitInput", value: string): void;
}>();

const input = ref("");
const submit = () => {
  emit("submitInput", input.value);
  input.value = "";
};
</script>
<style scoped>
div {
  display: flex;
  justify-content: center;
  align-items: center;
}
</style>
