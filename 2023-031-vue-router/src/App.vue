<template>
    <thumbnail v-if="false"/>
    <template v-else class="bg-white h-screen">
        <component :is="layout" :links="links" />
    </template>
</template>
<script lang="ts" setup>
import {useRoute} from "vue-router";
import {ref, watch} from "vue";

const links = [
    {text: 'Home', name: 'home'},
    {text: 'About', name: 'about'},
    {text: 'Users', name: 'users'},
]

const route = useRoute()

const layout = ref('default-layout')

watch(() => route.meta?.layout, (value) => {
    layout.value = value as string || 'default-layout'
}, {immediate: true})
</script>