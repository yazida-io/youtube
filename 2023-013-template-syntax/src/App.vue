<template>
  <input v-bind="inputAttributes" />

  <a :href="link"> Link to google </a>

  <ul>
    <template v-for="({ name, price, actif }, index) in fruits" :key="index">
      <li v-if="actif">{{ name }}: {{ price }}</li>
    </template>
  </ul>
</template>
<script>
export default {
  data() {
    return {
      fruits: [
        { name: "Banana", price: 20, actif: true },
        { name: "Banana", price: 20, actif: true },
        { name: "Apple", price: 30, actif: false },
        { name: "Orange", price: 40, actif: false },
      ],
      message: "Hello world!",
      name: "<strong>Mouctar</strong>",
      link: "https://www.google.com",
      inputAttributes: {
        type: "text",
        disabled: false,
        placeholder: "Enter your name",
        style: {
          color: "red",
          padding: "10px",
        },
      },
    };
  },
  methods: {},
  computed: {
    fullname() {
      return "Mouctar DIALLO";
    },
  },
};
</script>

<style scoped>
h1 {
  text-align: center;
}
</style>
