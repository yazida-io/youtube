<template>
    <h1>Users</h1>
    <p>this is the users page</p>

    <ul class="border">
        <li
                class="border-2"
                v-for="({ name, code: user }) in users" :key="user">
            <router-link
                    :to="{ name: 'users.show', params: { user } }"
            >
                {{ name }}
            </router-link>
        </li>
    </ul>
</template>
<script lang="ts" setup>
const users = [
    {code: 7567651, name: 'John'},
    {code: 2876876, name: 'Jane'},
    {code: 9809809, name: 'Jack'},
]
</script>