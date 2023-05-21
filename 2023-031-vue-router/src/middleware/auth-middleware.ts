import type {NavigationGuardNext, RouteLocationNormalized} from "vue-router";

export default function authMiddleware(to: RouteLocationNormalized, from: RouteLocationNormalized, next: NavigationGuardNext) {
    const token = localStorage.getItem('token')

    if (to.name !== 'login' && !token) {
        next({name: 'login'})
    }

    if (to.name === 'login' && token) {
        next({name: 'home'})
    }

    next()
}