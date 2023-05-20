import {createApp} from "vue";
import App from "./App.vue";
import Thumbnail from "@/components/Thumbnail.vue";

import "@/assets/base.css";

import router from "@/router";

const app = createApp(App);

app.component("thumbnail", Thumbnail);

app.use(router);

app.mount("#app");
