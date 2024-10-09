<script setup>
import { RouterView } from 'vue-router'
import { onMounted } from 'vue';

// Dark mode (DarkReader)
onMounted(async () => {
  if (typeof window === 'undefined') return;
  const { auto } = await import('darkreader');
  auto({
    brightness: 100,
    contrast: 90,
    sepia: 10,
  });
});
</script>

<template>
    <RouterView />
</template>

