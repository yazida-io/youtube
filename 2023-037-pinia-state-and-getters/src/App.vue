<script setup lang="ts">
import PrintComponent from "@/components/PrintComponent.vue";
import CountComponent from "@/components/CountComponent.vue";

/*
fetch('https://fakestoreapi.com/products')
    .then(async res => await res.json())
*/
</script>

<template>
    <main>
        <print-component />
        <count-component />
    </main>
</template>
<style scoped>
main {
    text-align: center;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
    width: 100vw;
}
</style>