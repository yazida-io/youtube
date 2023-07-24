<script setup>
import SideBar from "./components/SideBar.vue";
import DashboardHeader from "./components/DashboardHeader.vue";
import CalendarEvents from "./components/CalendarEvents.vue";
</script>

<template>
  <main class="grid grid-cols-12 h-screen overflow-hidden">
    <!-- SIDE BAR -->
    <side-bar class="col-span-2" />

    <!-- MAIN SECTION -->
    <section class="col-span-10 px-10 flex flex-col gap-4 overflow-y-auto">
      <dashboard-header />
      <hr />
      <calendar-events class="flex-1" />
    </section>
  </main>
</template>
