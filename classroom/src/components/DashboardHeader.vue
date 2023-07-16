<script setup>
const dateTime = {
  date: "8 FEB",
  time: "10:00",
  day: "Wednesday"
}

const images = [
    "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&h=400&q=80",
    "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&h=400&q=80",
    "https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&h=400&q=80",
]
</script>

<template>
<header class="py-7 flex items-center justify-between text-primary">
  <div class="flex-1 flex items-center justify-start gap-10">
    <div class="bg-primary/5 rounded-2xl p-4">
      <p class="text-xl font-bold">{{ dateTime.date }}</p>
      <p class="text-xl">{{ dateTime.time }}</p>
    </div>

    <p class="text-5xl font-bold">
      {{ dateTime.day }}
    </p>
  </div>

  <div class="flex-1 flex items-center justify-end gap-10">
    <label class="flex-center bg-primary/5 rounded-full max-w-sm flex-center py-1 px-4">
      <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 mr-2" viewBox="0 0 512 512"><path fill="currentColor" d="M416 208c0 45.9-14.9 88.3-40 122.7l126.6 126.7c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0s208 93.1 208 208zM208 352a144 144 0 1 0 0-288a144 144 0 1 0 0 288z"/></svg>
      <input placeholder="Search..." class="bg-transparent flex-1 p-2" type="search" name="search" />
    </label>

    <div>
      <div class="-space-x-4 flex-center">
        <img
            v-for="(image, index) in images"
            :key="index"
            class="w-12 h-12 rounded-full inline-block border-4 border-white"
            alt="image"
            :src="image"
        />
        <div class="w-12 h-12 rounded-full inline-block border-4 border-white bg-neutral-200 flex-center">
          +24
        </div>
      </div>
    </div>
  </div>
</header>
</template>