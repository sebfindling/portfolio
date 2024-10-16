import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import Popper from "vue3-popper";
import VueEasyLightbox from 'vue-easy-lightbox';
const app = createApp(App)

app.use(router)
app.component("Popper", Popper);

app.use(VueEasyLightbox);

app.mount('#app')
