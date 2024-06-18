<script setup>
import { onMounted } from 'vue'
defineProps(['source'])
onMounted(() => {
    setTimeout(() => {
        const links = document.querySelectorAll('.links-in-new-tab a')
        links.forEach(link => {
            link.setAttribute('target', '_blank')
            link.setAttribute('rel', 'noopener noreferrer')
        })
    }, 2000)
})
</script>
<template>
  <div class="links-in-new-tab">
    <slot/>
  </div>
</template>