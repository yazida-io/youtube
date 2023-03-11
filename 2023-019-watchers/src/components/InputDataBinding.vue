<template>
  <div>
    <!-- input -->
    <!-- <div class="input" v-show="false">
      <input type="string" placeholder="type something..." v-model="input" />
    </div> -->
    <div class="textarea" v-if="true">
      <textarea placeholder="type something..." v-model="input"></textarea>
    </div>

    <!-- radio -->
    <div class="radios">
      <label v-for="({ value, label }, index) in radios" :key="index">
        <input type="radio" :value="value" v-model="radio" />
        <span>{{ label }}</span>
      </label>
    </div>

    <!-- checkbox -->
    <div class="checkboxes">
      <label>
        <input type="checkbox" value="checkbox-one" v-model="checkbox" />
        <span>checkbox One</span>
      </label>
      <label>
        <input type="checkbox" value="checkbox-two" v-model="checkbox" />
        <span>checkbox Two</span>
      </label>
    </div>

    <!-- select -->
    <div class="selects">
      <select v-model="select">
        <option disabled selected :value="null">Select an option</option>
        <option
          v-for="({ value, label }, index) in options"
          :key="index"
          :value="value"
        >
          {{ label }}
        </option>
      </select>
    </div>
  </div>

  <div class="results">
    <table>
      <tr>
        <th>Input</th>
        <td>{{ input }}</td>
      </tr>
      <tr>
        <th>Radio</th>
        <td>{{ radio }}</td>
      </tr>
      <tr>
        <th>Checkbox</th>
        <td>{{ checkbox }}</td>
      </tr>
      <tr>
        <th>Select</th>
        <td>{{ select }}</td>
      </tr>
    </table>
  </div>
</template>
<script setup lang="ts">
import { ref } from "vue";

const input = ref<string>("hello world");
const radio = ref<string>("one");
const checkbox = ref<string[] | null>(["checkbox-one"]);
const select = ref<null | string>("one");

const radios = [
  { value: "one", label: "Radio One" },
  { value: "two", label: "Radio Two" },
];

const options = [
  { value: "one", label: "Option One" },
  { value: "two", label: "Option Two" },
];
</script>
<style scoped>
div {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}
div > div {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  margin: 1rem;
}
.results {
  margin-top: 2rem;
  background-color: #674d4d32;
  padding: 1rem;
  justify-items: start;
  align-items: start;
  width: 450px;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th,
td {
  text-align: left;
  padding: 8px;
  border: 2px solid #ddd;
}
</style>
