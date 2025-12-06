<template>
  <div class="min-h-screen bg-gradient-to-br from-gray-50 via-white to-primary-50 dark:from-gray-900 dark:via-gray-900 dark:to-gray-800 transition-colors duration-300">
    <!-- Animated Background -->
    <div class="absolute inset-0 -z-10">
      <div class="absolute top-20 right-20 w-[500px] h-[500px] bg-primary-400/10 dark:bg-primary-400/5 rounded-full blur-3xl animate-float" style="animation-duration: 8s;" />
      <div class="absolute bottom-20 left-20 w-[600px] h-[600px] bg-accent-400/10 dark:bg-accent-400/5 rounded-full blur-3xl animate-float" style="animation-duration: 10s; animation-delay: 1s;" />
    </div>

    <!-- Header -->
    <TheHeader />

    <div class="pt-24 pb-20 px-6">
      <div class="max-w-7xl mx-auto">
        <!-- Welcome Section -->
        <div class="mb-8 animate-fade-in">
          <div class="flex items-center justify-between flex-wrap gap-4">
            <div>
              <h1 class="text-3xl font-black text-gray-900 dark:text-white mb-2">
                Olá, {{ user?.nome || 'Personal' }}! 👋
              </h1>
              <p class="text-gray-600 dark:text-gray-400">Bem-vindo ao seu painel de controle</p>
            </div>
            <button
              @click="refreshData"
              :disabled="isRefreshing"
              class="px-6 py-3 bg-primary-600 hover:bg-primary-700 text-white font-semibold rounded-xl shadow-lg hover:shadow-xl transition-all duration-300 disabled:opacity-50 flex items-center gap-2"
            >
              <Icon :name="isRefreshing ? 'lucide:loader-2' : 'lucide:refresh-cw'" :class="isRefreshing ? 'animate-spin' : ''" class="w-5 h-5" />
              Atualizar
            </button>
          </div>
        </div>

        <!-- Stats Cards -->
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8 animate-fade-in" style="animation-delay: 0.1s;">
          <!-- Total Alunos -->
          <div class="bg-white dark:bg-gray-800 rounded-2xl shadow-lg border border-gray-100 dark:border-gray-700 p-6 hover:shadow-xl transition-all duration-300">
            <div class="flex items-center justify-between mb-4">
              <div class="w-14 h-14 bg-blue-100 dark:bg-blue-900/30 rounded-xl flex items-center justify-center">
                <Icon name="lucide:users" class="w-7 h-7 text-blue-600 dark:text-blue-400" />
              </div>
              <span class="text-3xl font-black text-gray-900 dark:text-white">{{ stats.totalAlunos }}</span>
            </div>
            <h3 class="text-sm font-semibold text-gray-600 dark:text-gray-400 mb-1">Total de Alunos</h3>
            <p class="text-xs text-gray-500 dark:text-gray-500">Alunos vinculados</p>
          </div>

          <!-- Leads Pendentes -->
          <div class="bg-white dark:bg-gray-800 rounded-2xl shadow-lg border border-gray-100 dark:border-gray-700 p-6 hover:shadow-xl transition-all duration-300 relative overflow-hidden">
            <div v-if="stats.leadsPendentes > 0" class="absolute top-3 right-3">
              <span class="relative flex h-3 w-3">
                <span class="animate-ping absolute inline-flex h-full w-full rounded-full bg-orange-400 opacity-75"></span>
                <span class="relative inline-flex rounded-full h-3 w-3 bg-orange-500"></span>
              </span>
            </div>
            <div class="flex items-center justify-between mb-4">
              <div class="w-14 h-14 bg-orange-100 dark:bg-orange-900/30 rounded-xl flex items-center justify-center">
                <Icon name="lucide:user-plus" class="w-7 h-7 text-orange-600 dark:text-orange-400" />
              </div>
              <span class="text-3xl font-black text-gray-900 dark:text-white">{{ stats.leadsPendentes }}</span>
            </div>
            <h3 class="text-sm font-semibold text-gray-600 dark:text-gray-400 mb-1">Leads Pendentes</h3>
            <p class="text-xs text-gray-500 dark:text-gray-500">Aguardando resposta</p>
          </div>

          <!-- Anamneses -->
          <div class="bg-white dark:bg-gray-800 rounded-2xl shadow-lg border border-gray-100 dark:border-gray-700 p-6 hover:shadow-xl transition-all duration-300 relative overflow-hidden">
            <div v-if="stats.anamnesesRespondidas > 0" class="absolute top-3 right-3">
              <span class="relative flex h-3 w-3">
                <span class="animate-ping absolute inline-flex h-full w-full rounded-full bg-green-400 opacity-75"></span>
                <span class="relative inline-flex rounded-full h-3 w-3 bg-green-500"></span>
              </span>
            </div>
            <div class="flex items-center justify-between mb-4">
              <div class="w-14 h-14 bg-green-100 dark:bg-green-900/30 rounded-xl flex items-center justify-center">
                <Icon name="lucide:file-text" class="w-7 h-7 text-green-600 dark:text-green-400" />
              </div>
              <span class="text-3xl font-black text-gray-900 dark:text-white">{{ stats.anamnesesRespondidas }}</span>
            </div>
            <h3 class="text-sm font-semibold text-gray-600 dark:text-gray-400 mb-1">Anamneses</h3>
            <p class="text-xs text-gray-500 dark:text-gray-500">Não visualizadas</p>
          </div>
        </div>

        <!-- Menu Principal -->
        <div class="mb-8 animate-fade-in" style="animation-delay: 0.2s;">
          <h2 class="text-2xl font-black text-gray-900 dark:text-white mb-6">Menu Principal</h2>
          <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            <!-- Alunos -->
            <NuxtLink
              to="/dashboard/alunos"
              class="group bg-white dark:bg-gray-800 rounded-2xl shadow-lg border border-gray-100 dark:border-gray-700 p-6 hover:shadow-xl hover:scale-105 transition-all duration-300"
            >
              <div class="flex items-center gap-4">
                <div class="w-16 h-16 bg-blue-100 dark:bg-blue-900/30 rounded-xl flex items-center justify-center group-hover:scale-110 transition-transform">
                  <Icon name="lucide:users" class="w-8 h-8 text-blue-600 dark:text-blue-400" />
                </div>
                <div class="flex-1">
                  <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-1">Alunos</h3>
                  <p class="text-sm text-gray-600 dark:text-gray-400">Gerenciar alunos</p>
                </div>
                <Icon name="lucide:chevron-right" class="w-5 h-5 text-gray-400 group-hover:text-primary-600 dark:group-hover:text-primary-400 group-hover:translate-x-1 transition-all" />
              </div>
            </NuxtLink>

            <!-- Protocolos -->
            <NuxtLink
              to="/dashboard/protocolos"
              class="group bg-white dark:bg-gray-800 rounded-2xl shadow-lg border border-gray-100 dark:border-gray-700 p-6 hover:shadow-xl hover:scale-105 transition-all duration-300"
            >
              <div class="flex items-center gap-4">
                <div class="w-16 h-16 bg-purple-100 dark:bg-purple-900/30 rounded-xl flex items-center justify-center group-hover:scale-110 transition-transform">
                  <Icon name="lucide:calendar-range" class="w-8 h-8 text-purple-600 dark:text-purple-400" />
                </div>
                <div class="flex-1">
                  <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-1">Protocolos</h3>
                  <p class="text-sm text-gray-600 dark:text-gray-400">Treinos e exercícios</p>
                </div>
                <Icon name="lucide:chevron-right" class="w-5 h-5 text-gray-400 group-hover:text-primary-600 dark:group-hover:text-primary-400 group-hover:translate-x-1 transition-all" />
              </div>
            </NuxtLink>

            <!-- Captação -->
            <NuxtLink
              to="/dashboard/captacao"
              class="group bg-white dark:bg-gray-800 rounded-2xl shadow-lg border border-gray-100 dark:border-gray-700 p-6 hover:shadow-xl hover:scale-105 transition-all duration-300 relative"
            >
              <div v-if="stats.leadsPendentes > 0" class="absolute top-4 right-4 w-7 h-7 bg-orange-500 text-white text-xs font-bold rounded-full flex items-center justify-center animate-pulse">
                {{ stats.leadsPendentes }}
              </div>
              <div class="flex items-center gap-4">
                <div class="w-16 h-16 bg-orange-100 dark:bg-orange-900/30 rounded-xl flex items-center justify-center group-hover:scale-110 transition-transform">
                  <Icon name="lucide:user-plus" class="w-8 h-8 text-orange-600 dark:text-orange-400" />
                </div>
                <div class="flex-1">
                  <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-1">Captação</h3>
                  <p class="text-sm text-gray-600 dark:text-gray-400">Leads e novos alunos</p>
                </div>
                <Icon name="lucide:chevron-right" class="w-5 h-5 text-gray-400 group-hover:text-primary-600 dark:group-hover:text-primary-400 group-hover:translate-x-1 transition-all" />
              </div>
            </NuxtLink>

            <!-- Anamnese -->
            <NuxtLink
              to="/dashboard/anamnese"
              class="group bg-white dark:bg-gray-800 rounded-2xl shadow-lg border border-gray-100 dark:border-gray-700 p-6 hover:shadow-xl hover:scale-105 transition-all duration-300 relative"
            >
              <div v-if="stats.anamnesesRespondidas > 0" class="absolute top-4 right-4 w-7 h-7 bg-green-500 text-white text-xs font-bold rounded-full flex items-center justify-center animate-pulse">
                {{ stats.anamnesesRespondidas }}
              </div>
              <div class="flex items-center gap-4">
                <div class="w-16 h-16 bg-green-100 dark:bg-green-900/30 rounded-xl flex items-center justify-center group-hover:scale-110 transition-transform">
                  <Icon name="lucide:file-text" class="w-8 h-8 text-green-600 dark:text-green-400" />
                </div>
                <div class="flex-1">
                  <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-1">Anamnese</h3>
                  <p class="text-sm text-gray-600 dark:text-gray-400">Questionários e respostas</p>
                </div>
                <Icon name="lucide:chevron-right" class="w-5 h-5 text-gray-400 group-hover:text-primary-600 dark:group-hover:text-primary-400 group-hover:translate-x-1 transition-all" />
              </div>
            </NuxtLink>

            <!-- Ranking -->
            <NuxtLink
              to="/dashboard/ranking"
              class="group bg-white dark:bg-gray-800 rounded-2xl shadow-lg border border-gray-100 dark:border-gray-700 p-6 hover:shadow-xl hover:scale-105 transition-all duration-300"
            >
              <div class="flex items-center gap-4">
                <div class="w-16 h-16 bg-amber-100 dark:bg-amber-900/30 rounded-xl flex items-center justify-center group-hover:scale-110 transition-transform">
                  <Icon name="lucide:trophy" class="w-8 h-8 text-amber-600 dark:text-amber-400" />
                </div>
                <div class="flex-1">
                  <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-1">Ranking</h3>
                  <p class="text-sm text-gray-600 dark:text-gray-400">Classificação dos alunos</p>
                </div>
                <Icon name="lucide:chevron-right" class="w-5 h-5 text-gray-400 group-hover:text-primary-600 dark:group-hover:text-primary-400 group-hover:translate-x-1 transition-all" />
              </div>
            </NuxtLink>

            <!-- Notificações -->
            <NuxtLink
              to="/dashboard/notificacoes"
              class="group bg-white dark:bg-gray-800 rounded-2xl shadow-lg border border-gray-100 dark:border-gray-700 p-6 hover:shadow-xl hover:scale-105 transition-all duration-300"
            >
              <div class="flex items-center gap-4">
                <div class="w-16 h-16 bg-red-100 dark:bg-red-900/30 rounded-xl flex items-center justify-center group-hover:scale-110 transition-transform">
                  <Icon name="lucide:bell" class="w-8 h-8 text-red-600 dark:text-red-400" />
                </div>
                <div class="flex-1">
                  <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-1">Notificações</h3>
                  <p class="text-sm text-gray-600 dark:text-gray-400">Enviar mensagens</p>
                </div>
                <Icon name="lucide:chevron-right" class="w-5 h-5 text-gray-400 group-hover:text-primary-600 dark:group-hover:text-primary-400 group-hover:translate-x-1 transition-all" />
              </div>
            </NuxtLink>
          </div>
        </div>

        <!-- Para Você -->
        <div class="animate-fade-in" style="animation-delay: 0.3s;">
          <h2 class="text-2xl font-black text-gray-900 dark:text-white mb-6">Para Você</h2>
          <NuxtLink
            to="/dashboard/corrida"
            class="group bg-gradient-to-br from-teal-500 to-cyan-600 rounded-2xl shadow-lg p-8 hover:shadow-2xl hover:scale-105 transition-all duration-300 block"
          >
            <div class="flex items-center gap-6">
              <div class="w-20 h-20 bg-white/20 backdrop-blur rounded-xl flex items-center justify-center group-hover:scale-110 transition-transform">
                <Icon name="lucide:activity" class="w-10 h-10 text-white" />
              </div>
              <div class="flex-1">
                <h3 class="text-2xl font-black text-white mb-2">Minha Corrida</h3>
                <p class="text-teal-50">Registre sua atividade física pessoal</p>
              </div>
              <Icon name="lucide:arrow-right" class="w-8 h-8 text-white group-hover:translate-x-2 transition-transform" />
            </div>
          </NuxtLink>
        </div>
      </div>
    </div>

    <!-- Footer -->
    <TheFooter />
  </div>
</template>

<script setup>
definePageMeta({
  middleware: 'auth'
})

const user = ref(null)
const isRefreshing = ref(false)
const stats = ref({
  totalAlunos: 0,
  leadsPendentes: 0,
  anamnesesRespondidas: 0
})

// Carregar dados do usuário
onMounted(() => {
  if (import.meta.client) {
    const userData = localStorage.getItem('user')
    if (userData) {
      user.value = JSON.parse(userData)
      console.log('👤 Usuário carregado:', user.value)
    }
    
    // Carregar estatísticas
    loadStats()
    
    // Atualizar a cada 30 segundos
    setInterval(loadStats, 30000)
  }
})

const loadStats = async () => {
  try {
    const accessToken = localStorage.getItem('accessToken')
    if (!accessToken) return

    // Buscar total de alunos
    try {
      const alunosResponse = await $fetch('http://localhost:3001/api/personal/alunos', {
        headers: {
          'Authorization': `Bearer ${accessToken}`
        }
      })
      stats.value.totalAlunos = alunosResponse.length || 0
    } catch (e) {
      console.error('Erro ao buscar alunos:', e)
    }

    // Buscar leads pendentes
    try {
      const leadsResponse = await $fetch('http://localhost:3001/api/captacao/personal/leads?status=PENDENTE', {
        headers: {
          'Authorization': `Bearer ${accessToken}`
        }
      })
      stats.value.leadsPendentes = leadsResponse.leads?.length || 0
    } catch (e) {
      console.error('Erro ao buscar leads:', e)
    }

    // Buscar anamneses não visualizadas
    try {
      const anamnesesResponse = await $fetch('http://localhost:3001/api/anamnese/respondidas/count', {
        headers: {
          'Authorization': `Bearer ${accessToken}`
        }
      })
      stats.value.anamnesesRespondidas = anamnesesResponse.count || 0
    } catch (e) {
      console.error('Erro ao buscar anamneses:', e)
    }
  } catch (error) {
    console.error('Erro ao carregar estatísticas:', error)
  }
}

const refreshData = async () => {
  isRefreshing.value = true
  await loadStats()
  setTimeout(() => {
    isRefreshing.value = false
  }, 500)
}

// SEO
useHead({
  title: 'Dashboard - Academia na Mão',
  meta: [
    { name: 'description', content: 'Painel de controle do Personal Trainer' }
  ]
})
</script>
