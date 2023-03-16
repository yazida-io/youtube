<template>
  <main>
    <!-- <h1>🫀 KeepAlive</h1> -->

    <div>
      <div>
        <button @click="activeComponent = 'component-a'">Component A</button>
        -
        <button @click="activeComponent = 'component-b'">Component B</button>
      </div>

      <div>
        <transition name="slide">
          <keep-alive>
            <component-a v-if="activeComponent === 'component-a'" />
            <component-b v-else />
          </keep-alive>
        </transition>
      </div>
    </div>
  </main>
</template>
<script setup lang="ts">
import { ref } from "vue";
import ComponentA from "./components/ComponentA.vue";
import ComponentB from "./components/ComponentB.vue";

const activeComponent = ref<"component-a" | "component-b">("component-a");
</script>

<style scoped>
main {
  overflow-y: scroll;
}
.slide-enter-active {
  transition: all 0.5s;
}

.slide-enter-from {
  opacity: 0;
  transform: translateX(100px);
}
.slide-enter-to {
  opacity: 1;
  transform: translateX(0);
}

ul {
  list-style: none;
  padding: 0;
  margin: 0;
  position: relative;
  padding: 0;
}

.slide-leave-active {
  transition: all 0.5s;
  /* position: absolute; */
}

.slide-leave-from {
  opacity: 1;
  transform: translateX(0);
}

.slide-leave-to {
  opacity: 0;
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
  padding: 20px;
  background-color: antiquewhite;
  color: black;

  display: flex;
  justify-content: space-between;
  align-items: center;
}
.box button {
  background-color: transparent;
  border: none;
  color: red;
  font-size: 20px;
  font-weight: bold;
  cursor: pointer;
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
}
</style>
