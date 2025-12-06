<template>
  <div class="min-h-screen bg-gradient-to-br from-gray-50 via-white to-primary-50 dark:from-gray-900 dark:via-gray-900 dark:to-gray-800 transition-colors duration-300">
    <TheHeader />

    <div class="pt-24 pb-20 px-6">
      <div class="max-w-7xl mx-auto">
        <!-- Header -->
        <div class="mb-8 flex items-center justify-between">
          <div>
            <NuxtLink to="/dashboard" class="inline-flex items-center gap-2 text-primary-600 dark:text-primary-400 hover:text-primary-700 dark:hover:text-primary-300 mb-2">
              <Icon name="lucide:arrow-left" class="w-4 h-4" />
              Voltar ao Dashboard
            </NuxtLink>
            <h1 class="text-3xl font-black text-gray-900 dark:text-white">Meus Alunos</h1>
            <p class="text-gray-600 dark:text-gray-400 mt-1">Gerencie todos os seus alunos</p>
          </div>
          <button
            @click="showAddModal = true"
            class="px-6 py-3 bg-primary-600 hover:bg-primary-700 text-white font-semibold rounded-xl shadow-lg hover:shadow-xl transition-all duration-300 flex items-center gap-2"
          >
            <Icon name="lucide:user-plus" class="w-5 h-5" />
            Adicionar Aluno
          </button>
        </div>

        <!-- Search -->
        <div class="mb-6">
          <div class="relative">
            <Icon name="lucide:search" class="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400" />
            <input
              v-model="searchQuery"
              type="text"
              placeholder="Buscar aluno por nome ou email..."
              class="w-full pl-12 pr-4 py-3 rounded-xl border-2 border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:border-primary-500 dark:focus:border-primary-400 focus:outline-none transition-colors"
            />
          </div>
        </div>

        <!-- Loading State -->
        <div v-if="isLoading" class="flex items-center justify-center py-20">
          <Icon name="lucide:loader-2" class="w-12 h-12 text-primary-600 dark:text-primary-400 animate-spin" />
        </div>

        <!-- Empty State -->
        <div v-else-if="filteredAlunos.length === 0" class="text-center py-20">
          <div class="w-24 h-24 bg-gray-100 dark:bg-gray-800 rounded-full flex items-center justify-center mx-auto mb-4">
            <Icon name="lucide:users" class="w-12 h-12 text-gray-400" />
          </div>
          <h3 class="text-xl font-bold text-gray-900 dark:text-white mb-2">Nenhum aluno encontrado</h3>
          <p class="text-gray-600 dark:text-gray-400 mb-6">Comece adicionando seu primeiro aluno</p>
          <button
            @click="showAddModal = true"
            class="inline-flex items-center gap-2 px-6 py-3 bg-primary-600 hover:bg-primary-700 text-white font-semibold rounded-xl transition-all duration-300"
          >
            <Icon name="lucide:user-plus" class="w-5 h-5" />
            Adicionar Primeiro Aluno
          </button>
        </div>

        <!-- Alunos List -->
        <div v-else class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          <div
            v-for="aluno in filteredAlunos"
            :key="aluno.id"
            class="bg-white dark:bg-gray-800 rounded-2xl shadow-lg border border-gray-100 dark:border-gray-700 p-6 hover:shadow-xl transition-all duration-300"
          >
            <!-- Avatar e Nome -->
            <div class="flex items-center gap-4 mb-4">
              <div class="w-16 h-16 bg-gradient-to-br from-primary-500 to-primary-600 rounded-full flex items-center justify-center text-white font-bold text-xl">
                {{ getInitials(aluno.nome) }}
              </div>
              <div class="flex-1">
                <h3 class="text-lg font-bold text-gray-900 dark:text-white">{{ aluno.nome }}</h3>
                <p class="text-sm text-gray-600 dark:text-gray-400">{{ aluno.email }}</p>
              </div>
            </div>

            <!-- Info -->
            <div class="space-y-2 mb-4">
              <div v-if="aluno.telefone" class="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
                <Icon name="lucide:phone" class="w-4 h-4" />
                {{ aluno.telefone }}
              </div>
              <div v-if="aluno.objetivo" class="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
                <Icon name="lucide:target" class="w-4 h-4" />
                {{ aluno.objetivo }}
              </div>
              <div v-if="aluno.nivelExperiencia" class="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
                <Icon name="lucide:trending-up" class="w-4 h-4" />
                {{ aluno.nivelExperiencia }}
              </div>
            </div>

            <!-- Actions -->
            <div class="flex gap-2">
              <button
                @click="viewAluno(aluno)"
                class="flex-1 px-4 py-2 bg-primary-100 dark:bg-primary-900/30 text-primary-700 dark:text-primary-300 rounded-lg hover:bg-primary-200 dark:hover:bg-primary-900/50 transition-colors font-medium text-sm"
              >
                Ver Perfil
              </button>
              <button
                @click="removeAluno(aluno)"
                class="px-4 py-2 bg-red-100 dark:bg-red-900/30 text-red-700 dark:text-red-300 rounded-lg hover:bg-red-200 dark:hover:bg-red-900/50 transition-colors font-medium text-sm"
              >
                <Icon name="lucide:trash-2" class="w-4 h-4" />
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <TheFooter />

    <!-- Add Modal (placeholder) -->
    <div v-if="showAddModal" class="fixed inset-0 bg-black/50 backdrop-blur-sm z-50 flex items-center justify-center p-6" @click="showAddModal = false">
      <div class="bg-white dark:bg-gray-800 rounded-2xl shadow-2xl max-w-md w-full p-8" @click.stop>
        <h2 class="text-2xl font-bold text-gray-900 dark:text-white mb-4">Adicionar Aluno</h2>
        <p class="text-gray-600 dark:text-gray-400 mb-6">Funcionalidade em desenvolvimento...</p>
        <button
          @click="showAddModal = false"
          class="w-full px-6 py-3 bg-primary-600 hover:bg-primary-700 text-white font-semibold rounded-xl transition-all duration-300"
        >
          Fechar
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
definePageMeta({
  middleware: 'auth'
})

const searchQuery = ref('')
const isLoading = ref(true)
const alunos = ref([])
const showAddModal = ref(false)

const filteredAlunos = computed(() => {
  if (!searchQuery.value) return alunos.value
  
  const query = searchQuery.value.toLowerCase()
  return alunos.value.filter(aluno => 
    aluno.nome.toLowerCase().includes(query) ||
    aluno.email.toLowerCase().includes(query)
  )
})

onMounted(async () => {
  await loadAlunos()
})

const loadAlunos = async () => {
  try {
    isLoading.value = true
    const accessToken = localStorage.getItem('accessToken')
    
    if (!accessToken) {
      navigateTo('/login')
      return
    }

    const response = await $fetch('http://localhost:3001/api/personal/alunos', {
      headers: {
        'Authorization': `Bearer ${accessToken}`
      }
    })
    
    alunos.value = response || []
  } catch (error) {
    console.error('Erro ao carregar alunos:', error)
  } finally {
    isLoading.value = false
  }
}

const getInitials = (nome) => {
  if (!nome) return '?'
  const parts = nome.split(' ')
  if (parts.length === 1) return parts[0].charAt(0).toUpperCase()
  return (parts[0].charAt(0) + parts[parts.length - 1].charAt(0)).toUpperCase()
}

const viewAluno = (aluno) => {
  // TODO: Implementar visualização detalhada
  alert(`Ver perfil de ${aluno.nome}`)
}

const removeAluno = (aluno) => {
  if (confirm(`Deseja realmente remover o vínculo com ${aluno.nome}?`)) {
    // TODO: Implementar remoção
    alert('Funcionalidade em desenvolvimento')
  }
}

useHead({
  title: 'Meus Alunos - Academia na Mão',
  meta: [
    { name: 'description', content: 'Gerencie todos os seus alunos' }
  ]
})
</script>
