import {createPinia } from 'pinia'

const pinia = createPinia()

pinia.use(({ store }) => {
    const keyOf = (id: string) => `pinia-store:${id}`

    const savedState = localStorage.getItem(keyOf(store.$id))

    store.$patch(JSON.parse(savedState || '{}'))

    store.$subscribe((mutation, state) => {
        localStorage.setItem(keyOf(mutation.storeId), JSON.stringify(state))
    })
})

export default pinia
