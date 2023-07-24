<template>
  <main>
    <composable />
  </main>
</template>
<script>
import Composable from "./components/Composable.vue";

export default {
  components: {
    Composable,
  },
  created() {
  },
  methods: {},
};
</script>

<style scoped>
main {
  overflow-y: scroll;
}
</style>
