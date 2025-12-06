<template>
  <div class="min-h-screen bg-gradient-to-br from-gray-50 via-white to-primary-50 dark:from-gray-900 dark:via-gray-900 dark:to-gray-800 transition-colors duration-300">
    <TheHeader />

    <div class="pt-24 pb-20 px-6">
      <div class="max-w-7xl mx-auto">
        <!-- Header -->
        <div class="mb-8">
          <NuxtLink to="/dashboard" class="inline-flex items-center gap-2 text-primary-600 dark:text-primary-400 hover:text-primary-700 dark:hover:text-primary-300 mb-4 group">
            <Icon name="lucide:arrow-left" class="w-4 h-4 group-hover:-translate-x-1 transition-transform" />
            Voltar ao Dashboard
          </NuxtLink>
          
          <div class="flex items-center justify-between flex-wrap gap-4">
            <div>
              <h1 class="text-3xl font-black text-gray-900 dark:text-white">Gerenciar Alunos</h1>
              <p class="text-gray-600 dark:text-gray-400 mt-1">{{ alunos.length }} aluno(s) vinculado(s)</p>
            </div>
            <div class="flex items-center gap-3">
              <button
                @click="loadAlunos"
                :disabled="isLoading"
                class="px-4 py-2 bg-gray-100 dark:bg-gray-800 text-gray-700 dark:text-gray-300 font-medium rounded-xl hover:bg-gray-200 dark:hover:bg-gray-700 transition-all duration-300 flex items-center gap-2"
              >
                <Icon :name="isLoading ? 'lucide:loader-2' : 'lucide:refresh-cw'" :class="isLoading ? 'animate-spin' : ''" class="w-4 h-4" />
                Atualizar
              </button>
              <button
                @click="showVincularModal = true"
                class="px-4 py-2 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-xl shadow-lg hover:shadow-xl transition-all duration-300 flex items-center gap-2"
              >
                <Icon name="lucide:link" class="w-4 h-4" />
                Vincular Existente
              </button>
              <button
                @click="showCriarModal = true"
                class="px-6 py-2 bg-primary-600 hover:bg-primary-700 text-white font-semibold rounded-xl shadow-lg hover:shadow-xl transition-all duration-300 flex items-center gap-2"
              >
                <Icon name="lucide:user-plus" class="w-5 h-5" />
                Criar Novo Aluno
              </button>
            </div>
          </div>
        </div>

        <!-- Search -->
        <div class="mb-6">
          <div class="relative">
            <Icon name="lucide:search" class="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-gray-400" />
            <input
              v-model="searchQuery"
              type="text"
              placeholder="Buscar aluno por nome, email ou telefone..."
              class="w-full pl-12 pr-4 py-3 rounded-xl border-2 border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:border-primary-500 dark:focus:border-primary-400 focus:outline-none transition-colors"
            />
          </div>
        </div>

        <!-- Loading State -->
        <div v-if="isLoading" class="flex items-center justify-center py-20">
          <div class="text-center">
            <Icon name="lucide:loader-2" class="w-12 h-12 text-primary-600 dark:text-primary-400 animate-spin mx-auto mb-4" />
            <p class="text-gray-600 dark:text-gray-400">Carregando alunos...</p>
          </div>
        </div>

        <!-- Empty State -->
        <div v-else-if="filteredAlunos.length === 0" class="text-center py-20">
          <div class="w-24 h-24 bg-gray-100 dark:bg-gray-800 rounded-full flex items-center justify-center mx-auto mb-4">
            <Icon name="lucide:users" class="w-12 h-12 text-gray-400" />
          </div>
          <h3 class="text-xl font-bold text-gray-900 dark:text-white mb-2">
            {{ searchQuery ? 'Nenhum aluno encontrado' : 'Nenhum aluno vinculado' }}
          </h3>
          <p class="text-gray-600 dark:text-gray-400 mb-6">
            {{ searchQuery ? 'Tente buscar com outros termos' : 'Comece criando ou vinculando seu primeiro aluno' }}
          </p>
          <div v-if="!searchQuery" class="flex gap-3 justify-center">
            <button
              @click="showCriarModal = true"
              class="inline-flex items-center gap-2 px-6 py-3 bg-primary-600 hover:bg-primary-700 text-white font-semibold rounded-xl transition-all duration-300"
            >
              <Icon name="lucide:user-plus" class="w-5 h-5" />
              Criar Primeiro Aluno
            </button>
            <button
              @click="showVincularModal = true"
              class="inline-flex items-center gap-2 px-6 py-3 bg-blue-600 hover:bg-blue-700 text-white font-semibold rounded-xl transition-all duration-300"
            >
              <Icon name="lucide:link" class="w-5 h-5" />
              Vincular Aluno
            </button>
          </div>
        </div>

        <!-- Alunos Grid -->
        <div v-else class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          <div
            v-for="aluno in filteredAlunos"
            :key="aluno.id"
            class="bg-white dark:bg-gray-800 rounded-2xl shadow-lg border border-gray-100 dark:border-gray-700 p-6 hover:shadow-xl transition-all duration-300 group"
          >
            <!-- Avatar e Info -->
            <div class="flex items-start justify-between mb-4">
              <div class="flex items-center gap-4">
                <div class="w-16 h-16 bg-gradient-to-br from-primary-500 to-primary-600 rounded-full flex items-center justify-center text-white font-bold text-xl shadow-lg">
                  {{ getInitials(aluno.nome) }}
                </div>
                <div>
                  <h3 class="text-lg font-bold text-gray-900 dark:text-white group-hover:text-primary-600 dark:group-hover:text-primary-400 transition-colors">
                    {{ aluno.nome }}
                  </h3>
                  <p class="text-sm text-gray-500 dark:text-gray-400">
                    Desde {{ formatDate(aluno.createdAt) }}
                  </p>
                </div>
              </div>
            </div>

            <!-- Detalhes -->
            <div class="space-y-2 mb-4">
              <div class="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
                <Icon name="lucide:mail" class="w-4 h-4 flex-shrink-0" />
                <span class="truncate">{{ aluno.email }}</span>
              </div>
              <div v-if="aluno.telefone" class="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
                <Icon name="lucide:phone" class="w-4 h-4 flex-shrink-0" />
                {{ aluno.telefone }}
              </div>
              <div v-if="aluno.objetivo" class="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
                <Icon name="lucide:target" class="w-4 h-4 flex-shrink-0" />
                {{ aluno.objetivo }}
              </div>
              <div v-if="aluno.nivelExperiencia" class="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
                <Icon name="lucide:trending-up" class="w-4 h-4 flex-shrink-0" />
                {{ aluno.nivelExperiencia }}
              </div>
            </div>

            <!-- Actions -->
            <div class="flex gap-2 pt-4 border-t border-gray-100 dark:border-gray-700">
              <button
                @click="viewAluno(aluno)"
                class="flex-1 px-4 py-2 bg-primary-100 dark:bg-primary-900/30 text-primary-700 dark:text-primary-300 rounded-lg hover:bg-primary-200 dark:hover:bg-primary-900/50 transition-colors font-medium text-sm flex items-center justify-center gap-2"
              >
                <Icon name="lucide:eye" class="w-4 h-4" />
                Ver Detalhes
              </button>
              <button
                @click="desvincularAluno(aluno)"
                class="px-4 py-2 bg-red-100 dark:bg-red-900/30 text-red-700 dark:text-red-300 rounded-lg hover:bg-red-200 dark:hover:bg-red-900/50 transition-colors font-medium text-sm"
                title="Desvincular"
              >
                <Icon name="lucide:link-2-off" class="w-4 h-4" />
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <TheFooter />

    <!-- Modal Criar Aluno -->
    <div v-if="showCriarModal" class="fixed inset-0 bg-black/50 backdrop-blur-sm z-50 flex items-center justify-center p-6" @click="showCriarModal = false">
      <div class="bg-white dark:bg-gray-800 rounded-2xl shadow-2xl max-w-md w-full p-8 max-h-[90vh] overflow-y-auto" @click.stop>
        <div class="flex items-center justify-between mb-6">
          <h2 class="text-2xl font-bold text-gray-900 dark:text-white">Criar Novo Aluno</h2>
          <button @click="showCriarModal = false" class="text-gray-400 hover:text-gray-600 dark:hover:text-gray-300">
            <Icon name="lucide:x" class="w-6 h-6" />
          </button>
        </div>
        
        <form @submit.prevent="criarAluno" class="space-y-4">
          <div>
            <label class="block text-sm font-semibold text-gray-700 dark:text-gray-300 mb-2">
              Nome Completo *
            </label>
            <input
              v-model="novoAluno.nome"
              type="text"
              required
              placeholder="Ex: João da Silva"
              class="w-full px-4 py-3 rounded-xl border-2 border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:border-primary-500 dark:focus:border-primary-400 focus:outline-none transition-colors"
            />
          </div>

          <div>
            <label class="block text-sm font-semibold text-gray-700 dark:text-gray-300 mb-2">
              Email *
            </label>
            <input
              v-model="novoAluno.email"
              type="email"
              required
              placeholder="joao@email.com"
              class="w-full px-4 py-3 rounded-xl border-2 border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:border-primary-500 dark:focus:border-primary-400 focus:outline-none transition-colors"
            />
          </div>

          <div>
            <label class="block text-sm font-semibold text-gray-700 dark:text-gray-300 mb-2">
              Senha *
            </label>
            <div class="relative">
              <input
                v-model="novoAluno.senha"
                :type="showPasswordCriar ? 'text' : 'password'"
                required
                minlength="6"
                placeholder="Mínimo 6 caracteres"
                class="w-full px-4 py-3 pr-12 rounded-xl border-2 border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:border-primary-500 dark:focus:border-primary-400 focus:outline-none transition-colors"
              />
              <button
                type="button"
                @click="showPasswordCriar = !showPasswordCriar"
                class="absolute right-3 top-1/2 -translate-y-1/2 p-2 text-gray-500 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200"
              >
                <Icon :name="showPasswordCriar ? 'lucide:eye-off' : 'lucide:eye'" class="w-5 h-5" />
              </button>
            </div>
          </div>

          <div>
            <label class="block text-sm font-semibold text-gray-700 dark:text-gray-300 mb-2">
              Telefone
            </label>
            <input
              v-model="novoAluno.telefone"
              type="tel"
              placeholder="(11) 99999-9999"
              class="w-full px-4 py-3 rounded-xl border-2 border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-700 text-gray-900 dark:text-white focus:border-primary-500 dark:focus:border-primary-400 focus:outline-none transition-colors"
            />
          </div>

          <div v-if="errorMessage" class="p-4 bg-red-50 dark:bg-red-900/20 border border-red-200 dark:border-red-800 rounded-xl">
            <p class="text-sm text-red-600 dark:text-red-400 font-medium">{{ errorMessage }}</p>
          </div>

          <div class="flex gap-3 pt-4">
            <button
              type="button"
              @click="showCriarModal = false"
              class="flex-1 px-6 py-3 bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-300 font-semibold rounded-xl hover:bg-gray-200 dark:hover:bg-gray-600 transition-all duration-300"
            >
              Cancelar
            </button>
            <button
              type="submit"
              :disabled="isSaving"
              class="flex-1 px-6 py-3 bg-primary-600 hover:bg-primary-700 text-white font-semibold rounded-xl transition-all duration-300 disabled:opacity-50 disabled:cursor-not-allowed flex items-center justify-center gap-2"
            >
              <Icon v-if="isSaving" name="lucide:loader-2" class="w-5 h-5 animate-spin" />
              {{ isSaving ? 'Criando...' : 'Criar Aluno' }}
            </button>
          </div>
        </form>
      </div>
    </div>

    <!-- Modal Vincular Aluno -->
    <div v-if="showVincularModal" class="fixed inset-0 bg-black/50 backdrop-blur-sm z-50 flex items-center justify-center p-6" @click="showVincularModal = false">
      <div class="bg-white dark:bg-gray-800 rounded-2xl shadow-2xl max-w-md w-full p-8" @click.stop>
        <div class="flex items-center justify-between mb-6">
          <h2 class="text-2xl font-bold text-gray-900 dark:text-white">Vincular Aluno Existente</h2>
          <button @click="showVincularModal = false" class="text-gray-400 hover:text-gray-600 dark:hover:text-gray-300">
            <Icon name="lucide:x" class="w-6 h-6" />
          </button>
        </div>
        
        <div class="text-center py-12">
          <div class="w-16 h-16 bg-blue-100 dark:bg-blue-900/30 rounded-full flex items-center justify-center mx-auto mb-4">
            <Icon name="lucide:link" class="w-8 h-8 text-blue-600 dark:text-blue-400" />
          </div>
          <p class="text-gray-600 dark:text-gray-400 mb-6">
            Funcionalidade em desenvolvimento. Em breve você poderá vincular alunos existentes no sistema.
          </p>
          <button
            @click="showVincularModal = false"
            class="px-6 py-3 bg-primary-600 hover:bg-primary-700 text-white font-semibold rounded-xl transition-all duration-300"
          >
            Entendi
          </button>
        </div>
      </div>
    </div>

    <!-- Modal Detalhe do Aluno -->
    <div v-if="selectedAluno" class="fixed inset-0 bg-black/50 backdrop-blur-sm z-50 flex items-center justify-center p-6" @click="selectedAluno = null">
      <div class="bg-white dark:bg-gray-800 rounded-2xl shadow-2xl max-w-2xl w-full max-h-[90vh] overflow-y-auto" @click.stop>
        <div class="sticky top-0 bg-white dark:bg-gray-800 border-b border-gray-200 dark:border-gray-700 p-6">
          <div class="flex items-center justify-between">
            <div class="flex items-center gap-4">
              <div class="w-16 h-16 bg-gradient-to-br from-primary-500 to-primary-600 rounded-full flex items-center justify-center text-white font-bold text-2xl shadow-lg">
                {{ getInitials(selectedAluno.nome) }}
              </div>
              <div>
                <h2 class="text-2xl font-bold text-gray-900 dark:text-white">{{ selectedAluno.nome }}</h2>
                <p class="text-sm text-gray-500 dark:text-gray-400">Cliente desde {{ formatDate(selectedAluno.createdAt) }}</p>
              </div>
            </div>
            <button @click="selectedAluno = null" class="text-gray-400 hover:text-gray-600 dark:hover:text-gray-300">
              <Icon name="lucide:x" class="w-6 h-6" />
            </button>
          </div>
        </div>

        <div class="p-6 space-y-6">
          <!-- Informações de Contato -->
          <div>
            <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-4">Informações de Contato</h3>
            <div class="space-y-3">
              <div class="flex items-center gap-3 p-3 bg-gray-50 dark:bg-gray-700/50 rounded-lg">
                <Icon name="lucide:mail" class="w-5 h-5 text-primary-600 dark:text-primary-400" />
                <span class="text-gray-700 dark:text-gray-300">{{ selectedAluno.email }}</span>
              </div>
              <div v-if="selectedAluno.telefone" class="flex items-center gap-3 p-3 bg-gray-50 dark:bg-gray-700/50 rounded-lg">
                <Icon name="lucide:phone" class="w-5 h-5 text-primary-600 dark:text-primary-400" />
                <span class="text-gray-700 dark:text-gray-300">{{ selectedAluno.telefone }}</span>
              </div>
            </div>
          </div>

          <!-- Perfil do Aluno -->
          <div v-if="selectedAluno.objetivo || selectedAluno.nivelExperiencia">
            <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-4">Perfil do Aluno</h3>
            <div class="space-y-3">
              <div v-if="selectedAluno.objetivo" class="flex items-center gap-3 p-3 bg-gray-50 dark:bg-gray-700/50 rounded-lg">
                <Icon name="lucide:target" class="w-5 h-5 text-primary-600 dark:text-primary-400" />
                <div>
                  <p class="text-xs text-gray-500 dark:text-gray-400">Objetivo</p>
                  <p class="text-gray-700 dark:text-gray-300 font-medium">{{ selectedAluno.objetivo }}</p>
                </div>
              </div>
              <div v-if="selectedAluno.nivelExperiencia" class="flex items-center gap-3 p-3 bg-gray-50 dark:bg-gray-700/50 rounded-lg">
                <Icon name="lucide:trending-up" class="w-5 h-5 text-primary-600 dark:text-primary-400" />
                <div>
                  <p class="text-xs text-gray-500 dark:text-gray-400">Nível de Experiência</p>
                  <p class="text-gray-700 dark:text-gray-300 font-medium">{{ selectedAluno.nivelExperiencia }}</p>
                </div>
              </div>
            </div>
          </div>

          <!-- Ações -->
          <div class="flex gap-3 pt-4">
            <button
              @click="selectedAluno = null"
              class="flex-1 px-6 py-3 bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-300 font-semibold rounded-xl hover:bg-gray-200 dark:hover:bg-gray-600 transition-all duration-300"
            >
              Fechar
            </button>
            <button
              @click="desvincularAluno(selectedAluno); selectedAluno = null"
              class="flex-1 px-6 py-3 bg-red-600 hover:bg-red-700 text-white font-semibold rounded-xl transition-all duration-300 flex items-center justify-center gap-2"
            >
              <Icon name="lucide:link-2-off" class="w-5 h-5" />
              Desvincular
            </button>
          </div>
        </div>
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
const showCriarModal = ref(false)
const showVincularModal = ref(false)
const selectedAluno = ref(null)
const isSaving = ref(false)
const errorMessage = ref('')
const showPasswordCriar = ref(false)

const novoAluno = ref({
  nome: '',
  email: '',
  senha: '',
  telefone: ''
})

const filteredAlunos = computed(() => {
  if (!searchQuery.value) return alunos.value
  
  const query = searchQuery.value.toLowerCase()
  return alunos.value.filter(aluno => 
    aluno.nome.toLowerCase().includes(query) ||
    aluno.email.toLowerCase().includes(query) ||
    (aluno.telefone && aluno.telefone.toLowerCase().includes(query))
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
    
    if (response.data && Array.isArray(response.data)) {
      alunos.value = response.data
    } else if (Array.isArray(response)) {
      alunos.value = response
    } else {
      alunos.value = []
    }
  } catch (error) {
    console.error('Erro ao carregar alunos:', error)
  } finally {
    isLoading.value = false
  }
}

const criarAluno = async () => {
  try {
    isSaving.value = true
    errorMessage.value = ''
    
    const accessToken = localStorage.getItem('accessToken')
    
    await $fetch('http://localhost:3001/api/personal/alunos', {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${accessToken}`,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(novoAluno.value)
    })

    showCriarModal.value = false
    novoAluno.value = { nome: '', email: '', senha: '', telefone: '' }
    await loadAlunos()
    
    alert('Aluno criado e vinculado com sucesso!')
  } catch (error) {
    console.error('Erro ao criar aluno:', error)
    errorMessage.value = error.data?.error || 'Erro ao criar aluno. Tente novamente.'
  } finally {
    isSaving.value = false
  }
}

const desvincularAluno = async (aluno) => {
  const confirmacao = confirm(
    `Deseja desvincular ${aluno.nome}?\n\nOs treinos vinculados a este aluno ficarão disponíveis como treinos genéricos.\n\nDeseja também remover o histórico de treinos realizados?`
  )
  
  if (!confirmacao) return

  const removerHistorico = confirm('Remover histórico de treinos?')

  try {
    const accessToken = localStorage.getItem('accessToken')
    
    await $fetch(`http://localhost:3001/api/personal/alunos/${aluno.id}`, {
      method: 'DELETE',
      headers: {
        'Authorization': `Bearer ${accessToken}`
      },
      query: {
        removerHistorico: removerHistorico
      }
    })

    await loadAlunos()
    alert(removerHistorico 
      ? 'Aluno desvinculado e histórico removido com sucesso'
      : 'Aluno desvinculado com sucesso (histórico mantido)')
  } catch (error) {
    console.error('Erro ao desvincular aluno:', error)
    alert('Erro ao desvincular aluno. Tente novamente.')
  }
}

const viewAluno = (aluno) => {
  selectedAluno.value = aluno
}

const getInitials = (nome) => {
  if (!nome) return '?'
  const parts = nome.split(' ')
  if (parts.length === 1) return parts[0].charAt(0).toUpperCase()
  return (parts[0].charAt(0) + parts[parts.length - 1].charAt(0)).toUpperCase()
}

const formatDate = (date) => {
  if (!date) return ''
  return new Date(date).toLocaleDateString('pt-BR', {
    day: '2-digit',
    month: 'short',
    year: 'numeric'
  })
}

useHead({
  title: 'Gerenciar Alunos - Academia na Mão',
  meta: [
    { name: 'description', content: 'Gerencie todos os seus alunos' }
  ]
})
</script>
