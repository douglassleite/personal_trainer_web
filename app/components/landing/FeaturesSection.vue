<template>
  <section id="recursos" class="py-24 bg-gray-50">
    <div class="container-section">
      <!-- Header -->
      <div class="text-center mb-16">
        <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-primary-100 mb-4">
          <Icon name="lucide:star" class="w-4 h-4 text-primary-500" />
          <span class="text-sm font-medium text-primary-600">Recursos Poderosos</span>
        </div>
        <h2 class="section-title mb-4">
          Tudo que você precisa para
          <span class="gradient-text">transformar resultados</span>
        </h2>
        <p class="section-subtitle">
          Uma plataforma completa desenvolvida pensando em cada detalhe da 
          experiência do personal trainer e do aluno.
        </p>
      </div>

      <!-- Features Grid -->
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
        <div 
          v-for="(feature, index) in features" 
          :key="feature.title"
          class="card card-hover group"
          :style="{ animationDelay: `${index * 0.1}s` }"
        >
          <div 
            class="w-14 h-14 rounded-2xl flex items-center justify-center mb-5 transition-transform group-hover:scale-110"
            :class="feature.bgColor"
          >
            <Icon :name="feature.icon" class="w-7 h-7" :class="feature.iconColor" />
          </div>
          <h3 class="text-xl font-bold text-gray-900 mb-3">{{ feature.title }}</h3>
          <p class="text-gray-600">{{ feature.description }}</p>
        </div>
      </div>

      <!-- Bottom CTA -->
      <div class="text-center mt-16">
        <NuxtLink to="/cadastro" class="btn btn-primary text-lg">
          Explorar Todos os Recursos
          <Icon name="lucide:arrow-right" class="w-5 h-5" />
        </NuxtLink>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
const features = [
  {
    icon: 'lucide:smartphone',
    title: 'App Mobile Nativo',
    description: 'Aplicativo Android e iOS com modo offline. Seus alunos acessam treinos em qualquer lugar.',
    bgColor: 'bg-primary-100',
    iconColor: 'text-primary-500',
  },
  {
    icon: 'lucide:video',
    title: 'Vídeos Demonstrativos',
    description: 'Cada exercício com vídeo explicativo. Execução perfeita garantida para seus alunos.',
    bgColor: 'bg-red-100',
    iconColor: 'text-red-500',
  },
  {
    icon: 'lucide:clipboard-list',
    title: 'Protocolos Inteligentes',
    description: 'Crie protocolos de treino completos e atribua a múltiplos alunos com um clique.',
    bgColor: 'bg-purple-100',
    iconColor: 'text-purple-500',
  },
  {
    icon: 'lucide:trophy',
    title: 'Gamificação',
    description: 'Sistema de XP, conquistas e rankings. Mantenha seus alunos motivados e engajados.',
    bgColor: 'bg-yellow-100',
    iconColor: 'text-yellow-600',
  },
  {
    icon: 'lucide:bar-chart-3',
    title: 'Relatórios Detalhados',
    description: 'Acompanhe evolução, frequência e desempenho de cada aluno em tempo real.',
    bgColor: 'bg-accent-100',
    iconColor: 'text-accent-600',
  },
  {
    icon: 'lucide:bell',
    title: 'Notificações Inteligentes',
    description: 'Lembretes automáticos de treino. Seus alunos nunca mais esquecem de treinar.',
    bgColor: 'bg-blue-100',
    iconColor: 'text-blue-500',
  },
]
</script>
