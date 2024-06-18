import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import Popper from "vue3-popper";
import VueEasyLightbox from 'vue-easy-lightbox';
import Markdown from 'vue3-markdown-it';
const app = createApp(App)

app.use(router)
app.component("Popper", Popper);

app.use(VueEasyLightbox);
app.component("Markdown", Markdown);

app.mount('#app')
