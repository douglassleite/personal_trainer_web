<template>
  <section id="como-funciona" class="py-24 bg-white">
    <div class="container-section">
      <!-- Header -->
      <div class="text-center mb-16">
        <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-accent-100 mb-4">
          <Icon name="lucide:rocket" class="w-4 h-4 text-accent-500" />
          <span class="text-sm font-medium text-accent-600">Simples e Rápido</span>
        </div>
        <h2 class="section-title mb-4">
          Comece em
          <span class="gradient-text">3 passos simples</span>
        </h2>
        <p class="section-subtitle">
          Configure sua conta em minutos e comece a gerenciar seus alunos hoje mesmo.
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

      <!-- Demo Video Placeholder -->
      <div class="mt-20 relative">
        <div class="relative bg-gradient-to-r from-primary-500 to-accent-500 rounded-3xl overflow-hidden shadow-2xl">
          <div class="absolute inset-0 bg-black/20" />
          <div class="relative aspect-video flex items-center justify-center">
            <button 
              class="w-20 h-20 rounded-full bg-white/90 hover:bg-white flex items-center justify-center shadow-lg hover:scale-110 transition-transform"
            >
              <Icon name="lucide:play" class="w-8 h-8 text-primary-500 ml-1" />
            </button>
          </div>
          <!-- Mock Browser Bar -->
          <div class="absolute top-0 left-0 right-0 bg-white/10 backdrop-blur-sm px-4 py-3 flex items-center gap-2">
            <div class="flex gap-1.5">
              <div class="w-3 h-3 rounded-full bg-red-400" />
              <div class="w-3 h-3 rounded-full bg-yellow-400" />
              <div class="w-3 h-3 rounded-full bg-green-400" />
            </div>
            <div class="flex-1 mx-4 bg-white/20 rounded-lg px-4 py-1.5 text-sm text-white/80">
              app.academiamao.com.br
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
const steps = [
  {
    icon: 'lucide:user-plus',
    title: 'Crie sua Conta',
    description: 'Cadastre-se gratuitamente em menos de 2 minutos. Sem cartão de crédito.',
    bgColor: 'bg-primary-100',
    iconColor: 'text-primary-500',
  },
  {
    icon: 'lucide:users',
    title: 'Adicione seus Alunos',
    description: 'Convide seus alunos para a plataforma e vincule-os à sua conta.',
    bgColor: 'bg-purple-100',
    iconColor: 'text-purple-500',
  },
  {
    icon: 'lucide:dumbbell',
    title: 'Monte os Treinos',
    description: 'Crie protocolos personalizados e acompanhe o progresso de cada aluno.',
    bgColor: 'bg-accent-100',
    iconColor: 'text-accent-500',
  },
]
</script>
