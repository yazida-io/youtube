<template>
  <header>
    <nav>
      <a @click.prevent="$emit('update', {link})" href="#" v-for="(link, index) in links" :key="index">
        {{ link }}
      </a>
    </nav>
  </header>

  <main>
    <slot />
  </main>

  <footer>
    <slot name="footer">
      <p>Footer initial</p>
    </slot>
  </footer>
</template>

<script setup>
const links = ["Home", "Services", "Blog", "Contact"];
defineEmits(["update"]);
</script>

<style scoped>
main {
  min-height: 900px;
  text-align: center;
  font-size: 2rem;
}

header {
  background-color: antiquewhite;
  display: flex;
  justify-content: center;
  align-items: center;
}
header nav {
  margin: 0 auto;
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 7px;
  padding: 7px;
}
nav a {
  text-decoration: none;
  border: 2px solid rgba(157, 175, 193, 0.341);
  padding: 3px 20px;
  border-radius: 20px;
}
nav a:hover {
  border: 2px solid rgba(209, 107, 24, 0.611);
  /* text-decoration: underline; */
}

footer {
  min-height: 200px;
  background-color: cadetblue;
}
</style>
