<script setup lang="ts">
import {defineProps} from 'vue'
import {Product} from '@/types'

defineProps({
    product: {
        type: Object as () => Product,
        required: true
    }
})
</script>

<template>
    <div class="border p-7 hover:bg-indigo-50/20 cursor-pointer hover:shadow-xl transition-all duration-300 ease-in-out">
        <img
            :src="product.image"
            :alt="product.title"
            class="w-full h-32 object-contain"
        />
        <h2 class="text-xl font-bold">{{ product.title }}</h2>
        <p class="text-sm">{{ product.price }}</p>
    </div>
</template>
