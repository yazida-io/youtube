<template>
  <div>
    <div>
      <input type="number" placeholder="type..."
        v-model.number="input"
      />
    </div>
    <div>
      <label v-for="({ value, label }, index) in radios" :key="index">
        <input type="radio" :value="value" v-model="radio" />
        <span>{{ label }}</span>
      </label>
    </div>
    <div>
      <label>
        <input type="checkbox" value="checkbox-one" v-model="checkbox" />
        <span>checkbox One</span>
      </label>
      <label>
        <input type="checkbox" value="checkbox-two" v-model="checkbox" />
        <span>checkbox Two</span>
      </label>
    </div>
    <div>
      <select v-model="select">
        <option disabled selected :value="null">
            Select an option
        </option>
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
  <div>
    <p>Input: {{ input }}</p>
    <p>Radio: {{ radio }}</p>
    <p>Checkbox: {{ checkbox }}</p>
    <p>Select: {{ select }}</p>
  </div>
</template>
<script setup lang="ts">
import { ref } from "vue";

const input = ref<string>();
const radio = ref<any>();
const checkbox = ref<any>([]);

const radios = [
  { value: "one", label: "Radio One" },
  { value: "two", label: "Radio Two" },
];

const select = ref<any>(null);
const options = [
  { value: "one", label: "Option One" },
  { value: "two", label: "Option Two" },
];
</script>
