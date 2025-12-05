<template>
  <section class="relative py-32 bg-gradient-to-br from-gray-900 via-gray-800 to-black text-white overflow-hidden">
    <!-- Animated Background -->
    <div class="absolute inset-0 -z-10">
      <div class="absolute top-0 left-1/4 w-[600px] h-[600px] bg-primary-500/20 rounded-full blur-3xl animate-float" style="animation-duration: 8s;" />
      <div class="absolute bottom-0 right-1/4 w-[500px] h-[500px] bg-accent-500/20 rounded-full blur-3xl animate-float" style="animation-duration: 10s; animation-delay: 1s;" />
      <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[700px] h-[700px] bg-purple-500/15 rounded-full blur-3xl animate-float" style="animation-duration: 12s; animation-delay: 2s;" />
      <div class="absolute inset-0 bg-[linear-gradient(to_right,#ffffff05_1px,transparent_1px),linear-gradient(to_bottom,#ffffff05_1px,transparent_1px)] bg-[size:4rem_4rem]" />
    </div>

    <div class="max-w-6xl mx-auto px-6 sm:px-8">
      <div class="max-w-4xl mx-auto text-center">
        <!-- Icon with Animation -->
        <div class="relative inline-flex mb-10 animate-fade-in">
          <div class="absolute inset-0 bg-gradient-to-br from-primary-500 to-accent-500 rounded-3xl blur-2xl opacity-50 animate-pulse" />
          <div class="relative w-24 h-24 rounded-3xl bg-gradient-to-br from-primary-500 via-purple-500 to-accent-500 flex items-center justify-center shadow-2xl">
            <Icon name="lucide:rocket" class="w-12 h-12 text-white" />
          </div>
        </div>

        <!-- Title -->
        <h2 class="text-4xl md:text-5xl lg:text-7xl font-black mb-6 leading-tight animate-slide-up">
          Pronto para
          <br />
          <span class="text-transparent bg-clip-text bg-gradient-to-r from-primary-400 via-purple-400 to-accent-400 animate-gradient bg-[length:300%_300%]">
            transformar vidas?
          </span>
        </h2>

        <!-- Subtitle -->
        <p class="text-xl md:text-2xl text-gray-300 mb-12 max-w-2xl mx-auto leading-relaxed animate-slide-up" style="animation-delay: 0.1s;">
          Junte-se a <strong class="text-primary-400">500+ personal trainers</strong> e 
          <strong class="text-accent-400">5.000+ alunos</strong> que já estão alcançando resultados extraordinários
        </p>

        <!-- Features Pills -->
        <div class="flex flex-wrap gap-3 justify-center mb-12 animate-slide-up" style="animation-delay: 0.2s;">
          <div v-for="feature in features" :key="feature" class="inline-flex items-center gap-2 px-5 py-2.5 rounded-full bg-white/10 backdrop-blur-sm border border-white/20">
            <Icon name="lucide:check-circle-2" class="w-4 h-4 text-accent-400" />
            <span class="text-sm font-medium text-white">{{ feature }}</span>
          </div>
        </div>

        <!-- CTA Buttons -->
        <div class="flex flex-col sm:flex-row gap-5 justify-center animate-slide-up" style="animation-delay: 0.3s;">
          <NuxtLink to="/cadastro" class="group relative inline-flex items-center justify-center gap-3 px-10 py-5 bg-gradient-to-r from-primary-600 to-primary-700 text-white rounded-2xl font-bold text-lg shadow-2xl hover:shadow-primary-500/50 hover:scale-105 transition-all duration-300 overflow-hidden">
            <div class="absolute inset-0 bg-gradient-to-r from-primary-700 to-primary-800 opacity-0 group-hover:opacity-100 transition-opacity" />
            <Icon name="lucide:briefcase" class="w-6 h-6 relative z-10" />
            <span class="relative z-10">Sou Personal Trainer</span>
            <Icon name="lucide:arrow-right" class="w-5 h-5 group-hover:translate-x-1 transition-transform relative z-10" />
          </NuxtLink>
          
          <NuxtLink to="/cadastro/aluno" class="group inline-flex items-center justify-center gap-3 px-10 py-5 bg-white/10 backdrop-blur-sm border-2 border-white/30 text-white rounded-2xl font-bold text-lg shadow-xl hover:bg-white/20 hover:border-accent-400 hover:scale-105 transition-all duration-300">
            <Icon name="lucide:dumbbell" class="w-6 h-6" />
            <span>Sou Aluno</span>
            <Icon name="lucide:arrow-right" class="w-5 h-5 group-hover:translate-x-1 transition-transform" />
          </NuxtLink>
        </div>

        <!-- Trust Badge -->
        <div class="mt-12 flex flex-wrap items-center justify-center gap-8 animate-fade-in" style="animation-delay: 0.4s;">
          <div class="flex items-center gap-2">
            <Icon name="lucide:shield-check" class="w-6 h-6 text-accent-400" />
            <span class="text-sm text-gray-400">100% Gratuito</span>
          </div>
          <div class="flex items-center gap-2">
            <Icon name="lucide:smartphone" class="w-6 h-6 text-primary-400" />
            <span class="text-sm text-gray-400">iOS & Android</span>
          </div>
          <div class="flex items-center gap-2">
            <Icon name="lucide:zap" class="w-6 h-6 text-yellow-400" />
            <span class="text-sm text-gray-400">Configuração em 2min</span>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
const features = [
  'Sem taxa de setup',
  'Suporte dedicado',
  'Atualizações gratuitas',
  'Modo offline',
]
</script>
