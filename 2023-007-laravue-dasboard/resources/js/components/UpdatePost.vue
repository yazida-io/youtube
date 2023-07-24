<template>
    <v-dialog v-model="dialog" max-width="500">
        <template v-slot:activator="{ props }">
            <v-btn size="small" v-bind="props" color="primary" icon="mdi-pencil"/>
        </template>

        <v-card>
            <v-card-text>
                <v-form>
                    <v-text-field v-model="inputs.title" label="Title"/>
                    <v-text-field v-model="inputs.slug" label="Slug"/>
                    <v-textarea v-model="inputs.body" label="Article"/>
                    <v-btn block color="primary" @click="updatePost">Update</v-btn>
                </v-form>
            </v-card-text>
        </v-card>
    </v-dialog>
</template>

<script setup>

import {onMounted, reactive, ref, watch} from "vue";
import useApi from "../composables/useApi";

const props = defineProps({
    post: {
        type: Number,
        required: true,
    },
})

const {$get, $put} = useApi();

const emit = defineEmits(["updated"])

const dialog = ref(false);

const inputs = reactive({
    title: "",
    slug: "",
    body: "",
});

const fetchPost = () => $get(`posts/${props.post}`).then((data) => {
    inputs.title = data.title;
    inputs.slug = data.slug;
    inputs.body = data.body;
})

watch(() => dialog, (value) => {
    console.log(value)
    if (!value) return;
    fetchPost();
})

const updatePost = async () => {
    dialog.value = false;
    await $put(`posts/${props.post}`, inputs);
    emit("updated")
}

onMounted(fetchPost)

</script>
