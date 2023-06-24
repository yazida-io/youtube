<script setup lang="ts">

const pricing: {
  name: string
  description: string
  price: number
  featured?: boolean
  features: string[]
}[] = [
  {
    name: "Basic",
    description: "Best for small business owners, startups who needes landing page for their business.",
    price: 99,
    features: [
      "160+ UI Blocks",
      "Best for Developers, Freelancers",
      "Made with Figma",
    ],
  },
  {
    name: "Premium",
    description: "Best for medium business owners, startups who needes landing page for their business.",
    price: 199,
    featured: true,
    features: [
      "160+ UI Blocks",
      "Best for Developers, Freelancers",
      "Made with Figma",
      "Premium Support",
      "Future Updates",
    ],
  },
  {
    name: "Enterprise",
    price: 399,
    description: "Best for large companies, business owners who needes landing page for their business.",
    features: [
      "160+ UI Blocks",
      "Best for Developers, Freelancers",
      "Made with Figma",
      "Premium Support",
      "Future Updates",
    ],
  },
]

</script>
<template>
  <section class="bg-white">
    <div class="container p-20 space-y-7">
      <div class="text-center max-w-xl mx-auto space-y-2">
        <h2 class="text-5xl">Make the wise decision for your business</h2>
        <p>Choose from our affordable 3 packages</p>
      </div>
      <div class="grid grid-cols-3 gap-10">
        <div
            v-for="({ name, price, description, features, featured}, index) in pricing"
            :key="index"
            class="border-2 p-7 rounded-xl space-y-10"
        >
          <h4 class="font-[400] text-xl">{{ name }}</h4>
          <p class="text-5xl">${{ price }}</p>
          <p class="text-gray-400 text-xl">{{ description }}</p>

          <button class="py-4 px-28 rounded-xl border-2" :class="featured ? 'bg-black text-white' : ''">
            Get Started
          </button>

          <div class="space-y-4">
            <p>What's included:</p>
            <ul>
              <li class="text-gray-400" v-for="(feature, index) in features" :key="index">
                {{ feature }}
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
