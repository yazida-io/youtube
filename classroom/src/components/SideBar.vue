<script setup>
import {ref} from "vue";
import NavigationLink from "./NavigationLink.vue";

const percent = ref(60);

</script>

<template>
  <aside class="bg-primary flex flex-col items-center justify-between text-white">
    <div class="flex-1 flex flex-col items-center gap-16 pt-10">
      <h1 class="text-3xl">CLASSROOM</h1>

      <div class="flex-center flex-col gap-2">
        <div class="w-32 h-32 relative">
          <div
              class="absolute rounded-full top-0 left-0 w-32 h-32 transform scale-[1.07] z-0"
              :style="{
              background: `conic-gradient(#c8e2e7 0%, #f5f554 ${percent}%, transparent ${percent}% 100%)`,
             }"
          />
          <img
              src="https://images.unsplash.com/photo-1542404172-db72383c828f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&h=200&w=200&q=80"
              alt="profile"
              class="absolute rounded-full top-0 left-0 w-32 h-32 object-cover border-4 border-gray-800"
          />
          <svg
              xmlns="http://www.w3.org/2000/svg"
              viewBox="0 0 16 16"
              class="absolute top-1 left-1 w-8 h-8 text-rose-500 transform -rotate-12"
          >
            <path fill="currentColor"
                  d="M2 0a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h2.5a1 1 0 0 1 .8.4l1.9 2.533a1 1 0 0 0 1.6 0l1.9-2.533a1 1 0 0 1 .8-.4H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2Zm6 3.993c1.664-1.711 5.825 1.283 0 5.132c-5.825-3.85-1.664-6.843 0-5.132Z"/>
          </svg>
        </div>
        <h2 class="text-xl">Sheldon Cooper</h2>
        <p class="text-lg text-gray-400">Grade 1</p>
      </div>

      <div class="flex justify-start flex-col w-full gap-4">
        <navigation-link class="" text="My Profile" href="#">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-10 h-10" viewBox="0 0 448 512">
            <path fill="currentColor"
                  d="M219.3.5c3.1-.6 6.3-.6 9.4 0l200 40C439.9 42.7 448 52.6 448 64s-8.1 21.3-19.3 23.5L352 102.9V160c0 70.7-57.3 128-128 128S96 230.7 96 160v-57.1l-48-9.6v65.1l15.7 78.4c.9 4.7-.3 9.6-3.3 13.3S52.8 256 48 256H16c-4.8 0-9.3-2.1-12.4-5.9s-4.3-8.6-3.3-13.3L16 158.4V86.6C6.5 83.3 0 74.3 0 64c0-11.4 8.1-21.3 19.3-23.5l200-40zM111.9 327.7c10.5-3.4 21.8.4 29.4 8.5l71 75.5c6.3 6.7 17 6.7 23.3 0l71-75.5c7.6-8.1 18.9-11.9 29.4-8.5c65 20.9 112 81.7 112 153.6c0 17-13.8 30.7-30.7 30.7H30.7C13.8 512 0 498.2 0 481.3c0-71.9 47-132.7 111.9-153.6z"/>
          </svg>
        </navigation-link>

        <navigation-link text="Home Tasks" href="#">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-10 h-10" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M5.655 2.227c-.433.113-.711.273-.928.485c-.305.3-.504.72-.613 1.513C4.002 5.042 4 6.124 4 7.675v8.57a4.172 4.172 0 0 1 1.299-.593a3.29 3.29 0 0 1 .356-.072V2.227ZM7.31 15.514H20V7.676c0-1.552-.002-2.634-.114-3.451c-.109-.793-.308-1.213-.613-1.513c-.306-.299-.734-.494-1.544-.6c-.834-.11-1.938-.112-3.522-.112H9.793c-1.002 0-1.812 0-2.483.029v13.485Zm.163 1.621c-1.079 0-1.456.007-1.746.083a2.464 2.464 0 0 0-1.697 1.538c.016.382.043.719.084 1.019c.109.793.308 1.213.613 1.513c.306.299.734.494 1.544.6c.834.11 1.938.112 3.522.112h4.414c1.584 0 2.688-.002 3.522-.111c.81-.107 1.238-.302 1.544-.601c.305-.3.504-.72.613-1.513c.092-.666.11-1.51.113-2.64H7.473Z"/>
          </svg>
        </navigation-link>

        <navigation-link text="Schedule" href="#">
          <svg xmlns="http://www.w3.org/2000/svg" class="w-10 h-10" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M19 4h-1V3c0-.6-.4-1-1-1s-1 .4-1 1v1H8V3c0-.6-.4-1-1-1s-1 .4-1 1v1H5C3.3 4 2 5.3 2 7v1h20V7c0-1.7-1.3-3-3-3zM2 19c0 1.7 1.3 3 3 3h14c1.7 0 3-1.3 3-3v-9H2v9zm15-7c.6 0 1 .4 1 1s-.4 1-1 1s-1-.4-1-1s.4-1 1-1zm0 4c.6 0 1 .4 1 1s-.4 1-1 1s-1-.4-1-1s.4-1 1-1zm-5-4c.6 0 1 .4 1 1s-.4 1-1 1s-1-.4-1-1s.4-1 1-1zm0 4c.6 0 1 .4 1 1s-.4 1-1 1s-1-.4-1-1s.4-1 1-1zm-5-4c.6 0 1 .4 1 1s-.4 1-1 1s-1-.4-1-1s.4-1 1-1zm0 4c.6 0 1 .4 1 1s-.4 1-1 1s-1-.4-1-1s.4-1 1-1z"/>
          </svg>
        </navigation-link>

        <navigation-link text="Chat" href="#" attention>
          <svg xmlns="http://www.w3.org/2000/svg" class="w-10 h-10" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="M12 22c5.523 0 10-4.477 10-10S17.523 2 12 2S2 6.477 2 12c0 1.6.376 3.112 1.043 4.453c.178.356.237.763.134 1.148l-.595 2.226a1.3 1.3 0 0 0 1.591 1.591l2.226-.595a1.634 1.634 0 0 1 1.149.133A9.958 9.958 0 0 0 12 22Z"/>
          </svg>
        </navigation-link>
      </div>


    </div>

    <div class="h-28 w-full relative">
      <div class="absolute bottom-7 left-7 w-full bg-primary-light h-full rounded-xl flex items-center">
        <div class="relative w-32">
          <img
              class="absolute -top-20 left-4 rounded-xl"
              src="https://placehold.co/100x100/png" alt="AE"
          />
        </div>
        <div class="flex-1">
          <p>
            If one studies too zealously, one easily
            loses his pants!
          </p>
        </div>
      </div>
    </div>
  </aside>
</template>