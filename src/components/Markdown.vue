<script setup>
import { ref } from 'vue'
import markdownit from 'markdown-it'
const md = markdownit({
  html: true,
  linkify: true,
  typographer: true
})

const props = defineProps(['source'])
const contenido = ref(md.render(props.source))
</script>

<template>
  <div v-html="contenido"></div>
</template>

