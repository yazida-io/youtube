<script setup lang="ts">

</script>

<template>
    <div>
        <div class="bg-pink-950 p-4 text-white">
            <h1>Users</h1>
            <p>this is the users page</p>
            <router-link :to="{ name: 'users' }">List</router-link>
        </div>

        <router-view/>
    </div>
</template>

<style scoped>

</style>