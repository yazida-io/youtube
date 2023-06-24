<template>
  <section class="bg-[#F8FAFC]">
    <div class="container p-20 grid grid-cols-2">
      <div class="col-span-2 md:col-span-1 flex-center">
        <div class="max-w-lg space-y-10">
          <h2 class="text-5xl">
            Payment is the easiest with many options
          </h2>
          <p>
            Credit cards are easily the most secure and safe payment method to use when you shop online.
          </p>
          <ul class="space-y-2">
            <li
                v-for="(item, index) in ['Accept any method of payment', 'Apply discounts and issue refunds']"
                :key="index"
                class="flex items-center gap-4"
            >
              <svg id="icon" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
                <circle id="Ellipse_41" data-name="Ellipse 41" cx="10" cy="10" r="10" fill="#12141d"/>
                <path id="Vector" d="M10.781.062A.8.8,0,0,0,9.9.238l-5.991,6L1.393,3.712A.822.822,0,0,0,.251,4.894L3.339,7.982a.8.8,0,0,0,1.142,0L11.043,1.42a.8.8,0,0,0,0-1.182h0A.8.8,0,0,0,10.781.062Z" transform="translate(4 6)" fill="#d1edf5"/>
              </svg>
              <span>
                {{ item }}
              </span>
            </li>
          </ul>
          <a href="#" class="block hover:underline">
            Make your first sale
          </a>
        </div>
      </div>
      <div class="col-span-2 md:col-span-1">
        <img src="/images/c2-image.png" class="transform scale-125" alt=""/>
      </div>
    </div>
  </section>
</template>
<script setup lang="ts">
</script>