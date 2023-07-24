<template>
  <main>
    <div v-focus v-custom.uppercase="value">div</div>
  </main>
</template>
<script>
export default {
  data() {
    return {
      value: "hello",
    };
  },
  directives: {
    custom: (element, bindings) => {
      console.log(bindings, element);
    },
  },
};
</script>

<style scoped>
div {
  height: 300px;
  width: 300px;
  background-color: bisque;
  color: black;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: 2rem;
}
main {
  overflow-y: scroll;
}
</style>
