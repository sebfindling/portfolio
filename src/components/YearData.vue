<script setup>
import { onMounted, ref } from 'vue';
import '@/assets/year-data.scss';
import MarkdownLinksInNewTab from './MarkdownLinksInNewTab.vue';

const props = defineProps(['title', 'description', 'images', 'last'])
const currentOpenImage = ref(null);
const assetLocation = (uri) => uri.replace('@', location.hostname === 'seb.cl' ? '/assets' : '/src/assets'); //fix for local development
const imageMap = props.images ? ['', ...props.images.map(image => image.src ? assetLocation('/captures/' + image.src) : image)] : []
</script>

<template>
  <li class="year-data" :class="{ last: last }">
    <h3>{{ title }}</h3>
    <p>
      <MarkdownLinksInNewTab :source="description">
        <Markdown :source="description" />
      </MarkdownLinksInNewTab>
    </p>
    <div class="images">
      <Popper
        arrow
        hover
        v-for="(image, i) in images"
        @click="currentOpenImage = i + 1"
        :interactive="false"
        openDelay="90"
      >
        <template #content>
          <img :src="assetLocation('/thumbs/' + image.src)" width="300" v-if="image.src && assetLocation" />
          <p v-if="image.alt" style="text-align: center;" v-html="image.alt === true ? 'Click to enlarge' : image.alt"></p>
        </template>
        <br><img :src="assetLocation('/thumbs/' + image.src)" height="50" class="file" v-if="image.src && assetLocation" />
      </Popper>
    </div>
  </li>
  <vue-easy-lightbox
    :imgs="imageMap"
    :index="currentOpenImage"
    :visible="currentOpenImage"
    @hide="currentOpenImage = null"
  ></vue-easy-lightbox>
</template>
