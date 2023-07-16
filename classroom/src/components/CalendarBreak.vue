<script setup>
defineProps({
  name: String,
  times: {
    type: Object,
    required: true,
  },
})
</script>

<template>
  <div class="flex items-center justify-start">
    <div class="w-32 h-full bg-gray-200"/>

    <div class="flex-center gap-20 text-primary-light flex-1">
      <div class="h-[1px] flex-1 bg-neutral-300"/>

      <slot name="left-icon"/>

      <div class="text-center">
        <h3 class="text-3xl font-bold">{{ name }}</h3>
        <p class="text-xl text-gray-500">{{ times.start }} - {{ times.end }}</p>
      </div>

      <slot name="right-icon"/>

      <div class="h-[1px] flex-1 bg-neutral-300"/>
    </div>
  </div>
</template>
