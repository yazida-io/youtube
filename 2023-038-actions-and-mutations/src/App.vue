<script setup lang="ts">
import ProductCard from "@/components/ProductCard.vue";
import productStore from "@/stores/productStore";
import CountComponent from "@/components/CountComponent.vue";
import PrintComponent from "@/components/PrintComponent.vue";

const store = productStore();
</script>

<template>
    <div class="py-10 flex flex-col justify-center items-center border-2">
        <count-component />
        <print-component />
    </div>
    <main class="text-center flex flex-col justify-center items-center min-h-screen w-screen">
        <button
                @click="store.fetchProducts"
                class="border-2 bg-indigo-950 text-white px-3 py-2">
            Fetch Products
        </button>
        <div class="grid grid-cols-4 container py-7">
            <product-card
                    v-for="product in store.products"
                    :key="product.id"
                    :product="product"
            />
        </div>
    </main>
</template>