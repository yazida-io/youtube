import {createApp} from "vue";
import App from "./App.vue";
import Thumbnail from "@/components/Thumbnail.vue";

import "@/assets/base.css";

import router from "@/router";
import DefaultLayout from "@/layouts/DefaultLayout.vue";
import SimpleLayout from "@/layouts/SimpleLayout.vue";

const app = createApp(App);

app.component("thumbnail", Thumbnail);
app.component("default-layout", DefaultLayout);
app.component("simple-layout", SimpleLayout);

app.use(router);

app.mount("#app");
