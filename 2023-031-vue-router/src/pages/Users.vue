<template>
    <ul class="border w-[700px]">
        <li class="border-2" v-for="({ name, code: user }) in users" :key="user">
            <router-link :to="{ name: 'users.show', params: { user } }" class="block p-2 hover:bg-blue-400/20">
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