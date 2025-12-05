<template>
  <section id="como-funciona" class="py-24 bg-white overflow-hidden">
    <div class="max-w-6xl mx-auto px-6 sm:px-8">
      <!-- Header -->
      <div class="text-center mb-16">
        <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-accent-100 mb-4">
          <Icon name="lucide:rocket" class="w-4 h-4 text-accent-500" />
          <span class="text-sm font-medium text-accent-600">Simples e Rápido</span>
        </div>
        <h2 class="section-title mb-4">
          Como funciona para
          <span class="text-primary-500">Personal</span> e <span class="text-accent-500">Aluno</span>
        </h2>
        <p class="section-subtitle">
          Comece em minutos. Personal cria os treinos, aluno executa e evolui.
        </p>
      </div>

      <!-- Steps -->
      <div class="grid md:grid-cols-3 gap-8 lg:gap-12">
        <div 
          v-for="(step, index) in steps" 
          :key="step.title"
          class="relative text-center"
        >
          <!-- Connector Line -->
          <div 
            v-if="index < steps.length - 1"
            class="hidden md:block absolute top-16 left-1/2 w-full h-0.5 bg-gradient-to-r from-primary-200 to-accent-200"
          />

          <!-- Step Number -->
          <div class="relative z-10 w-16 h-16 rounded-2xl bg-gradient-to-br from-primary-500 to-accent-500 flex items-center justify-center mx-auto mb-6 shadow-lg">
            <span class="text-2xl font-bold text-white">{{ index + 1 }}</span>
          </div>

          <!-- Content -->
          <div class="card bg-gray-50 border-0">
            <div class="w-14 h-14 rounded-xl mx-auto mb-4" :class="step.bgColor">
              <div class="w-full h-full flex items-center justify-center">
                <Icon :name="step.icon" class="w-7 h-7" :class="step.iconColor" />
              </div>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">{{ step.title }}</h3>
            <p class="text-gray-600">{{ step.description }}</p>
          </div>
        </div>
      </div>

      <!-- App Demo Slideshow -->
      <div class="mt-20 relative">
        <div class="relative bg-gradient-to-r from-primary-500 to-accent-500 rounded-3xl overflow-hidden shadow-2xl p-8 md:p-12">
          
          <!-- Phone Mockup with Screens -->
          <div class="flex flex-col lg:flex-row items-center gap-8 lg:gap-12">
            
            <!-- Left: Screen Description -->
            <div class="flex-1 text-white text-center lg:text-left">
              <div class="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-white/20 text-sm mb-4">
                <span class="w-2 h-2 rounded-full bg-white animate-pulse"></span>
                Tela {{ currentScreen + 1 }} de {{ screens.length }}
              </div>
              <h3 class="text-2xl md:text-3xl font-bold mb-4">{{ screens[currentScreen].title }}</h3>
              <p class="text-white/80 text-lg mb-6">{{ screens[currentScreen].description }}</p>
              
              <!-- Navigation Dots -->
              <div class="flex gap-2 justify-center lg:justify-start">
                <button
                  v-for="(screen, index) in screens"
                  :key="index"
                  @click="currentScreen = index"
                  class="w-3 h-3 rounded-full transition-all"
                  :class="currentScreen === index ? 'bg-white w-8' : 'bg-white/40 hover:bg-white/60'"
                />
              </div>
            </div>

            <!-- Right: Phone Mockup -->
            <div class="relative">
              <!-- Phone Frame -->
              <div class="relative bg-gray-900 rounded-[2.5rem] p-2 shadow-2xl w-[280px]">
                <div class="bg-white rounded-[2rem] overflow-hidden">
                  <!-- Status Bar -->
                  <div class="bg-gray-100 px-5 py-2 flex items-center justify-between">
                    <span class="text-xs font-medium text-gray-600">9:41</span>
                    <div class="flex items-center gap-1">
                      <Icon name="lucide:signal" class="w-3 h-3 text-gray-600" />
                      <Icon name="lucide:wifi" class="w-3 h-3 text-gray-600" />
                      <Icon name="lucide:battery-full" class="w-3.5 h-3.5 text-gray-600" />
                    </div>
                  </div>
                  
                  <!-- Screen Content - Transitions -->
                  <div class="h-[420px] overflow-hidden">
                    <Transition
                      mode="out-in"
                      enter-active-class="transition-all duration-300"
                      enter-from-class="opacity-0 translate-x-4"
                      enter-to-class="opacity-100 translate-x-0"
                      leave-active-class="transition-all duration-200"
                      leave-from-class="opacity-100 translate-x-0"
                      leave-to-class="opacity-0 -translate-x-4"
                    >
                      <!-- Screen 1: Dashboard Aluno -->
                      <div v-if="currentScreen === 0" class="p-4">
                        <div class="flex items-center justify-between mb-4">
                          <div>
                            <p class="text-xs text-gray-500">Olá, João! 👋</p>
                            <p class="font-semibold text-gray-900 text-sm">Pronto para treinar?</p>
                          </div>
                          <div class="w-8 h-8 rounded-full bg-primary-100 flex items-center justify-center">
                            <Icon name="lucide:user" class="w-4 h-4 text-primary-500" />
                          </div>
                        </div>
                        <div class="bg-gradient-to-r from-primary-500 to-primary-600 rounded-xl p-3 text-white mb-3">
                          <p class="text-primary-100 text-xs">Treino de Hoje</p>
                          <p class="font-bold">Peito + Tríceps</p>
                          <div class="flex gap-3 mt-2 text-xs">
                            <span class="flex items-center gap-1"><Icon name="lucide:clock" class="w-3 h-3" />45 min</span>
                            <span class="flex items-center gap-1"><Icon name="lucide:flame" class="w-3 h-3" />8 exercícios</span>
                          </div>
                        </div>
                        <div class="grid grid-cols-3 gap-2 mb-3">
                          <div class="bg-gray-50 rounded-lg p-2 text-center">
                            <Icon name="lucide:target" class="w-4 h-4 text-accent-500 mx-auto" />
                            <p class="text-xs text-gray-500">Série</p>
                            <p class="font-bold text-sm">12 dias</p>
                          </div>
                          <div class="bg-gray-50 rounded-lg p-2 text-center">
                            <Icon name="lucide:trophy" class="w-4 h-4 text-yellow-500 mx-auto" />
                            <p class="text-xs text-gray-500">XP</p>
                            <p class="font-bold text-sm">2.450</p>
                          </div>
                          <div class="bg-gray-50 rounded-lg p-2 text-center">
                            <Icon name="lucide:activity" class="w-4 h-4 text-primary-500 mx-auto" />
                            <p class="text-xs text-gray-500">Treinos</p>
                            <p class="font-bold text-sm">47</p>
                          </div>
                        </div>
                        <button class="w-full bg-accent-500 text-white font-semibold py-2.5 rounded-lg text-sm flex items-center justify-center gap-2">
                          <Icon name="lucide:play" class="w-4 h-4" />
                          Iniciar Treino
                        </button>
                      </div>

                      <!-- Screen 2: Lista de Exercícios -->
                      <div v-else-if="currentScreen === 1" class="p-4">
                        <div class="flex items-center gap-2 mb-4">
                          <Icon name="lucide:arrow-left" class="w-5 h-5 text-gray-400" />
                          <h4 class="font-semibold text-gray-900">Peito + Tríceps</h4>
                        </div>
                        <div class="space-y-2">
                          <div v-for="(ex, i) in ['Supino Reto', 'Supino Inclinado', 'Crucifixo', 'Tríceps Corda']" :key="i" class="flex items-center gap-3 p-2 bg-gray-50 rounded-lg">
                            <div class="w-10 h-10 rounded-lg bg-primary-100 flex items-center justify-center">
                              <Icon name="lucide:dumbbell" class="w-5 h-5 text-primary-500" />
                            </div>
                            <div class="flex-1">
                              <p class="font-medium text-sm text-gray-900">{{ ex }}</p>
                              <p class="text-xs text-gray-500">4x12 • 60s descanso</p>
                            </div>
                            <Icon name="lucide:play-circle" class="w-6 h-6 text-accent-500" />
                          </div>
                        </div>
                        <div class="mt-4 p-3 bg-accent-50 rounded-lg border border-accent-100">
                          <div class="flex items-center gap-2 text-accent-600">
                            <Icon name="lucide:video" class="w-4 h-4" />
                            <span class="text-xs font-medium">Vídeos demonstrativos em cada exercício</span>
                          </div>
                        </div>
                      </div>

                      <!-- Screen 3: Dashboard Personal -->
                      <div v-else-if="currentScreen === 2" class="p-4">
                        <div class="flex items-center justify-between mb-4">
                          <div>
                            <p class="text-xs text-gray-500">Personal</p>
                            <p class="font-semibold text-gray-900 text-sm">Carlos Silva</p>
                          </div>
                          <div class="w-8 h-8 rounded-full bg-primary-500 flex items-center justify-center text-white text-xs font-bold">
                            CS
                          </div>
                        </div>
                        <div class="grid grid-cols-2 gap-2 mb-3">
                          <div class="bg-primary-50 rounded-lg p-3 text-center">
                            <p class="text-2xl font-bold text-primary-600">24</p>
                            <p class="text-xs text-gray-600">Alunos Ativos</p>
                          </div>
                          <div class="bg-accent-50 rounded-lg p-3 text-center">
                            <p class="text-2xl font-bold text-accent-600">89%</p>
                            <p class="text-xs text-gray-600">Adesão</p>
                          </div>
                        </div>
                        <p class="text-xs font-medium text-gray-700 mb-2">Alunos Recentes</p>
                        <div class="space-y-2">
                          <div v-for="(aluno, i) in [{name: 'João Silva', status: 'Treinou hoje'}, {name: 'Maria Santos', status: 'Ontem'}, {name: 'Pedro Costa', status: '2 dias'}]" :key="i" class="flex items-center gap-2 p-2 bg-gray-50 rounded-lg">
                            <div class="w-8 h-8 rounded-full bg-gray-200 flex items-center justify-center text-xs font-bold text-gray-600">
                              {{ aluno.name.charAt(0) }}
                            </div>
                            <div class="flex-1">
                              <p class="font-medium text-xs text-gray-900">{{ aluno.name }}</p>
                              <p class="text-xs text-gray-500">{{ aluno.status }}</p>
                            </div>
                            <Icon name="lucide:chevron-right" class="w-4 h-4 text-gray-400" />
                          </div>
                        </div>
                      </div>

                      <!-- Screen 4: Criar Treino -->
                      <div v-else-if="currentScreen === 3" class="p-4">
                        <div class="flex items-center gap-2 mb-4">
                          <Icon name="lucide:arrow-left" class="w-5 h-5 text-gray-400" />
                          <h4 class="font-semibold text-gray-900 text-sm">Novo Protocolo</h4>
                        </div>
                        <div class="space-y-3">
                          <div>
                            <label class="text-xs text-gray-500">Nome do Treino</label>
                            <div class="mt-1 p-2 bg-gray-50 rounded-lg text-sm text-gray-900">Hipertrofia - Iniciante</div>
                          </div>
                          <div>
                            <label class="text-xs text-gray-500">Objetivo</label>
                            <div class="mt-1 p-2 bg-gray-50 rounded-lg text-sm text-gray-900">Ganho de massa</div>
                          </div>
                          <div>
                            <label class="text-xs text-gray-500">Exercícios (8)</label>
                            <div class="mt-1 space-y-1">
                              <div class="flex items-center gap-2 p-2 bg-primary-50 rounded-lg">
                                <Icon name="lucide:grip-vertical" class="w-4 h-4 text-gray-400" />
                                <span class="text-xs text-gray-900">Supino Reto</span>
                              </div>
                              <div class="flex items-center gap-2 p-2 bg-primary-50 rounded-lg">
                                <Icon name="lucide:grip-vertical" class="w-4 h-4 text-gray-400" />
                                <span class="text-xs text-gray-900">Supino Inclinado</span>
                              </div>
                            </div>
                          </div>
                        </div>
                        <button class="w-full mt-4 bg-primary-500 text-white font-semibold py-2.5 rounded-lg text-sm">
                          Salvar Protocolo
                        </button>
                      </div>

                      <!-- Screen 5: Evolução -->
                      <div v-else class="p-4">
                        <h4 class="font-semibold text-gray-900 text-sm mb-4">Minha Evolução</h4>
                        <div class="bg-gray-50 rounded-lg p-3 mb-3">
                          <div class="flex justify-between items-end h-24">
                            <div v-for="(h, i) in [40, 55, 45, 70, 65, 80, 75]" :key="i" class="w-6 bg-gradient-to-t from-primary-500 to-primary-400 rounded-t" :style="{height: h + '%'}"></div>
                          </div>
                          <div class="flex justify-between mt-2 text-xs text-gray-500">
                            <span>Seg</span><span>Ter</span><span>Qua</span><span>Qui</span><span>Sex</span><span>Sab</span><span>Dom</span>
                          </div>
                        </div>
                        <div class="grid grid-cols-2 gap-2">
                          <div class="bg-accent-50 rounded-lg p-3">
                            <Icon name="lucide:trending-up" class="w-5 h-5 text-accent-500 mb-1" />
                            <p class="text-lg font-bold text-gray-900">+15%</p>
                            <p class="text-xs text-gray-500">Força este mês</p>
                          </div>
                          <div class="bg-primary-50 rounded-lg p-3">
                            <Icon name="lucide:flame" class="w-5 h-5 text-primary-500 mb-1" />
                            <p class="text-lg font-bold text-gray-900">12.4k</p>
                            <p class="text-xs text-gray-500">Calorias queimadas</p>
                          </div>
                        </div>
                      </div>
                    </Transition>
                  </div>
                </div>
              </div>

              <!-- Floating notification -->
              <div class="absolute -top-3 -right-3 bg-white rounded-xl shadow-lg p-2 animate-float hidden sm:block">
                <div class="flex items-center gap-2">
                  <div class="w-6 h-6 rounded-full bg-green-100 flex items-center justify-center">
                    <Icon name="lucide:check" class="w-3 h-3 text-green-500" />
                  </div>
                  <span class="text-xs font-medium text-gray-700">+50 XP</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <!-- Floating Badge -->
        <div class="absolute -bottom-6 left-1/2 -translate-x-1/2 bg-white rounded-full shadow-soft-lg px-6 py-3 flex items-center gap-3">
          <Icon name="lucide:sparkles" class="w-5 h-5 text-yellow-500" />
          <span class="font-semibold text-gray-900">Veja o sistema em ação</span>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue'

const steps = [
  {
    icon: 'lucide:user-plus',
    title: 'Cadastre-se',
    description: 'Personal ou aluno, crie sua conta em menos de 2 minutos.',
    bgColor: 'bg-primary-100',
    iconColor: 'text-primary-500',
  },
  {
    icon: 'lucide:link',
    title: 'Conecte-se',
    description: 'Personal convida alunos. Aluno vincula-se ao seu personal trainer.',
    bgColor: 'bg-purple-100',
    iconColor: 'text-purple-500',
  },
  {
    icon: 'lucide:trending-up',
    title: 'Evolua Juntos',
    description: 'Personal cria treinos, aluno executa. Ambos acompanham a evolução.',
    bgColor: 'bg-accent-100',
    iconColor: 'text-accent-500',
  },
]

// Carousel state
const currentScreen = ref(0)
const isPlaying = ref(true)
let autoPlayInterval: ReturnType<typeof setInterval> | null = null

const screens = [
  {
    title: 'Dashboard do Aluno',
    description: 'Visualize seu treino do dia, acompanhe seu progresso e veja suas conquistas em um painel intuitivo.'
  },
  {
    title: 'Lista de Treinos',
    description: 'Acesse todos os seus treinos organizados por grupo muscular. Tudo personalizado pelo seu personal.'
  },
  {
    title: 'Detalhes do Exercício',
    description: 'Vídeos demonstrativos, séries, repetições e dicas do seu personal para execução perfeita.'
  },
  {
    title: 'Acompanhe seu Progresso',
    description: 'Gráficos de evolução, histórico de treinos e estatísticas para você e seu personal acompanharem.'
  },
  {
    title: 'Painel do Personal',
    description: 'Gerencie todos os seus alunos, crie treinos personalizados e acompanhe a evolução de cada um.'
  }
]

const totalScreens = screens.length

const nextScreen = () => {
  currentScreen.value = (currentScreen.value + 1) % totalScreens
}

const prevScreen = () => {
  currentScreen.value = (currentScreen.value - 1 + totalScreens) % totalScreens
}

const goToScreen = (index: number) => {
  currentScreen.value = index
}

const toggleAutoPlay = () => {
  isPlaying.value = !isPlaying.value
  if (isPlaying.value) {
    startAutoPlay()
  } else {
    stopAutoPlay()
  }
}

const startAutoPlay = () => {
  if (autoPlayInterval) clearInterval(autoPlayInterval)
  autoPlayInterval = setInterval(() => {
    nextScreen()
  }, 3000)
}

const stopAutoPlay = () => {
  if (autoPlayInterval) {
    clearInterval(autoPlayInterval)
    autoPlayInterval = null
  }
}

onMounted(() => {
  startAutoPlay()
})

onUnmounted(() => {
  stopAutoPlay()
})
</script>
