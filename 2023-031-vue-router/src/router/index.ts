import routes from "@/router/routes";
import {createRouter, createWebHistory} from "vue-router";
import authMiddleware from "@/middleware/auth-middleware";

const router = createRouter({
    history: createWebHistory(),
    routes,
})

router.beforeEach((to, from, next) => {
    if (to.meta.middleware == 'auth') {
        authMiddleware(to, from, next)
    } else {
        next()
    }
})

export default router