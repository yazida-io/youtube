<script>
import Profile from "./components/Profile.vue";

export default {
  components: {
    Profile,
  },
  data() {
    return {
      user: {
        username: "mouctar-diallo",
        firstName: "Mouctar",
        lastName: "Diallo",
        age: 25,
        location: "Paris, France",
      },
    };
  },
};
</script>

<template>
  <main>
    <profile v-bind="user" />
  </main>
</template>

<style scoped>
h1 {
  font-size: 5rem;
  color: #fff;
  text-shadow: 0 0 10px #b53a3ab0;
}
main {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background: rgb(131, 58, 180);
  background: linear-gradient(
    90deg,
    rgba(131, 58, 180, 1) 0%,
    rgba(253, 29, 29, 0.81) 70%,
    rgba(252, 176, 69, 0.81) 110%
  );
}
</style>
