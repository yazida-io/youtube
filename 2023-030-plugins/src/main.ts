import { createApp } from "vue";
import App from "./App.vue";

import "./assets/main.css";
import translation from "@/plugins/translation";
import translations from "@/translations";

const app = createApp(App);

app.use(translation, {language: "fr", translations})

app.mount("#app");
