import { createApp } from "vue";
import mixins from "@/mixins/mixins";
import App from "./App.vue";

import "./assets/main.css";

const app = createApp(App);

app.mixin(mixins);

app.mount("#app");
