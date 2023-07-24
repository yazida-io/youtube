<script setup lang="ts">
import Navigation from "@/components/Navigation.vue";
import CallRoom from "@/components/CallRoom.vue";
import CallActions from "@/components/CallActions.vue";
</script>

<template>
  <main class="bg-[#F8F8FA] h-screen w-screen flex p-7 gap-7">
    <navigation class="w-24 bg-gray rounded-2xl overflow-hidden shadow-xl shadow-gray/5" />
    <call-room class="flex-1" />
    <call-actions class="w-72" />
  </main>
</template>