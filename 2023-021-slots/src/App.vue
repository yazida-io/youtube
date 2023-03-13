<script setup lang="ts">
import { ref } from "vue";
import Layout from "./components/Layout.vue";

const currentPage = ref("Home");

const onUpdate = ({ link }) => {
  currentPage.value = link;
};
</script>

<template>
  <layout @update="onUpdate">
    <p>
      {{ currentPage }}
    </p>

    <template #footer>
      <p>loremksdwhfklsjdflk</p>
    </template>
  </layout>
</template>

<style scoped>
h1 {
  text-align: center;
  line-height: normal;
  text-transform: uppercase;
}
</style>
