<template>
  <main>
    <h1>🧶 Mixins</h1>
  </main>
</template>
<script>
export default {
  created() {
    console.log(this.greeting("Mouctar DIALLO"));
  },
  methods: {},
};
</script>

<style scoped>
main {
  overflow-y: scroll;
}
</style>
