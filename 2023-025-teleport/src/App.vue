<template>
  <main>
    <div>
      <button @click="showModal = true">Open Modal</button>
    </div>

    <teleport to="body">
      <div class="modal--outer" v-if="showModal">
        <div class="modal--inner">
          <button @click="showModal = false">x</button>
          <h2>hello world</h2>
          <p>
            Lorem ipsum dolor sit amet consectetur, adipisicing elit. Facere,
            doloremque at ad, labore cupiditate praesentium animi ipsum autem
            asperiores saepe odio similique qui iste sint possimus voluptatum
            accusantium. Ad, consequuntur.
          </p>
        </div>
      </div>
    </teleport>
  </main>
</template>
<script setup lang="ts">
import { ref } from "vue";

const showModal = ref(false);
</script>

<style scoped>
main {
  overflow-y: scroll;
}

.modal--outer {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  display: flex;
  justify-content: center;
  align-items: center;
  z-index: 100;
}

.modal--inner {
  background-color: white;
  position: relative;
  color: black;
  padding: 1rem;
  border-radius: 0.5rem;
  box-shadow: 0 0 0.5rem 0.5rem rgba(119, 109, 109, 0.226);
  max-width: 700px;
}

.modal--inner button {
  position: absolute;
  color: red;
  top: 0;
  right: 0;
  background-color: transparent;
  border: none;
  font-size: 1.5rem;
  padding: 0.5rem;
  cursor: pointer;
  padding: 0.5rem;
  background-color: brown;
}
</style>
