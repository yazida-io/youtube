<template>
    <input type="text" v-model="input" placeholder="type somthing..." />
    <button @click="onSubmit">Search</button>
</template>
<script setup lang="ts">
import { ref } from "vue";
const emit = defineEmits<{
    (e: 'submit', value: string): void;
}>();

const input = ref<string>('');
const onSubmit = () => {
    emit('submit', 'input');
};
</script>
