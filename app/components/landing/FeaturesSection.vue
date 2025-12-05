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
          Benefícios para
          <span class="text-primary-500">Personal</span> e <span class="text-accent-500">Aluno</span>
        </h2>
        <p class="section-subtitle">
          Uma plataforma que conecta personal trainers e alunos, oferecendo 
          ferramentas poderosas para ambos alcançarem seus objetivos.
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
    title: 'App Mobile Completo',
    description: 'Aplicativo Android e iOS com modo offline. Personal gerencia, aluno treina em qualquer lugar.',
    bgColor: 'bg-primary-100',
    iconColor: 'text-primary-500',
    forWho: 'Ambos',
  },
  {
    icon: 'lucide:video',
    title: 'Vídeos Demonstrativos',
    description: 'Personal adiciona vídeos aos exercícios. Aluno aprende a executar corretamente.',
    bgColor: 'bg-red-100',
    iconColor: 'text-red-500',
    forWho: 'Ambos',
  },
  {
    icon: 'lucide:clipboard-list',
    title: 'Treinos Personalizados',
    description: 'Personal cria protocolos específicos. Aluno recebe treino sob medida para seus objetivos.',
    bgColor: 'bg-purple-100',
    iconColor: 'text-purple-500',
    forWho: 'Ambos',
  },
  {
    icon: 'lucide:trophy',
    title: 'Gamificação e XP',
    description: 'Aluno ganha pontos e conquistas. Personal acompanha engajamento e motivação.',
    bgColor: 'bg-yellow-100',
    iconColor: 'text-yellow-600',
    forWho: 'Aluno',
  },
  {
    icon: 'lucide:bar-chart-3',
    title: 'Acompanhamento de Evolução',
    description: 'Personal monitora progresso. Aluno visualiza sua evolução e resultados.',
    bgColor: 'bg-accent-100',
    iconColor: 'text-accent-600',
    forWho: 'Ambos',
  },
  {
    icon: 'lucide:message-circle',
    title: 'Comunicação Direta',
    description: 'Chat entre personal e aluno. Tire dúvidas e receba feedback em tempo real.',
    bgColor: 'bg-blue-100',
    iconColor: 'text-blue-500',
    forWho: 'Ambos',
  },
]
</script>
