<template>
  <main>
    <div class="wrapper">
      <div>
        <button @click="addElement">add</button>
      </div>

      <transition-group name="slide" tag="ul">
        <li v-for="item in items" :key="item" class="box">
          <p>{{ item }}</p>
          <button @click="removeElement(item)">X</button>
        </li>
      </transition-group>
    </div>
  </main>
</template>
<script setup>
import { ref } from "vue";

const initialItems = () => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

const items = ref(initialItems());

const addElement = () => {
  items.value.push(Math.max(...items.value) + 1);
};
const removeElement = (item) => {
  const i = items.value.indexOf(item);
  if (i > -1) {
    items.value.splice(i, 1);
  }
};
</script>

<style scoped>
main {
  overflow-y: scroll;
}
.slide-enter-active {
  transition: all 0.5s;
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
  text-transform: uppercase;
}
</style>
