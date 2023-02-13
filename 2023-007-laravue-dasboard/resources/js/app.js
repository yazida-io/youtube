import './bootstrap';
import '../css/app.css';

import { createApp } from 'vue'
import router from './plugins/router'

import App from "./App.vue";
import vuetify from "./plugins/vuetify";

const app = createApp(App)

app.use(router)
app.use(vuetify)

app.mount('#dashboard')

