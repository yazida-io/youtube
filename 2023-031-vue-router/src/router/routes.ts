import Home from "@/pages/Home.vue";
import About from "@/pages/About.vue";
import type {RouteRecordRaw} from "vue-router";
import User from "@/pages/User.vue";
// @ts-ignore
import Users from "@/pages/Users.vue";
import ShowFile from "@/pages/ShowFile.vue";
import UsersLayout from "@/components/UsersLayout.vue";

const routes: RouteRecordRaw[] = [
    {name: 'home', path: "/", alias: '/home', component: Home},
    {name: 'about', path: "/about", component: About},
    {
        path: "/users",
        component: UsersLayout,
        meta: { layout: 'simple-layout' },
        children: [
            {name: "users", path: "", component: Users,},
            {name: "users.show", path: ":user(\\d+)", component: User, props: true},
        ]
    },
    {name: 'file', path: "/files/:file+", component: ShowFile},
    {path: "/:pathMatch(.*)*", redirect: {name: "home"}}
]

export default routes