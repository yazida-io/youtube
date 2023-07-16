<script setup>
defineProps({
  color: String,
  times: Object,
  instructor: Object,
  course: Object,
  location: {
    type: Object,
    default: null
  },
  mode: {
    type: String,
    default: null
  }
})

</script>

<template>
  <div class="flex-center text-primary group">
    <div class="w-32 flex-center flex-col gap-2">
      <p class="font-bold text-2xl">
        {{ times.start }}
      </p>
      <div class="w-7 h-[3px] bg-primary/20"/>
      <p class="font-bold text-2xl">
        {{ times.end }}
      </p>
    </div>

    <div
        class="flex-1 p-10 rounded-2xl flex items-center justify-between gap-10 transform group-hover:scale-[1.01] transition-all"
        :class="{
          'bg-secondary': color === 'secondary',
          'bg-tertiary': color === 'tertiary',
          'bg-primary/20': color === 'primary',
        }"
    >
      <div class="w-24 flex-center flex-col text-center">
        <img class="w-20 h-20 rounded-full" :src="instructor.image" :alt="instructor.name">
        <p class="font-bold">{{ instructor.name }}</p>
      </div>

      <div class="flex-1 space-y-7">
        <h3 class="text-7xl">{{ course.title }}</h3>
        <div class="flex gap-7 items-center">
          <p class="text-2xl">{{ course.description }}</p>
          <div
              v-if="mode === 'interactive'"
              class="bg-white rounded-full px-3 py-1 text-xl relative"
          >
            <svg
                class="w-14 h-14 absolute top-1/2 left-0 transform -translate-y-1/2 text-orange-600"
                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
              <path fill="currentColor" d="M10 22v-8H7V2h10l-2 7h4l-9 13Z"/>
            </svg>
            <span class="ml-10">interactive</span>
          </div>
        </div>
      </div>

      <div class="">
        <template v-if="location !== null">
          <div class="relative">
            <img class="h-40 rounded-2xl" :src="location.image" alt="">
            <p class="absolute -bottom-4 left-1/2 transform -translate-x-1/2 px-3 py-1 bg-white rounded-full flex-center gap-2">
              <svg xmlns="http://www.w3.org/2000/svg" class="text-rose-500 w-6 h-6" viewBox="0 0 24 24">
                <path fill="currentColor"
                      d="m12 8l-1.55 3.45L7 13l3.45 1.55L12 18l1.55-3.45L17 13l-3.45-1.55L12 8ZM9 3V1h6v2H9Zm3 19q-1.85 0-3.488-.713T5.65 19.35q-1.225-1.225-1.938-2.863T3 13q0-1.85.713-3.488T5.65 6.65q1.225-1.225 2.863-1.938T12 4q1.55 0 2.975.5t2.675 1.45l1.4-1.4l1.4 1.4l-1.4 1.4Q20 8.6 20.5 10.025T21 13q0 1.85-.713 3.488T18.35 19.35q-1.225 1.225-2.863 1.938T12 22Zm0-2q2.9 0 4.95-2.05T19 13q0-2.9-2.05-4.95T12 6Q9.1 6 7.05 8.05T5 13q0 2.9 2.05 4.95T12 20Zm0-7Z"/>
              </svg>
              <span class="whitespace-nowrap">5 min to start</span>
            </p>
          </div>
        </template>
      </div>
    </div>
  </div>
</template>