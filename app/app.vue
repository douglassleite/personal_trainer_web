<template>
  <div class="min-h-screen bg-white dark:bg-gray-900 transition-colors duration-300">
    <NuxtLayout>
      <NuxtPage />
    </NuxtLayout>
  </div>
</template>

<script setup lang="ts">
// Initialize theme on app load
const { isDark } = useTheme()
</script>
