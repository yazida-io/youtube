import {defineStore} from "pinia";
import {computed, ref} from "vue";

interface CounterState {
    count: number
}

export default defineStore('counter', () => {
    const count = ref<number>(1)
    const doubleCount = computed(() => count.value * 2)

    const $reset = () => {
        count.value = 1
    }

    return {
        count,
        doubleCount,
        $reset
    }
})