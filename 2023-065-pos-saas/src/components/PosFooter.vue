<script setup lang="ts">
const sections: {
  title: string;
  links: string[];
}[] = [
  {
    title: "Company",
    links: [
      "About",
      "Features",
      "Works",
      "Career",
    ]
  },
  {
    title: "Help",
    links: [
      "Customer Support",
      "Delivery Details",
      "Terms & Conditions",
      "Privacy Policy",
    ]
  },
  {
    title: "Resources",
    links: [
      "Free eBooks",
      "Development Tutorial",
      "How to - Blog",
      "Youtube Playlist",
    ]
  },
  {
    title: "Links",
    links: [
      "Free eBooks",
      "Development Tutorial",
      "How to - Blog",
      "Youtube Playlist",
    ]
  }
]
</script>
<template>
  <footer class="bg-[#18181B] pt-24 pb-32 space-y-16">
    <div class="container p-7 bg-[#D1EDF5] rounded-xl flex justify-between items-center">
      <p class="text-3xl max-w-sm">
        Grow your business fast with Sark SaaS Landing.
      </p>
      <button class="bg-black py-4 px-7 rounded-xl text-white hover:bg-opacity-70">
        Download Now
      </button>
    </div>

    <div class="container flex justify-between items-start">
      <div
          v-for="({title, links}, index) in sections"
          :key="index"
          class="flex flex-col space-y-7 col-span-4 md:col-span-1"
      >
        <h3 class="text-white text-xl">{{ title }}</h3>
        <ul class="space-y-4">
          <li
              v-for="(link, index) in links"
              :key="index"
              class="text-white font-thin hover:text-[#D1EDF5]"
          >
            <a href="#">{{ link }}</a>
          </li>
        </ul>
      </div>
    </div>
  </footer>
</template>
