import {defineStore} from "pinia";
import type {Product} from "@/types";

type ProductStoreState = {
    products: Product[]
}

const store=  defineStore('products', {
    state: (): ProductStoreState => ({products: []}),
    getters: {
        getProductById: (state) => (id: number) => {
            return state.products.find((product) => product.id === id)
        }
    },
    actions: {
        async fetchProducts() {
            const result = await fetch('https://fakestoreapi.com/products')
            this.products = await result.json()
        }
    }
})

export default store