<template>
    <v-dialog v-model="dialog" max-width="500">
        <template v-slot:activator="{ props }">
            <v-btn v-bind="props" size="small" color="error" icon="mdi-delete" />
        </template>

        <v-card>
            <v-card-text>
                Are you sure you want to delete this post?
            </v-card-text>
            <v-card-actions class="justify-center">
                <v-btn variant="tonal" color="primary" @click="deletePost">Yes</v-btn>
                <v-btn color="error" variant="elevated" @click="dialog = false">No</v-btn>
            </v-card-actions>
        </v-card>
    </v-dialog>
</template>

<script setup>

import {ref} from "vue";
import useApi from "../composables/useApi";

const {$delete} = useApi();


const emit = defineEmits(["deleted"])

const props = defineProps({
    post: {
        type: Number,
        required: true,
    },
})

const dialog = ref(false);

const deletePost = async () => {
    dialog.value = false;
    await $delete(`posts/${props.post}`);
    emit("deleted")
}
</script>
