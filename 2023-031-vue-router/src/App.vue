<template>
    <header>
        <nav>
            <router-link
                    v-for="({text, name}, index) in links"
                    :key="index"
                    :to="{ name }"
                    active-class="active"
            >
                {{ text }}
            </router-link>
        </nav>
    </header>
    <main>
        <router-view></router-view>
    </main>
</template>
<script lang="ts" setup>
const links = [
    {text: 'Home', name: 'home'},
    {text: 'About', name: 'about'},
]
</script>

<style scoped>
header {
    color: white;
    padding: 10px;
}

nav {
    display: flex;
    justify-content: space-around;
}

nav a {
    color: white;
    text-decoration: none;
    padding: 15px;
}

nav a:hover {
    text-decoration: underline;
}

nav a.active {
    font-weight: bold;
    background-color: #303f9f;
}

main {
    padding: 10px;
}
</style>