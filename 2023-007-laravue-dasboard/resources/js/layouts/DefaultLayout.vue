<template>
    <v-app id="inspire">
        <v-navigation-drawer
            model-value
            class="pt-4"
            color="grey-lighten-3"
        >
            <v-avatar class="d-block text-center mx-auto mb-9"></v-avatar>
            <v-list>
                <v-list-item
                    v-for="({ text, route, icon}, index) in links"
                    :key="index"
                    :to="{ name: route}"
                    :prepend-icon="icon"
                >
                    {{ text }}
                </v-list-item>
            </v-list>
        </v-navigation-drawer>

        <v-main>
            <v-container fluid>
            <slot/>
            </v-container>
        </v-main>
    </v-app>
</template>
<script setup>
import {ref} from "vue";

const links = ref([
    {text: "Home", route: "home", icon: "mdi-home"},
    {text: "About", route: "about", icon: "mdi-help-circle"},
    {text: "Posts", route: "posts", icon: "mdi-file-document"},
]);

</script>
