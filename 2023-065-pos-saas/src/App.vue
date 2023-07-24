<script setup lang="ts">
import PosHeader from "@/components/PosHeader.vue";
import PosDataProcess from "@/components/PosDataProcess.vue";
import PosPayment from "@/components/PosPayment.vue";
import PosSystem from "@/components/PosSystem.vue";
import Testimonials from "@/components/Testimonials.vue";
import Pricing from "@/components/Pricing.vue";
import PosFooter from "@/components/PosFooter.vue";
</script>

<template>
  <pos-header/>
  <pos-data-process/>
  <pos-payment/>
  <pos-system/>
  <testimonials/>
  <pricing/>
  <pos-footer/>
</template>