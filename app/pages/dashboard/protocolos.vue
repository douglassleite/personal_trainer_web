<template>
  <div class="min-h-screen bg-gradient-to-br from-gray-50 via-white to-primary-50 dark:from-gray-900 dark:via-gray-900 dark:to-gray-800 transition-colors duration-300">
    <TheHeader />

    <div class="pt-24 pb-20 px-6">
      <div class="max-w-7xl mx-auto">
        <!-- Header -->
        <div class="mb-8">
          <NuxtLink to="/dashboard" class="inline-flex items-center gap-2 text-primary-600 dark:text-primary-400 hover:text-primary-700 dark:hover:text-primary-300 mb-2">
            <Icon name="lucide:arrow-left" class="w-4 h-4" />
            Voltar ao Dashboard
          </NuxtLink>
          <h1 class="text-3xl font-black text-gray-900 dark:text-white">Protocolos de Treino</h1>
          <p class="text-gray-600 dark:text-gray-400 mt-1">Crie e gerencie seus protocolos de exercícios</p>
        </div>

        <!-- Em Desenvolvimento -->
        <div class="bg-white dark:bg-gray-800 rounded-2xl shadow-lg border border-gray-100 dark:border-gray-700 p-12 text-center">
          <div class="w-24 h-24 bg-purple-100 dark:bg-purple-900/30 rounded-full flex items-center justify-center mx-auto mb-6">
            <Icon name="lucide:calendar-range" class="w-12 h-12 text-purple-600 dark:text-purple-400" />
          </div>
          <h2 class="text-2xl font-bold text-gray-900 dark:text-white mb-3">Em Desenvolvimento</h2>
          <p class="text-gray-600 dark:text-gray-400 max-w-md mx-auto">
            Esta funcionalidade está sendo desenvolvida. Em breve você poderá criar, editar e gerenciar protocolos de treino completos para seus alunos.
          </p>
        </div>
      </div>
    </div>

    <TheFooter />
  </div>
</template>

<script setup>
definePageMeta({
  middleware: 'auth'
})

useHead({
  title: 'Protocolos - Academia na Mão',
  meta: [
    { name: 'description', content: 'Gerencie seus protocolos de treino' }
  ]
})
</script>
