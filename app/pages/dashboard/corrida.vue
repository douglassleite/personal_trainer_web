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
          <h1 class="text-3xl font-black text-gray-900 dark:text-white">Minha Corrida</h1>
          <p class="text-gray-600 dark:text-gray-400 mt-1">Registre suas atividades físicas pessoais</p>
        </div>

        <!-- Em Desenvolvimento -->
        <div class="bg-gradient-to-br from-teal-500 to-cyan-600 rounded-2xl shadow-lg p-12 text-center">
          <div class="w-24 h-24 bg-white/20 backdrop-blur rounded-full flex items-center justify-center mx-auto mb-6">
            <Icon name="lucide:activity" class="w-12 h-12 text-white" />
          </div>
          <h2 class="text-2xl font-bold text-white mb-3">Em Desenvolvimento</h2>
          <p class="text-teal-50 max-w-md mx-auto">
            Esta funcionalidade está sendo desenvolvida. Em breve você poderá registrar suas corridas, treinos pessoais e acompanhar sua própria evolução.
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
  title: 'Minha Corrida - Academia na Mão',
  meta: [
    { name: 'description', content: 'Registre suas atividades físicas' }
  ]
})
</script>
