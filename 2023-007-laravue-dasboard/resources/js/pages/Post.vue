<template>
    <v-card rounded class="py-10 px-4">
        <div class="flex">
            <h1 class="flex-1">Post</h1>
            <create-post @created="fetchData"/>
        </div>
    </v-card>

    <v-table>
        <thead>
        <tr>
            <th class="text-left">SLUG</th>
            <th class="text-left">TITLE</th>
            <th class="text-left">UPDATED AT</th>
            <th class="text-right">ACTIONS</th>
        </tr>
        </thead>
        <tbody>
        <tr
            v-for="({ id, slug, title,updated_at }, index) in posts"
            :key="index"
        >
            <td>{{ slug }}</td>
            <td>{{ title }}</td>
            <td>{{ updated_at }}</td>
            <td class="flex justify-end items-center gap-2">
                <update-post :post="id" @updated="fetchData"/>
                <delete-post :post="id" @deleted="fetchData"/>
            </td>
        </tr>
        </tbody>
    </v-table>

</template>
<script setup>

import {onMounted, ref} from "vue";
import CreatePost from "../components/CreatePost.vue";
import DeletePost from "../components/DeletePost.vue";
import UpdatePost from "../components/UpdatePost.vue";
import useApi from "../composables/useApi";

const {$get} = useApi();


const posts = ref([]);

const fetchData = async () => {
    const response = await $get("posts");
    posts.value = response.data || [];
}

onMounted(fetchData)

</script>
