<script setup lang="ts">

</script>

<template>
  <div class="flex-center flex-col w-full h-full gap-7">
    <div class="bg-white w-full rounded-2xl flex justify-between items-center p-4 shadow-xl shadow-red/5">
      <div class="flex-center gap-4">
        <button class="w-12 h-12 bg-gray/10 rounded-full flex-center text-gray">
          <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24">
            <path fill="currentColor"
                  d="m7.85 13l2.85 2.85q.3.3.288.7t-.288.7q-.3.3-.712.313t-.713-.288L4.7 12.7q-.3-.3-.3-.7t.3-.7l4.575-4.575q.3-.3.713-.287t.712.312q.275.3.288.7t-.288.7L7.85 11H19q.425 0 .713.288T20 12q0 .425-.288.713T19 13H7.85Z"/>
          </svg>
        </button>
        <div>
          <h1 class="text-xl text-gray">Partai Banteng Weekly Meeting</h1>
          <p class="text-sm text-gray/70">19 Participants</p>
        </div>
      </div>

      <button class="flex-center gap-2 rounded-full bg-rose-300/30 px-3 py-2 text-red">
        <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 20 20">
          <path fill="currentColor"
                d="M12.75 17.5a.75.75 0 0 0 0-1.5H6.5a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h6.25a.75.75 0 0 0 0-1.5H6.5A3.5 3.5 0 0 0 3 6v8a3.5 3.5 0 0 0 3.5 3.5h6.25Zm.991-11.301a.75.75 0 0 1 1.06.042l3 3.25a.75.75 0 0 1 0 1.018l-3 3.25A.75.75 0 1 1 13.7 12.74l1.838-1.991H7.75a.75.75 0 0 1 0-1.5h7.787l-1.838-1.991a.75.75 0 0 1 .042-1.06Z"/>
        </svg>
        <span>Leave Meeting</span>
      </button>
    </div>
    <div class="flex-1 bg-white w-full rounded-2xl shadow-xl shadow-red/5 flex-center flex-col p-4 gap-4">
      <div class="relative w-full flex-1 overflow-hidden">
        <img
            src="https://images.unsplash.com/photo-1623685463160-f3f501540a91?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=904&q=80"
            alt="John doe"
            class="w-full h-full object-cover object-center absolute inset-0 rounded-2xl"
        />

        <div class="absolute top-0 left-0 w-full flex justify-between items-center p-4">
          <button class="rounded-full p-1 bg-white/30 backdrop-blur-3xl flex-center gap-1 text-white pr-2 text-sm">
            <span class="w-8 h-8 block">
              <img
                  src="https://images.unsplash.com/photo-1623685462866-1f6fd75d0f25?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=746&q=80"
                  alt=""
                  class="w-full h-full object-cover object-center rounded-full"
              />
            </span>
            <span>John Doe</span>
          </button>

          <div class="flex-center gap-2">
            <button class="flex-center gap-1 rounded-full bg-white/30 backdrop-blur-3xl text-white px-2 py-1 pr-3">
              <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 72 72">
                <circle cx="36" cy="36" r="20" fill="none" stroke="#000" stroke-linejoin="round" stroke-miterlimit="10"
                        stroke-width="2"/>
                <circle cx="36" cy="36" r="7"/>
                <circle cx="36" cy="36" r="7" fill="#D22F27"/>
              </svg>
              <span>Recording</span>
            </button>

            <button class="rounded-full p-2 bg-white/30 backdrop-blur-3xl flex-center gap-1 text-white">
              <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" viewBox="0 0 256 256">
                <path fill="currentColor"
                      d="m235.33 104l-53.47 53.65c4.56 12.67 6.45 33.89-13.19 60A15.93 15.93 0 0 1 157 224h-1.13a16 16 0 0 1-11.32-4.69L96.29 171l-42.63 42.66a8 8 0 0 1-11.32-11.32L85 159.71l-48.3-48.3A16 16 0 0 1 38 87.63c25.42-20.51 49.75-16.48 60.4-13.14L152 20.7a16 16 0 0 1 22.63 0l60.69 60.68a16 16 0 0 1 .01 22.62Z"/>
              </svg>
            </button>
          </div>
        </div>

        <div class="absolute bottom-0 left-0 w-full flex-center p-4 gap-2">
          <button class="rounded-full p-4 bg-white/30 backdrop-blur-3xl flex-center gap-1 text-white">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-8 h-8" viewBox="0 0 48 48">
              <path fill="currentColor"
                    d="m31 32.768l10.866 10.866a1.25 1.25 0 0 0 1.768-1.768l-37.5-37.5a1.25 1.25 0 1 0-1.768 1.768l3.386 3.385A6.251 6.251 0 0 0 4 15.25v17.5A6.25 6.25 0 0 0 10.25 39h14.5A6.25 6.25 0 0 0 31 32.768Zm2-5.07l7.66 7.66c1.547.56 3.34-.559 3.34-2.36V15.003c0-2.083-2.397-3.252-4.039-1.97L33 18.468v9.228ZM14.303 9L31 25.697V15.25A6.25 6.25 0 0 0 24.75 9H14.303Z"/>
            </svg>
          </button>


          <button class="rounded-full p-4 bg-white/30 backdrop-blur-3xl flex-center gap-1 text-white">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-8 h-8" viewBox="0 0 24 24">
              <g fill="none">
                <path
                    d="M24 0v24H0V0h24ZM12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035c-.01-.004-.019-.001-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.017-.018Zm.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022Zm-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01l-.184-.092Z"/>
                <path fill="currentColor"
                      d="M4.93 12.01a1 1 0 0 1 1.13.848a6.001 6.001 0 0 0 7.832 4.838l.293-.107l1.509 1.509a7.94 7.94 0 0 1-2.336.787l-.358.053V21a1 1 0 0 1-1.993.117L11 21v-1.062a8.005 8.005 0 0 1-6.919-6.796a1 1 0 0 1 .848-1.132ZM12 2a5 5 0 0 1 4.995 4.783L17 7v5a4.98 4.98 0 0 1-.691 2.538l-.137.22l.719.719c.542-.76.91-1.652 1.048-2.619a1 1 0 0 1 1.98.284a7.96 7.96 0 0 1-1.412 3.513l-.187.25l2.165 2.166a1 1 0 0 1-1.32 1.497l-.094-.083L3.515 4.93a1 1 0 0 1 1.32-1.497l.094.083l2.23 2.23A5.002 5.002 0 0 1 12 2Zm-5 8.404l6.398 6.398A5 5 0 0 1 7 12v-1.596Z"/>
              </g>
            </svg>
          </button>

          <button class="rounded-full p-2 bg-rose-500 flex-center gap-1 text-white px-10">
            <svg xmlns="http://www.w3.org/2000/svg" class="w-10 h-10" viewBox="0 0 256 256">
              <path fill="currentColor"
                    d="M220.78 162.13L173.56 141a12 12 0 0 0-11.38 1a3.37 3.37 0 0 0-.38.28L137 163.42a3.93 3.93 0 0 1-3.7.21c-16.24-7.84-33.05-24.52-40.89-40.57a3.9 3.9 0 0 1 .18-3.69l21.2-25.21c.1-.12.19-.25.28-.38a12 12 0 0 0 1-11.36L93.9 35.28a12 12 0 0 0-12.48-7.19A52.25 52.25 0 0 0 36 80c0 77.2 62.8 140 140 140a52.25 52.25 0 0 0 51.91-45.42a12 12 0 0 0-7.13-12.45Zm-.78 11.45A44.23 44.23 0 0 1 176 212c-72.78 0-132-59.22-132-132a44.23 44.23 0 0 1 38.42-44a3.87 3.87 0 0 1 .48 0a4 4 0 0 1 3.67 2.49l21.11 47.14a4 4 0 0 1-.23 3.6l-21.19 25.2c-.1.13-.2.25-.29.39a12 12 0 0 0-.78 11.75c8.69 17.79 26.61 35.58 44.6 44.27a12 12 0 0 0 11.79-.87l.37-.28l24.83-21.12a3.93 3.93 0 0 1 3.57-.27l47.21 21.16a4 4 0 0 1 2.44 4.12Z"/>
            </svg>
          </button>
        </div>

        <div class="absolute bottom-1/2 transform translate-y-1/2 right-0 h-full flex-col flex-center p-4 gap-2">
          <button
              v-for="(icon, index) in ['🔥', '👍', '🎉']"
              :key="index"
              class="rounded-full p-4 bg-white/30 backdrop-blur-3xl flex-center gap-1 text-white">
            <span class="w-5 h-5 block flex-center">{{ icon }}</span>
          </button>
        </div>
      </div>

      <div class="h-56 flex items-stretch justify-between w-full gap-4">
        <div
            v-for="(participant, index) in [1, 2, 3]"
            :key="index"
            class="flex-1 bg-pink-100 relative rounded-2xl overflow-hidden shadow-xl shadow-red/5"
        >
          <img
              src="https://images.unsplash.com/photo-1544717301-9cdcb1f5940f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"
              :alt="`particiaipant ${participant}`"
              class="w-full h-full object-cover object-center absolute inset-0"
          >


          <div class="absolute top-0 left-0 w-full flex justify-between items-center p-2">
            <button class="rounded-full p-1 bg-gray-500/30 backdrop-blur-3xl flex-center gap-1 text-white pr-2 text-sm">
            <span class="w-7 h-7 block">
              <img
                  src="https://images.unsplash.com/photo-1623685462866-1f6fd75d0f25?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=746&q=80"
                  alt=""
                  class="w-full h-full object-cover object-center rounded-full"
              />
            </span>
              <span>Participant {{ participant }}</span>
            </button>

            <div class="flex-center gap-2">
              <button class="rounded-full p-1 bg-gray-500/30 backdrop-blur-3xl flex-center gap-1 text-white">
                <svg v-if="index % 2" xmlns="http://www.w3.org/2000/svg" class="w-7 h-7" viewBox="0 0 24 24">
                  <g fill="none">
                    <path
                        d="M24 0v24H0V0h24ZM12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035c-.01-.004-.019-.001-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.017-.018Zm.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022Zm-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01l-.184-.092Z"/>
                    <path fill="currentColor"
                          d="M19.07 12.01a1 1 0 0 1 .85 1.132A8.004 8.004 0 0 1 13 19.938V21a1 1 0 1 1-2 0v-1.062a8.005 8.005 0 0 1-6.919-6.796a1 1 0 0 1 1.98-.284a6.001 6.001 0 0 0 11.878 0a1 1 0 0 1 1.132-.848ZM12 2a5 5 0 0 1 5 5v5a5 5 0 0 1-10 0V7a5 5 0 0 1 5-5Z"/>
                  </g>
                </svg>
                <svg v-else xmlns="http://www.w3.org/2000/svg" class="w-7 h-7" viewBox="0 0 24 24">
                  <g fill="none">
                    <path
                        d="M24 0v24H0V0h24ZM12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035c-.01-.004-.019-.001-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.017-.018Zm.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022Zm-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01l-.184-.092Z"/>
                    <path fill="currentColor"
                          d="M4.93 12.01a1 1 0 0 1 1.13.848a6.001 6.001 0 0 0 7.832 4.838l.293-.107l1.509 1.509a7.94 7.94 0 0 1-2.336.787l-.358.053V21a1 1 0 0 1-1.993.117L11 21v-1.062a8.005 8.005 0 0 1-6.919-6.796a1 1 0 0 1 .848-1.132ZM12 2a5 5 0 0 1 4.995 4.783L17 7v5a4.98 4.98 0 0 1-.691 2.538l-.137.22l.719.719c.542-.76.91-1.652 1.048-2.619a1 1 0 0 1 1.98.284a7.96 7.96 0 0 1-1.412 3.513l-.187.25l2.165 2.166a1 1 0 0 1-1.32 1.497l-.094-.083L3.515 4.93a1 1 0 0 1 1.32-1.497l.094.083l2.23 2.23A5.002 5.002 0 0 1 12 2Zm-5 8.404l6.398 6.398A5 5 0 0 1 7 12v-1.596Z"/>
                  </g>
                </svg>
              </button>
            </div>
          </div>
        </div>

        <div class="bg-gray/10 grid-cols-2 grid gap-x-4 gap-y-1 p-4 rounded-2xl overflow-hidden">
          <div
              class="col-span-1 flex-center"
              v-for="i in 3"
              :key="i"
          >
            <img
                src="https://images.unsplash.com/photo-1601233749202-95d04d5b3c00?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1138&q=80"
                alt=""
                class="rounded-full overflow-hidden w-20 h-20 object-cover object-center"
            />
          </div>
          <div class="col-span-1 flex-center">
            <p class="w-20 h-20 bg-gray rounded-full flex-center text-white text-3xl">+14</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>