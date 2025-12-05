<template>
  <section class="relative min-h-screen flex items-center pt-20 overflow-hidden">
    <!-- Background Elements -->
    <div class="absolute inset-0 -z-10">
      <div class="absolute top-20 right-0 w-[600px] h-[600px] bg-primary-100 rounded-full blur-3xl opacity-50" />
      <div class="absolute bottom-20 left-0 w-[400px] h-[400px] bg-accent-100 rounded-full blur-3xl opacity-50" />
      <!-- Grid Pattern -->
      <div class="absolute inset-0 bg-[linear-gradient(to_right,#f0f0f0_1px,transparent_1px),linear-gradient(to_bottom,#f0f0f0_1px,transparent_1px)] bg-[size:4rem_4rem] opacity-30" />
    </div>

    <div class="container-section py-20">
      <div class="grid lg:grid-cols-2 gap-12 lg:gap-20 items-center">
        <!-- Left Content -->
        <div class="text-center lg:text-left">
          <!-- Badge -->
          <div 
            class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-primary-50 border border-primary-100 mb-6 animate-fade-in"
          >
            <Icon name="lucide:sparkles" class="w-4 h-4 text-primary-500" />
            <span class="text-sm font-medium text-primary-600">Plataforma #1 para Personal Trainers</span>
          </div>

          <!-- Title -->
          <h1 class="text-4xl md:text-5xl lg:text-6xl font-bold text-gray-900 leading-tight mb-6 animate-slide-up">
            Sua academia
            <br />
            <span class="gradient-text">na palma da mão</span>
          </h1>

          <!-- Subtitle -->
          <p class="text-lg md:text-xl text-gray-600 mb-8 max-w-xl mx-auto lg:mx-0 animate-slide-up" style="animation-delay: 0.1s">
            Conectamos <strong class="text-gray-900">personal trainers</strong> e 
            <strong class="text-gray-900">alunos</strong> em uma plataforma completa 
            para treinos, acompanhamento e resultados.
          </p>

          <!-- CTA Buttons -->
          <div class="flex flex-col sm:flex-row gap-4 justify-center lg:justify-start animate-slide-up" style="animation-delay: 0.2s">
            <NuxtLink to="/cadastro" class="btn btn-primary text-lg px-8 py-4">
              Começar Grátis
              <Icon name="lucide:arrow-right" class="w-5 h-5" />
            </NuxtLink>
            <a href="#como-funciona" class="btn btn-secondary text-lg px-8 py-4">
              <Icon name="lucide:play-circle" class="w-5 h-5" />
              Ver Demonstração
            </a>
          </div>

          <!-- Stats -->
          <div class="flex flex-wrap gap-8 justify-center lg:justify-start mt-12 animate-slide-up" style="animation-delay: 0.3s">
            <div v-for="stat in stats" :key="stat.label" class="text-center lg:text-left">
              <div class="text-3xl font-bold text-gray-900">{{ stat.value }}</div>
              <div class="text-sm text-gray-500">{{ stat.label }}</div>
            </div>
          </div>
        </div>

        <!-- Right Content - App Preview -->
        <div class="relative animate-fade-in" style="animation-delay: 0.3s">
          <!-- Phone Mockup -->
          <div class="relative mx-auto max-w-sm">
            <!-- Glow Effect -->
            <div class="absolute inset-0 bg-gradient-to-r from-primary-500 to-accent-500 rounded-[3rem] blur-2xl opacity-20 scale-95" />
            
            <!-- Phone Frame -->
            <div class="relative bg-gray-900 rounded-[3rem] p-3 shadow-2xl">
              <div class="bg-white rounded-[2.5rem] overflow-hidden">
                <!-- Status Bar -->
                <div class="bg-gray-50 px-6 py-3 flex items-center justify-between">
                  <span class="text-xs font-medium text-gray-500">9:41</span>
                  <div class="flex items-center gap-1">
                    <Icon name="lucide:signal" class="w-3.5 h-3.5 text-gray-500" />
                    <Icon name="lucide:wifi" class="w-3.5 h-3.5 text-gray-500" />
                    <Icon name="lucide:battery-full" class="w-4 h-4 text-gray-500" />
                  </div>
                </div>
                
                <!-- App Content -->
                <div class="px-4 pb-6">
                  <!-- Header -->
                  <div class="flex items-center justify-between py-4">
                    <div>
                      <p class="text-sm text-gray-500">Olá, João! 👋</p>
                      <p class="font-semibold text-gray-900">Pronto para treinar?</p>
                    </div>
                    <div class="w-10 h-10 rounded-full bg-primary-100 flex items-center justify-center">
                      <Icon name="lucide:user" class="w-5 h-5 text-primary-500" />
                    </div>
                  </div>

                  <!-- Today's Workout Card -->
                  <div class="bg-gradient-to-r from-primary-500 to-primary-600 rounded-2xl p-4 text-white mb-4">
                    <div class="flex items-start justify-between mb-3">
                      <div>
                        <p class="text-primary-100 text-sm">Treino de Hoje</p>
                        <p class="font-bold text-lg">Peito + Tríceps</p>
                      </div>
                      <div class="w-10 h-10 rounded-xl bg-white/20 flex items-center justify-center">
                        <Icon name="lucide:dumbbell" class="w-5 h-5" />
                      </div>
                    </div>
                    <div class="flex items-center gap-4 text-sm">
                      <span class="flex items-center gap-1">
                        <Icon name="lucide:clock" class="w-4 h-4" />
                        45 min
                      </span>
                      <span class="flex items-center gap-1">
                        <Icon name="lucide:flame" class="w-4 h-4" />
                        8 exercícios
                      </span>
                    </div>
                  </div>

                  <!-- Quick Stats -->
                  <div class="grid grid-cols-3 gap-3 mb-4">
                    <div class="bg-gray-50 rounded-xl p-3 text-center">
                      <Icon name="lucide:target" class="w-5 h-5 text-accent-500 mx-auto mb-1" />
                      <p class="text-xs text-gray-500">Série Atual</p>
                      <p class="font-bold text-gray-900">12 dias</p>
                    </div>
                    <div class="bg-gray-50 rounded-xl p-3 text-center">
                      <Icon name="lucide:trophy" class="w-5 h-5 text-yellow-500 mx-auto mb-1" />
                      <p class="text-xs text-gray-500">XP Total</p>
                      <p class="font-bold text-gray-900">2.450</p>
                    </div>
                    <div class="bg-gray-50 rounded-xl p-3 text-center">
                      <Icon name="lucide:activity" class="w-5 h-5 text-primary-500 mx-auto mb-1" />
                      <p class="text-xs text-gray-500">Treinos</p>
                      <p class="font-bold text-gray-900">47</p>
                    </div>
                  </div>

                  <!-- Start Button -->
                  <button class="w-full bg-accent-500 text-white font-semibold py-3 rounded-xl flex items-center justify-center gap-2">
                    <Icon name="lucide:play" class="w-5 h-5" />
                    Iniciar Treino
                  </button>
                </div>
              </div>
            </div>

            <!-- Floating Elements -->
            <div class="absolute -top-4 -right-4 bg-white rounded-2xl shadow-soft-lg p-4 animate-float">
              <div class="flex items-center gap-3">
                <div class="w-10 h-10 rounded-full bg-green-100 flex items-center justify-center">
                  <Icon name="lucide:check-circle-2" class="w-5 h-5 text-green-500" />
                </div>
                <div>
                  <p class="text-xs text-gray-500">Treino Completo!</p>
                  <p class="font-semibold text-gray-900">+150 XP</p>
                </div>
              </div>
            </div>

            <div class="absolute -bottom-4 -left-4 bg-white rounded-2xl shadow-soft-lg p-4 animate-float" style="animation-delay: 1s">
              <div class="flex items-center gap-3">
                <div class="w-10 h-10 rounded-full bg-primary-100 flex items-center justify-center">
                  <Icon name="lucide:trending-up" class="w-5 h-5 text-primary-500" />
                </div>
                <div>
                  <p class="text-xs text-gray-500">Progresso</p>
                  <p class="font-semibold text-accent-500">+12% esta semana</p>
                </div>
              </div>
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
