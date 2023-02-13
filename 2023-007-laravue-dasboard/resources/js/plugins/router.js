import {createRouter, createWebHistory} from "vue-router";
import Home from "../pages/Home.vue";
import About from "../pages/About.vue";
import Post from "../pages/Post.vue";

const routes = [
    {
        path: '/',
        name: 'home',
        component: Home
    },
    {
        path: '/about',
        name: 'about',
        component: About
    },
    {
        path: '/posts',
        name: 'posts',
        component: Post
    }
]

const router = createRouter({
    history: createWebHistory(),
    routes,
})

export default router
