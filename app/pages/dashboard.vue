<template>
  <div class="min-h-screen bg-gray-50 dark:bg-gray-900 transition-colors duration-300">
    <!-- Header -->
    <header class="bg-white dark:bg-gray-800 shadow-sm border-b border-gray-200 dark:border-gray-700">
      <div class="max-w-7xl mx-auto px-6 py-4">
        <div class="flex items-center justify-between">
          <div class="flex items-center gap-4">
            <div class="w-10 h-10 bg-gradient-to-br from-primary-500 to-primary-600 rounded-xl flex items-center justify-center">
              <Icon name="lucide:dumbbell" class="w-5 h-5 text-white" />
            </div>
            <div>
              <h1 class="text-2xl font-black text-gray-900 dark:text-white">Dashboard</h1>
              <p class="text-sm text-gray-600 dark:text-gray-400">Bem-vindo, {{ user?.nome || 'Personal Trainer' }}</p>
            </div>
          </div>
          <div class="flex items-center gap-4">
            <button
              @click="logout"
              class="flex items-center gap-2 px-4 py-2 text-gray-600 dark:text-gray-300 hover:text-primary-600 dark:hover:text-primary-400 transition-colors"
            >
              <Icon name="lucide:log-out" class="w-5 h-5" />
              Sair
            </button>
          </div>
        </div>
      </div>
    </header>

    <!-- Main Content -->
    <main class="max-w-7xl mx-auto px-6 py-12">
      <!-- Stats Cards -->
      <div class="grid md:grid-cols-4 gap-6 mb-12">
        <div class="bg-white dark:bg-gray-800 rounded-2xl p-6 shadow-lg border border-gray-100 dark:border-gray-700">
          <div class="flex items-center gap-4">
            <div class="w-12 h-12 bg-primary-100 dark:bg-primary-900/30 rounded-xl flex items-center justify-center">
              <Icon name="lucide:users" class="w-6 h-6 text-primary-600 dark:text-primary-400" />
            </div>
            <div>
              <p class="text-sm text-gray-600 dark:text-gray-400">Total de Alunos</p>
              <p class="text-2xl font-black text-gray-900 dark:text-white">0</p>
            </div>
          </div>
        </div>

        <div class="bg-white dark:bg-gray-800 rounded-2xl p-6 shadow-lg border border-gray-100 dark:border-gray-700">
          <div class="flex items-center gap-4">
            <div class="w-12 h-12 bg-accent-100 dark:bg-accent-900/30 rounded-xl flex items-center justify-center">
              <Icon name="lucide:clipboard-list" class="w-6 h-6 text-accent-600 dark:text-accent-400" />
            </div>
            <div>
              <p class="text-sm text-gray-600 dark:text-gray-400">Treinos Criados</p>
              <p class="text-2xl font-black text-gray-900 dark:text-white">0</p>
            </div>
          </div>
        </div>

        <div class="bg-white dark:bg-gray-800 rounded-2xl p-6 shadow-lg border border-gray-100 dark:border-gray-700">
          <div class="flex items-center gap-4">
            <div class="w-12 h-12 bg-green-100 dark:bg-green-900/30 rounded-xl flex items-center justify-center">
              <Icon name="lucide:trending-up" class="w-6 h-6 text-green-600 dark:text-green-400" />
            </div>
            <div>
              <p class="text-sm text-gray-600 dark:text-gray-400">Ativos Hoje</p>
              <p class="text-2xl font-black text-gray-900 dark:text-white">0</p>
            </div>
          </div>
        </div>

        <div class="bg-white dark:bg-gray-800 rounded-2xl p-6 shadow-lg border border-gray-100 dark:border-gray-700">
          <div class="flex items-center gap-4">
            <div class="w-12 h-12 bg-purple-100 dark:bg-purple-900/30 rounded-xl flex items-center justify-center">
              <Icon name="lucide:star" class="w-6 h-6 text-purple-600 dark:text-purple-400" />
            </div>
            <div>
              <p class="text-sm text-gray-600 dark:text-gray-400">Avaliação Média</p>
              <p class="text-2xl font-black text-gray-900 dark:text-white">5.0</p>
            </div>
          </div>
        </div>
      </div>

      <!-- Welcome Card -->
      <div class="bg-gradient-to-br from-primary-600 via-purple-600 to-primary-700 rounded-3xl p-12 text-white shadow-2xl mb-12">
        <h2 class="text-4xl font-black mb-4">🎉 Bem-vindo ao Academia na Mão!</h2>
        <p class="text-xl text-white/90 mb-8">
          Comece a gerenciar seus alunos, criar treinos personalizados e acompanhar a evolução de cada um.
        </p>
        <div class="flex gap-4">
          <button class="px-6 py-3 bg-white text-primary-600 font-bold rounded-xl hover:shadow-xl transition-all">
            Adicionar Primeiro Aluno
          </button>
          <button class="px-6 py-3 bg-white/20 backdrop-blur-sm text-white font-bold rounded-xl hover:bg-white/30 transition-all">
            Ver Tutorial
          </button>
        </div>
      </div>

      <!-- Quick Actions -->
      <div class="grid md:grid-cols-3 gap-6">
        <div class="bg-white dark:bg-gray-800 rounded-2xl p-8 shadow-lg border border-gray-100 dark:border-gray-700 hover:shadow-xl transition-all">
          <div class="w-16 h-16 bg-primary-100 dark:bg-primary-900/30 rounded-2xl flex items-center justify-center mb-6">
            <Icon name="lucide:user-plus" class="w-8 h-8 text-primary-600 dark:text-primary-400" />
          </div>
          <h3 class="text-xl font-bold text-gray-900 dark:text-white mb-2">Adicionar Aluno</h3>
          <p class="text-gray-600 dark:text-gray-400 mb-6">Cadastre novos alunos e comece a criar treinos personalizados</p>
          <button class="text-primary-600 dark:text-primary-400 font-bold hover:underline">
            Adicionar agora →
          </button>
        </div>

        <div class="bg-white dark:bg-gray-800 rounded-2xl p-8 shadow-lg border border-gray-100 dark:border-gray-700 hover:shadow-xl transition-all">
          <div class="w-16 h-16 bg-accent-100 dark:bg-accent-900/30 rounded-2xl flex items-center justify-center mb-6">
            <Icon name="lucide:clipboard-list" class="w-8 h-8 text-accent-600 dark:text-accent-400" />
          </div>
          <h3 class="text-xl font-bold text-gray-900 dark:text-white mb-2">Criar Treino</h3>
          <p class="text-gray-600 dark:text-gray-400 mb-6">Monte treinos personalizados com nossa biblioteca de exercícios</p>
          <button class="text-accent-600 dark:text-accent-400 font-bold hover:underline">
            Criar treino →
          </button>
        </div>

        <div class="bg-white dark:bg-gray-800 rounded-2xl p-8 shadow-lg border border-gray-100 dark:border-gray-700 hover:shadow-xl transition-all">
          <div class="w-16 h-16 bg-purple-100 dark:bg-purple-900/30 rounded-2xl flex items-center justify-center mb-6">
            <Icon name="lucide:share-2" class="w-8 h-8 text-purple-600 dark:text-purple-400" />
          </div>
          <h3 class="text-xl font-bold text-gray-900 dark:text-white mb-2">Link de Captação</h3>
          <p class="text-gray-600 dark:text-gray-400 mb-6">Compartilhe seu link único e receba novos alunos automaticamente</p>
          <button class="text-purple-600 dark:text-purple-400 font-bold hover:underline">
            Ver meu link →
          </button>
        </div>
      </div>
    </main>
  </div>
</template>

<script setup>
definePageMeta({
  middleware: 'auth'
})

const user = ref(null)

onMounted(() => {
  // Carregar dados do usuário do localStorage
  const userData = localStorage.getItem('user')
  if (userData) {
    user.value = JSON.parse(userData)
  }
})

const logout = () => {
  localStorage.removeItem('token')
  localStorage.removeItem('user')
  navigateTo('/login')
}

useHead({
  title: 'Dashboard - Academia na Mão',
  meta: [
    { name: 'description', content: 'Gerencie seus alunos e treinos no Academia na Mão' }
  ]
})
</script>
