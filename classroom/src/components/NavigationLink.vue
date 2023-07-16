<script setup>
defineProps({
  text: String,
  href: String,
  attention: {
    type: Boolean,
    default: false,
  },
})
</script>

<template>
  <a :href="href" class="w-full group flex items-center gap-2 text-gray-400">
    <span class="p-2 bg-pink-50/10 rounded-xl group-hover:text-gray-100 relative group-hover:bg-secondary/30">
      <span
          v-if="attention"
          class="w-3 h-3 bg-pink-500 rounded-full absolute top-4 -translate-y-1/2 right-2"
      ></span>
      <slot />
    </span>
    <span class="flex-1 text-xl group-hover:text-gray-100">{{ text }}</span>
  </a>
</template>