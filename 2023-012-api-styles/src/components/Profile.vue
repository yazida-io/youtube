<template>
  <div>
    <div>
      <p>First Name: {{ profile.firstName }}</p>
      <p>Last Name: {{ profile.lastName }}</p>
      <p>Full Name: {{ fullName }}</p>
    </div>
    <button @click="rename()">Rename</button>
  </div>
</template>
<script setup>
import { computed,reactive, ref, watch } from "vue";

const profile = reactive({
  firstName: "Mouctar",
  lastName: "Diallo",
});

const rename = () => {
  profile.firstName = "Elon";
  profile.lastName = "Musk";
};

const fullName = computed(() => `${profile.firstName} ${profile.lastName}`);
</script>
