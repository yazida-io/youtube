<template>
  <main>
    <div class="wrapper">
      <button @click="toggle">toggle</button>
      <transition name="slide">
        <div v-if="showBox" class="box"></div>
      </transition>
    </div>
  </main>
</template>
<script setup>
import { ref } from "vue";

const showBox = ref(false);
const toggle = () => {
  showBox.value = !showBox.value;
};
</script>

<style scoped>
.slide-enter-active {
  transition: all .5s;
  background-color: orangered;
}

.slide-enter-from {
  opacity: 0;
  transform: translateX(100px);
}
.slide-enter-to {
  opacity: 1;
  transform: translateX(0);
}

.slide-leave-active {
  transition: all .5s;
  background-color: indigo;
}

.slide-leave-from {
  opacity: 1;
  transform: translateX(0);
}

.slide-leave-to {
  opacity: 1;
  transform: translateX(-100px);
}

.wrapper {
  width: 700px;
  height: 700px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  gap: 10px;
}

.box {
  width: 500px;
  height: 300px;
  background-color: white;
}

main {
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
}

h1 {
  text-align: center;
  line-height: normal;
  text-transform: uppercase;
}
</style>
