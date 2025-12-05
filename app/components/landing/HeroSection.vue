<template>
  <section class="relative min-h-screen flex items-center overflow-hidden bg-gradient-to-br from-gray-50 via-white to-blue-50">
    <!-- Animated Background -->
    <div class="absolute inset-0 -z-10">
      <!-- Gradient Orbs com movimento -->
      <div class="absolute top-20 left-10 w-[500px] h-[500px] bg-gradient-to-br from-primary-400/30 to-purple-400/30 rounded-full blur-3xl animate-float" style="animation-duration: 8s;" />
      <div class="absolute bottom-20 right-10 w-[600px] h-[600px] bg-gradient-to-br from-accent-400/25 to-green-400/25 rounded-full blur-3xl animate-float" style="animation-duration: 10s; animation-delay: 1s;" />
      <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[700px] h-[700px] bg-gradient-to-br from-purple-400/15 to-pink-400/15 rounded-full blur-3xl animate-float" style="animation-duration: 12s; animation-delay: 2s;" />
      
      <!-- Grid Pattern -->
      <div class="absolute inset-0 bg-[linear-gradient(to_right,#8080800a_1px,transparent_1px),linear-gradient(to_bottom,#8080800a_1px,transparent_1px)] bg-[size:4rem_4rem] [mask-image:radial-gradient(ellipse_80%_60%_at_50%_50%,#000_60%,transparent_100%)]" />
      
      <!-- Sparkles -->
      <div class="absolute inset-0 overflow-hidden">
        <div v-for="i in 20" :key="i" 
          class="absolute w-1 h-1 bg-primary-400 rounded-full animate-sparkle"
          :style="{
            top: `${Math.random() * 100}%`,
            left: `${Math.random() * 100}%`,
            animationDelay: `${Math.random() * 5}s`,
            animationDuration: `${3 + Math.random() * 3}s`
          }"
        />
      </div>
    </div>

    <div class="max-w-7xl mx-auto px-6 sm:px-8 py-20 lg:py-32 w-full">
      <div class="grid lg:grid-cols-2 gap-16 items-center">
        <!-- Left: Content -->
        <div class="text-center lg:text-left space-y-8">
          <!-- Badge -->
          <div class="inline-flex items-center gap-2 px-5 py-2.5 rounded-full bg-gradient-to-r from-primary-50 to-purple-50 border border-primary-200/50 shadow-sm backdrop-blur-sm animate-fade-in">
            <div class="relative flex">
              <span class="animate-ping absolute inline-flex h-3 w-3 rounded-full bg-primary-400 opacity-75"></span>
              <Icon name="lucide:sparkles" class="relative w-4 h-4 text-primary-600" />
            </div>
            <span class="text-sm font-semibold text-primary-700">Plataforma Nº1 para Personal Trainers</span>
          </div>

          <!-- Title -->
          <div class="space-y-4">
            <h1 class="text-5xl md:text-6xl lg:text-7xl font-black text-gray-900 leading-[1.1] tracking-tight animate-slide-up">
              Sua academia
              <br />
              <span class="relative inline-block">
                <span class="text-transparent bg-clip-text bg-gradient-to-r from-primary-600 via-purple-600 to-accent-600 animate-gradient">
                  na palma da mão
                </span>
                <svg class="absolute -bottom-2 left-0 w-full" height="12" viewBox="0 0 300 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M2 10C50 3 100 1 150 3C200 5 250 8 298 10" stroke="url(#gradient)" stroke-width="3" stroke-linecap="round"/>
                  <defs>
                    <linearGradient id="gradient" x1="0%" y1="0%" x2="100%" y2="0%">
                      <stop offset="0%" style="stop-color:#3b82f6"/>
                      <stop offset="50%" style="stop-color:#a855f7"/>
                      <stop offset="100%" style="stop-color:#22c55e"/>
                    </linearGradient>
                  </defs>
                </svg>
              </span>
            </h1>
          </div>

          <!-- Subtitle -->
          <p class="text-xl md:text-2xl text-gray-600 leading-relaxed max-w-2xl mx-auto lg:mx-0 animate-slide-up" style="animation-delay: 0.1s">
            A plataforma que une <strong class="font-bold text-primary-600">personal trainers</strong> e 
            <strong class="font-bold text-accent-600">alunos</strong>. Crie treinos, acompanhe evolução 
            e alcance resultados <span class="relative inline-block">extraordinários
              <svg class="absolute -bottom-1 left-0 w-full" height="8" viewBox="0 0 200 8" fill="none">
                <path d="M2 6C50 3 100 2 198 6" stroke="#22c55e" stroke-width="2" stroke-linecap="round"/>
              </svg>
            </span>
          </p>

          <!-- CTA Buttons -->
          <div class="flex flex-col sm:flex-row gap-4 justify-center lg:justify-start animate-slide-up" style="animation-delay: 0.2s">
            <NuxtLink 
              to="/cadastro" 
              class="group relative inline-flex items-center justify-center gap-3 px-8 py-4 bg-gradient-to-r from-primary-600 to-primary-700 text-white rounded-2xl font-bold text-lg shadow-lg hover:shadow-2xl hover:scale-105 transition-all duration-300 overflow-hidden"
            >
              <div class="absolute inset-0 bg-gradient-to-r from-primary-700 to-primary-800 opacity-0 group-hover:opacity-100 transition-opacity" />
              <Icon name="lucide:briefcase" class="w-6 h-6 relative z-10" />
              <span class="relative z-10">Sou Personal Trainer</span>
              <Icon name="lucide:arrow-right" class="w-5 h-5 group-hover:translate-x-1 transition-transform relative z-10" />
            </NuxtLink>
            
            <NuxtLink 
              to="/cadastro/aluno" 
              class="group inline-flex items-center justify-center gap-3 px-8 py-4 bg-white border-2 border-gray-300 text-gray-700 rounded-2xl font-bold text-lg shadow-md hover:shadow-xl hover:border-accent-500 hover:text-accent-600 hover:scale-105 transition-all duration-300"
            >
              <Icon name="lucide:dumbbell" class="w-6 h-6" />
              <span>Sou Aluno</span>
              <Icon name="lucide:arrow-right" class="w-5 h-5 group-hover:translate-x-1 transition-transform" />
            </NuxtLink>
          </div>

          <!-- Trust Indicators -->
          <div class="flex items-center gap-6 justify-center lg:justify-start pt-4 animate-slide-up" style="animation-delay: 0.3s">
            <div class="flex -space-x-3">
              <div v-for="i in 4" :key="i" class="w-10 h-10 rounded-full bg-gradient-to-br from-primary-400 to-purple-400 border-2 border-white shadow-lg" />
              <div class="w-10 h-10 rounded-full bg-gradient-to-br from-accent-400 to-green-400 border-2 border-white shadow-lg flex items-center justify-center text-white text-xs font-bold">
                +5k
              </div>
            </div>
            <div class="text-left">
              <div class="flex items-center gap-1 text-yellow-500">
                <Icon v-for="i in 5" :key="i" name="lucide:star" class="w-4 h-4 fill-current" />
              </div>
              <p class="text-sm text-gray-600 font-medium">5.0 • Mais de 5.000 usuários</p>
            </div>
          </div>

          <!-- Stats -->
          <div class="grid grid-cols-3 gap-6 pt-8 animate-slide-up" style="animation-delay: 0.4s">
            <div v-for="stat in stats" :key="stat.label" class="text-center lg:text-left">
              <div class="text-4xl font-black text-transparent bg-clip-text bg-gradient-to-r from-gray-900 to-gray-700">
                {{ stat.value }}
              </div>
              <div class="text-sm text-gray-600 font-medium">{{ stat.label }}</div>
            </div>
          </div>
        </div>

        <!-- Right: Phone Mockup -->
        <div class="relative hidden lg:flex justify-center items-center animate-fade-in" style="animation-delay: 0.5s">
          <!-- Floating Elements -->
          <div class="absolute top-0 right-20 animate-float" style="animation-duration: 6s;">
            <div class="bg-white rounded-2xl shadow-2xl p-4 w-48 border border-gray-100">
              <div class="flex items-center gap-3 mb-2">
                <div class="w-10 h-10 rounded-full bg-gradient-to-br from-accent-400 to-green-500 flex items-center justify-center">
                  <Icon name="lucide:trophy" class="w-5 h-5 text-white" />
                </div>
                <div class="flex-1">
                  <p class="text-xs text-gray-500">Meta semanal</p>
                  <p class="text-sm font-bold text-gray-900">Completa!</p>
                </div>
              </div>
              <div class="flex items-center gap-2">
                <div class="flex-1 h-2 bg-gray-100 rounded-full overflow-hidden">
                  <div class="h-full w-full bg-gradient-to-r from-accent-400 to-green-500 rounded-full animate-pulse" />
                </div>
                <span class="text-xs font-bold text-accent-600">100%</span>
              </div>
            </div>
          </div>

          <div class="absolute bottom-20 left-10 animate-float" style="animation-duration: 7s; animation-delay: 1s;">
            <div class="bg-white rounded-2xl shadow-2xl p-4 w-44 border border-gray-100">
              <div class="flex items-center gap-2 mb-3">
                <Icon name="lucide:flame" class="w-5 h-5 text-orange-500" />
                <p class="text-xs font-bold text-gray-700">Sequência</p>
              </div>
              <div class="flex items-end gap-1">
                <div v-for="day in 7" :key="day" class="flex-1 rounded-t-lg transition-all"
                  :class="day <= 5 ? 'bg-gradient-to-t from-orange-400 to-orange-500' : 'bg-gray-200'"
                  :style="{ height: day <= 5 ? `${20 + day * 8}px` : '20px' }"
                />
              </div>
              <p class="text-center text-lg font-black text-orange-500 mt-2">5 dias 🔥</p>
            </div>
          </div>
          
          <!-- Phone Mockup -->
          <div class="relative z-10 mx-auto max-w-sm">
            <div class="relative aspect-[9/19.5] bg-gradient-to-br from-gray-900 via-gray-800 to-black rounded-[3.5rem] p-2 shadow-2xl ring-8 ring-gray-300/20">
              <!-- Phone Screen -->
              <div class="relative w-full h-full bg-gradient-to-br from-gray-50 to-white rounded-[3rem] overflow-hidden">
                <!-- Status Bar -->
                <div class="absolute top-0 left-0 right-0 h-12 bg-white/80 backdrop-blur-lg z-10 flex items-center justify-between px-8 border-b border-gray-100">
                  <span class="text-sm font-semibold text-gray-900">9:41</span>
                  <div class="flex gap-2 items-center">
                    <Icon name="lucide:signal" class="w-4 h-4 text-gray-700" />
                    <Icon name="lucide:wifi" class="w-4 h-4 text-gray-700" />
                    <Icon name="lucide:battery-full" class="w-4 h-4 text-gray-700" />
                  </div>
                </div>

                <!-- App Content -->
                <div class="pt-12 pb-6 px-5 h-full overflow-hidden bg-gradient-to-br from-blue-50/50 via-white to-green-50/50">
                  <!-- Header -->
                  <div class="flex items-center justify-between mb-6 animate-slide-up">
                    <div>
                      <p class="text-sm text-gray-500">Olá,</p>
                      <h2 class="text-2xl font-black text-gray-900">João Silva 👋</h2>
                    </div>
                    <div class="w-14 h-14 bg-gradient-to-br from-primary-500 via-purple-500 to-primary-600 rounded-2xl shadow-lg ring-4 ring-primary-100" />
                  </div>

                  <!-- Stats Cards -->
                  <div class="grid grid-cols-2 gap-3 mb-6">
                    <div class="bg-white rounded-3xl p-5 shadow-lg border border-gray-100 hover:scale-105 transition-transform">
                      <div class="w-10 h-10 bg-gradient-to-br from-orange-400 to-red-500 rounded-2xl flex items-center justify-center mb-3 shadow-md">
                        <Icon name="lucide:flame" class="w-5 h-5 text-white" />
                      </div>
                      <p class="text-3xl font-black text-gray-900">1,234</p>
                      <p class="text-xs text-gray-500 font-medium">Calorias hoje</p>
                    </div>
                    <div class="bg-white rounded-3xl p-5 shadow-lg border border-gray-100 hover:scale-105 transition-transform">
                      <div class="w-10 h-10 bg-gradient-to-br from-primary-500 to-blue-600 rounded-2xl flex items-center justify-center mb-3 shadow-md">
                        <Icon name="lucide:activity" class="w-5 h-5 text-white" />
                      </div>
                      <p class="text-3xl font-black text-gray-900">28</p>
                      <p class="text-xs text-gray-500 font-medium">Treinos mês</p>
                    </div>
                  </div>

                  <!-- Today's Workout -->
                  <div class="relative bg-gradient-to-br from-primary-600 via-primary-500 to-purple-600 rounded-3xl p-6 text-white shadow-2xl overflow-hidden">
                    <div class="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full -translate-y-1/2 translate-x-1/2" />
                    <div class="absolute bottom-0 left-0 w-24 h-24 bg-white/10 rounded-full translate-y-1/2 -translate-x-1/2" />
                    
                    <div class="relative z-10">
                      <div class="flex items-center justify-between mb-4">
                        <div>
                          <p class="text-sm opacity-90 mb-1 font-medium">Treino do dia</p>
                          <h3 class="text-2xl font-black">Treino de Peito</h3>
                        </div>
                        <div class="w-12 h-12 bg-white/20 backdrop-blur-sm rounded-2xl flex items-center justify-center">
                          <Icon name="lucide:dumbbell" class="w-6 h-6" />
                        </div>
                      </div>
                      
                      <div class="space-y-2 mb-4">
                        <div class="flex justify-between text-sm">
                          <span class="opacity-90">Progresso</span>
                          <span class="font-bold">6/8 exercícios</span>
                        </div>
                        <div class="flex items-center gap-3">
                          <div class="flex-1 h-3 bg-white/20 rounded-full overflow-hidden">
                            <div class="h-full w-3/4 bg-gradient-to-r from-white to-accent-300 rounded-full shadow-lg" />
                          </div>
                          <span class="text-lg font-black">75%</span>
                        </div>
                      </div>

                      <button class="w-full bg-white text-primary-600 font-bold py-3 px-4 rounded-2xl shadow-lg hover:scale-105 transition-transform text-sm">
                        Continuar Treino →
                      </button>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Phone Notch -->
              <div class="absolute top-0 left-1/2 -translate-x-1/2 w-32 h-7 bg-black rounded-b-3xl z-20" />
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Scroll Indicator -->
    <div class="absolute bottom-8 left-1/2 -translate-x-1/2 animate-bounce">
      <a href="#recursos" class="flex flex-col items-center gap-2 text-gray-400 hover:text-primary-500 transition-colors">
        <span class="text-sm font-medium">Saiba mais</span>
        <Icon name="lucide:chevron-down" class="w-5 h-5" />
      </a>
    </div>
  </section>
</template>

<script setup lang="ts">
const stats = [
  { value: '5.000+', label: 'Alunos Ativos' },
  { value: '500+', label: 'Personal Trainers' },
  { value: '98%', label: 'Satisfação' },
]
</script>
