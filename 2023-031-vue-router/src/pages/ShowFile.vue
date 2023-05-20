<template>
    <h1>Here is the file</h1>
</template>
<script lang="ts" setup>
import {useRoute} from "vue-router";

const route = useRoute()

console.log(route.params.file)
</script>