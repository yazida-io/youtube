<script setup lang="ts">

</script>

<template>
  <div class="flex-center flex-col gap-4">
    <!-- request to join -->
    <div class="w-full p-4 rounded-2xl bg-white space-y-2 overflow-hidden shadow-xl shadow-red/5">
      <h3 class="text-2xl text-gray">Request to Join</h3>
      <div class="flex flex-col gap-2">
        <div
            v-for="index in 3"
            :key="index"
            class="flex items-center justify-between w-full"
        >
          <div class="flex-center gap-1">
            <img
                src="https://images.unsplash.com/photo-1474176857210-7287d38d27c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&h=200&w=200&q=80"
                alt=""
                class="rounded-full w-9 h-9"
            />
            <span class="text-gray">
              <span class="font-bold">John Doe {{ index }}</span>
            </span>
          </div>

          <div class="flex-center gap-1">
            <button class="p-4 rounded-full bg-red flex-center text-white">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-3 w-3" viewBox="0 0 512 512">
                <path
                    d="M437.5 386.6L306.9 256l130.6-130.6c14.1-14.1 14.1-36.8 0-50.9-14.1-14.1-36.8-14.1-50.9 0L256 205.1 125.4 74.5c-14.1-14.1-36.8-14.1-50.9 0-14.1 14.1-14.1 36.8 0 50.9L205.1 256 74.5 386.6c-14.1 14.1-14.1 36.8 0 50.9 14.1 14.1 36.8 14.1 50.9 0L256 306.9l130.6 130.6c14.1 14.1 36.8 14.1 50.9 0 14-14.1 14-36.9 0-50.9z"
                    fill="currentColor"/>
              </svg>
            </button>
            <button class="p-4 rounded-full bg-gray flex-center text-white">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-3 w-3" viewBox="0 0 24 24">
                <path fill="currentColor" d="M9 16.17L4.83 12l-1.42 1.41L9 19L21 7l-1.41-1.41z"/>
              </svg>
            </button>
          </div>
        </div>
      </div>
    </div>

    <!-- tasks -->
    <div class="w-full p-4 rounded-2xl bg-gray space-y-2">
      <h3 class="text-2xl text-white">Meeting Task List</h3>
      <div class="flex flex-col gap-2 text-white">
        <div
            v-for="index in 7"
            :key="index"
            class="flex justify-start items-center w-full gap-2"
        >
          <button>
            <svg v-if="index%2" xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" viewBox="0 0 24 24">
              <path fill="currentColor"
                    d="m10.6 16.6l7.05-7.05l-1.4-1.4l-5.65 5.65l-2.85-2.85l-1.4 1.4l4.25 4.25ZM12 22q-2.075 0-3.9-.788t-3.175-2.137q-1.35-1.35-2.137-3.175T2 12q0-2.075.788-3.9t2.137-3.175q1.35-1.35 3.175-2.137T12 2q2.075 0 3.9.788t3.175 2.137q1.35 1.35 2.138 3.175T22 12q0 2.075-.788 3.9t-2.137 3.175q-1.35 1.35-3.175 2.138T12 22Z"/>
            </svg>
            <svg v-else xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" viewBox="0 0 24 24">
              <path fill="currentColor"
                    d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10s10-4.48 10-10S17.52 2 12 2zm0 18c-4.42 0-8-3.58-8-8s3.58-8 8-8s8 3.58 8 8s-3.58 8-8 8z"/>
            </svg>
          </button>
          <p>Lorem ipsum dolor sit amet</p>
        </div>
      </div>
    </div>


    <!-- chats -->
    <div class="flex-1 flex flex-col w-full p-4 rounded-2xl bg-white space-y-4 overflow-hidden shadow-xl shadow-red/5">
      <h3 class="text-2xl text-gray">Room Chat</h3>

      <div class="flex-1 w-full flex flex-col">

        <div class="flex-1 space-y-7">
          <div
              v-for="index in 2"
              :key="index"
              class="flex items-start w-full gap-2"
              :class="{
                'justify-start': index%2,
                'justify-end flex-row-reverse': !(index%2),
              }"
          >
            <img
                src="https://images.unsplash.com/photo-1474176857210-7287d38d27c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
                alt=""
                class="rounded-full w-9 h-9"
            />
            <div
                class="flex-1"
                :class="{
                    'text-left': index%2,
                    'text-right': !(index%2),
                  }"
            >
              <p class="text-gray">
                John Doe {{ index }}
              </p>
              <p
                  class="max-w-[90%] px-4 py-1 rounded-xl"
                  :class="{
                    'text-gray bg-gray/10 rounded-tl-none': index%2,
                    'float-right text-white bg-gray rounded-tr-none': !(index%2),
                  }"
              >
                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
              </p>
            </div>
          </div>

        </div>


        <label class="w-full rounded-full relative bg-gray/10 overflow-hidden">
          <input class="bg-transparent p-4" type="text" placeholder="type something..."/>
          <button class="absolute right-2 top-1/2 transform -translate-y-1/2 text-white bg-gray p-2 rounded-full">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6" viewBox="0 0 32 32">
              <path fill="currentColor"
                    d="M27.71 4.29a1 1 0 0 0-1.05-.23l-22 8a1 1 0 0 0 0 1.87l8.59 3.43L19.59 11L21 12.41l-6.37 6.37l3.44 8.59A1 1 0 0 0 19 28a1 1 0 0 0 .92-.66l8-22a1 1 0 0 0-.21-1.05Z"/>
            </svg>
          </button>
        </label>
      </div>
    </div>

  </div>
</template>