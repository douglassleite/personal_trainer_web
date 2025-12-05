<template>
  <section id="como-funciona" class="relative py-32 bg-gradient-to-br from-gray-50 via-white to-purple-50 overflow-hidden">
    <!-- Background -->
    <div class="absolute inset-0 -z-10">
      <div class="absolute top-40 left-20 w-[400px] h-[400px] bg-purple-400/10 rounded-full blur-3xl" />
      <div class="absolute bottom-20 right-20 w-[500px] h-[500px] bg-primary-400/10 rounded-full blur-3xl" />
    </div>

    <div class="max-w-7xl mx-auto px-6 sm:px-8">
      <!-- Header -->
      <div class="text-center mb-20 animate-fade-in">
        <div class="inline-flex items-center gap-2 px-5 py-2.5 rounded-full bg-gradient-to-r from-accent-50 to-green-50 border border-accent-200/50 mb-6">
          <Icon name="lucide:zap" class="w-4 h-4 text-accent-600" />
          <span class="text-sm font-bold text-accent-700">Rápido & Fácil</span>
        </div>
        <h2 class="text-4xl md:text-5xl lg:text-6xl font-black text-gray-900 mb-6 leading-tight">
          Como funciona?
          <br />
          <span class="text-transparent bg-clip-text bg-gradient-to-r from-primary-600 via-purple-600 to-accent-600">
            É simples assim
          </span>
        </h2>
        <p class="text-xl text-gray-600 max-w-3xl mx-auto leading-relaxed">
          Em poucos passos, <strong class="text-primary-600">personals</strong> criam treinos incríveis e 
          <strong class="text-accent-600">alunos</strong> começam a evoluir
        </p>
      </div>

      <!-- Steps -->
      <div class="grid md:grid-cols-3 gap-10 mb-24">
        <div 
          v-for="(step, index) in steps" 
          :key="step.title"
          class="relative group animate-fade-in"
          :style="{ animationDelay: `${index * 0.15}s` }"
        >
          <!-- Connector Line -->
          <div 
            v-if="index < steps.length - 1"
            class="hidden md:block absolute top-14 left-[60%] w-[80%] h-1 bg-gradient-to-r from-primary-300 via-purple-300 to-accent-300 rounded-full"
          >
            <div class="absolute right-0 top-1/2 -translate-y-1/2 w-3 h-3 bg-accent-400 rounded-full animate-pulse" />
          </div>

          <!-- Step Number Badge -->
          <div class="relative z-10 w-20 h-20 rounded-3xl bg-gradient-to-br mx-auto mb-6 shadow-2xl group-hover:scale-110 transition-transform duration-500"
            :class="step.gradientBg">
            <div class="absolute inset-0 rounded-3xl bg-white/20 backdrop-blur-sm" />
            <div class="relative w-full h-full flex items-center justify-center">
              <span class="text-3xl font-black text-white">{{ index + 1 }}</span>
            </div>
          </div>

          <!-- Content Card -->
          <div class="bg-white rounded-3xl p-8 shadow-xl border border-gray-100 hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-500 text-center">
            <div class="w-16 h-16 rounded-2xl mx-auto mb-5 flex items-center justify-center shadow-lg group-hover:rotate-6 transition-transform duration-500"
              :class="step.bgColor">
              <Icon :name="step.icon" class="w-8 h-8" :class="step.iconColor" />
            </div>
            <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-primary-600 transition-colors">{{ step.title }}</h3>
            <p class="text-gray-600 leading-relaxed">{{ step.description }}</p>
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

                      <!-- Screen 3: Detalhes do Exercício -->
                      <div v-else-if="currentScreen === 2" class="p-4">
                        <div class="flex items-center gap-2 mb-4">
                          <Icon name="lucide:arrow-left" class="w-5 h-5 text-gray-400" />
                          <h4 class="font-semibold text-gray-900 text-sm">Supino Reto</h4>
                        </div>
                        <div class="bg-gray-100 rounded-xl h-32 flex items-center justify-center mb-3">
                          <Icon name="lucide:play-circle" class="w-12 h-12 text-primary-500" />
                        </div>
                        <div class="grid grid-cols-3 gap-2 mb-3">
                          <div class="bg-primary-50 rounded-lg p-2 text-center">
                            <p class="text-lg font-bold text-primary-600">4</p>
                            <p class="text-xs text-gray-500">Séries</p>
                          </div>
                          <div class="bg-accent-50 rounded-lg p-2 text-center">
                            <p class="text-lg font-bold text-accent-600">12</p>
                            <p class="text-xs text-gray-500">Reps</p>
                          </div>
                          <div class="bg-purple-50 rounded-lg p-2 text-center">
                            <p class="text-lg font-bold text-purple-600">60s</p>
                            <p class="text-xs text-gray-500">Descanso</p>
                          </div>
                        </div>
                        <div class="bg-yellow-50 rounded-lg p-3 border border-yellow-100">
                          <p class="text-xs font-medium text-yellow-800 flex items-center gap-1">
                            <Icon name="lucide:lightbulb" class="w-3 h-3" />
                            Dica do Personal
                          </p>
                          <p class="text-xs text-yellow-700 mt-1">Mantenha as escápulas retraídas durante todo o movimento.</p>
                        </div>
                      </div>

                      <!-- Screen 4: Modo Corrida -->
                      <div v-else-if="currentScreen === 3" class="p-4">
                        <div class="text-center mb-3">
                          <p class="text-xs text-gray-500">Corrida em andamento</p>
                          <p class="text-4xl font-bold text-gray-900 mt-1">23:45</p>
                        </div>
                        <div class="bg-gradient-to-br from-accent-500 to-green-500 rounded-xl p-4 text-white mb-3">
                          <div class="flex justify-between items-center mb-3">
                            <div class="text-center">
                              <p class="text-2xl font-bold">4.2</p>
                              <p class="text-xs text-white/80">km</p>
                            </div>
                            <div class="w-px h-10 bg-white/30"></div>
                            <div class="text-center">
                              <p class="text-2xl font-bold">5'38"</p>
                              <p class="text-xs text-white/80">pace/km</p>
                            </div>
                            <div class="w-px h-10 bg-white/30"></div>
                            <div class="text-center">
                              <p class="text-2xl font-bold">312</p>
                              <p class="text-xs text-white/80">kcal</p>
                            </div>
                          </div>
                          <div class="h-1 bg-white/20 rounded-full">
                            <div class="h-full w-3/4 bg-white rounded-full"></div>
                          </div>
                          <p class="text-xs text-white/80 mt-1 text-right">Meta: 5km</p>
                        </div>
                        <div class="flex justify-center gap-4">
                          <button class="w-14 h-14 rounded-full bg-gray-100 flex items-center justify-center">
                            <Icon name="lucide:pause" class="w-6 h-6 text-gray-600" />
                          </button>
                          <button class="w-14 h-14 rounded-full bg-red-500 flex items-center justify-center">
                            <Icon name="lucide:square" class="w-6 h-6 text-white" />
                          </button>
                        </div>
                      </div>

                      <!-- Screen 5: Histórico de Corridas -->
                      <div v-else-if="currentScreen === 4" class="p-4">
                        <h4 class="font-semibold text-gray-900 text-sm mb-3">Minhas Corridas</h4>
                        <div class="space-y-2">
                          <div v-for="(corrida, i) in corridas" :key="i" class="bg-gray-50 rounded-lg p-3">
                            <div class="flex justify-between items-center">
                              <div>
                                <p class="font-medium text-sm text-gray-900">{{ corrida.data }}</p>
                                <p class="text-xs text-gray-500">{{ corrida.dist }} • {{ corrida.tempo }}</p>
                              </div>
                              <div class="text-right">
                                <p class="text-sm font-bold text-accent-600">{{ corrida.pace }}</p>
                                <p class="text-xs text-gray-500">/km</p>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="mt-3 bg-accent-50 rounded-lg p-3 text-center">
                          <p class="text-xs text-gray-600">Total do mês</p>
                          <p class="text-xl font-bold text-accent-600">42.5 km</p>
                        </div>
                      </div>

                      <!-- Screen 6: Ranking -->
                      <div v-else-if="currentScreen === 5" class="p-4">
                        <h4 class="font-semibold text-gray-900 text-sm mb-3">🏆 Ranking Semanal</h4>
                        <div class="space-y-2">
                          <div v-for="(user, i) in rankingUsers" :key="i" 
                            class="flex items-center gap-3 p-2 rounded-lg"
                            :class="user.isMe ? 'bg-primary-100 border border-primary-200' : 'bg-gray-50'"
                          >
                            <div class="w-8 h-8 rounded-full flex items-center justify-center text-lg" :class="user.pos <= 3 ? '' : 'bg-gray-200 text-sm font-bold text-gray-600'">
                              {{ user.avatar }}
                            </div>
                            <div class="flex-1">
                              <p class="font-medium text-sm" :class="user.isMe ? 'text-primary-700' : 'text-gray-900'">{{ user.nome }}</p>
                              <p class="text-xs text-gray-500">{{ user.xp }} XP</p>
                            </div>
                            <Icon v-if="user.isMe" name="lucide:star" class="w-4 h-4 text-yellow-500" />
                          </div>
                        </div>
                        <button class="w-full mt-3 bg-primary-500 text-white font-semibold py-2 rounded-lg text-sm">
                          Ver Ranking Completo
                        </button>
                      </div>

                      <!-- Screen 7: Progresso -->
                      <div v-else-if="currentScreen === 6" class="p-4">
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

                      <!-- Screen 8: Painel do Personal -->
                      <div v-else class="p-4">
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
                          <div v-for="(aluno, i) in [{name: 'João Silva', status: 'Treinou hoje'}, {name: 'Maria Santos', status: 'Ontem'}]" :key="i" class="flex items-center gap-2 p-2 bg-gray-50 rounded-lg">
                            <div class="w-8 h-8 rounded-full bg-gray-200 flex items-center justify-center text-xs font-bold text-gray-600">
                              {{ aluno.name.charAt(0) }}
                            </div>
                            <div class="flex-1">
                              <p class="font-medium text-xs text-gray-900">{{ aluno.name }}</p>
                              <p class="text-xs text-gray-500">{{ aluno.status }}</p>
                            </div>
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
    title: 'Modo Corrida',
    description: 'Acompanhe suas corridas em tempo real com GPS, pace, distância e calorias queimadas.'
  },
  {
    title: 'Histórico de Corridas',
    description: 'Veja todas as suas corridas, rotas percorridas e evolução do seu desempenho ao longo do tempo.'
  },
  {
    title: 'Ranking de Alunos',
    description: 'Compare seu desempenho com outros alunos. Suba no ranking e conquiste medalhas!'
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

const corridas = [
  { data: 'Hoje', dist: '5.2km', tempo: '28:15', pace: "5'25\"" },
  { data: 'Ontem', dist: '3.8km', tempo: '21:40', pace: "5'42\"" },
  { data: '03/12', dist: '6.1km', tempo: '34:50', pace: "5'42\"" }
]

const rankingUsers = [
  { pos: 1, nome: 'Ana Costa', xp: 2850, avatar: '🥇', isMe: false },
  { pos: 2, nome: 'João Silva', xp: 2720, avatar: '🥈', isMe: false },
  { pos: 3, nome: 'Você', xp: 2450, avatar: '🥉', isMe: true },
  { pos: 4, nome: 'Pedro Lima', xp: 2380, avatar: '4', isMe: false }
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
