import Home from "@/pages/Home.vue";
import About from "@/pages/About.vue";
import type {RouteRecordRaw} from "vue-router";
import User from "@/pages/User.vue";
import Users from "@/pages/Users.vue";
import ShowFile from "@/pages/ShowFile.vue";
import UsersLayout from "@/components/UsersLayout.vue";
import Login from "@/pages/Login.vue";

const routes: RouteRecordRaw[] = [
    {name: 'login', path: "/login", component: Login, meta: {layout: 'simple-layout'}},
    {name: 'home', path: "/", alias: '/home', component: Home, meta: {middleware: 'auth'}},
    {name: 'about', path: "/about", component: About},
    {
        path: "/users",
        component: UsersLayout,
        children: [
            {name: "users", path: "", component: Users,},
            {name: "users.show", path: ":user(\\d+)", component: User, props: true},
        ]
    },
    {name: 'file', path: "/files/:file+", component: ShowFile},
    {path: "/:pathMatch(.*)*", redirect: {name: "home"}}
]

export default routes