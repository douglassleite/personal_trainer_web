<template>
  <section id="recursos" class="relative py-32 bg-gradient-to-br from-white via-gray-50 to-blue-50 overflow-hidden">
    <!-- Background Decorations -->
    <div class="absolute inset-0 -z-10">
      <div class="absolute top-20 right-20 w-[400px] h-[400px] bg-primary-400/10 rounded-full blur-3xl" />
      <div class="absolute bottom-20 left-20 w-[500px] h-[500px] bg-accent-400/10 rounded-full blur-3xl" />
    </div>

    <div class="max-w-7xl mx-auto px-6 sm:px-8">
      <!-- Header -->
      <div class="text-center mb-20 animate-fade-in">
        <div class="inline-flex items-center gap-2 px-5 py-2.5 rounded-full bg-gradient-to-r from-primary-50 to-purple-50 border border-primary-200/50 mb-6">
          <Icon name="lucide:sparkles" class="w-4 h-4 text-primary-600" />
          <span class="text-sm font-bold text-primary-700">Recursos Exclusivos</span>
        </div>
        <h2 class="text-4xl md:text-5xl lg:text-6xl font-black text-gray-900 mb-6 leading-tight">
          Tudo que você precisa
          <br />
          <span class="text-transparent bg-clip-text bg-gradient-to-r from-primary-600 via-purple-600 to-accent-600">
            em um só lugar
          </span>
        </h2>
        <p class="text-xl text-gray-600 max-w-3xl mx-auto leading-relaxed">
          Ferramentas poderosas que transformam a forma como <strong class="text-primary-600">personal trainers</strong> e 
          <strong class="text-accent-600">alunos</strong> trabalham juntos
        </p>
      </div>

      <!-- Features Grid -->
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8 mb-16">
        <div 
          v-for="(feature, index) in features" 
          :key="feature.title"
          class="group relative bg-white rounded-3xl p-8 shadow-lg border border-gray-100 hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-500 animate-fade-in overflow-hidden"
          :style="{ animationDelay: `${index * 0.1}s` }"
        >
          <!-- Hover Gradient -->
          <div class="absolute inset-0 bg-gradient-to-br opacity-0 group-hover:opacity-5 transition-opacity rounded-3xl"
            :class="feature.gradientFrom + ' ' + feature.gradientTo" />
          
          <!-- Icon -->
          <div class="relative mb-6">
            <div 
              class="w-16 h-16 rounded-2xl flex items-center justify-center transition-all duration-500 group-hover:scale-110 group-hover:rotate-6 shadow-lg"
              :class="feature.bgColor"
            >
              <Icon :name="feature.icon" class="w-8 h-8" :class="feature.iconColor" />
            </div>
            <!-- Badge -->
            <div v-if="feature.badge" class="absolute -top-2 -right-2 bg-gradient-to-r from-primary-500 to-purple-500 text-white text-xs font-bold px-2.5 py-1 rounded-full shadow-lg">
              {{ feature.badge }}
            </div>
          </div>
          
          <!-- Content -->
          <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-primary-600 transition-colors">
            {{ feature.title }}
          </h3>
          <p class="text-gray-600 leading-relaxed mb-4">{{ feature.description }}</p>
          
          <!-- For Who Tag -->
          <div class="flex items-center gap-2">
            <Icon name="lucide:users" class="w-4 h-4" :class="feature.forWhoColor" />
            <span class="text-sm font-bold" :class="feature.forWhoColor">{{ feature.forWho }}</span>
          </div>

          <!-- Hover Arrow -->
          <div class="absolute bottom-6 right-6 w-10 h-10 bg-primary-100 rounded-full flex items-center justify-center opacity-0 group-hover:opacity-100 transition-all duration-500 group-hover:translate-x-1">
            <Icon name="lucide:arrow-right" class="w-5 h-5 text-primary-600" />
          </div>
        </div>
      </div>

      <!-- Stats -->
      <div class="grid grid-cols-2 md:grid-cols-4 gap-6 mb-16 animate-fade-in" style="animation-delay: 0.6s;">
        <div v-for="stat in stats" :key="stat.label" class="text-center bg-white rounded-2xl p-6 shadow-lg border border-gray-100">
          <div class="text-4xl md:text-5xl font-black text-transparent bg-clip-text bg-gradient-to-r mb-2"
            :class="stat.gradient">
            {{ stat.value }}
          </div>
          <div class="text-sm text-gray-600 font-medium">{{ stat.label }}</div>
        </div>
      </div>

      <!-- Bottom CTA -->
      <div class="text-center animate-fade-in" style="animation-delay: 0.8s;">
        <div class="inline-flex flex-col sm:flex-row gap-4">
          <NuxtLink to="/recursos" class="group inline-flex items-center justify-center gap-3 px-8 py-4 bg-gradient-to-r from-primary-600 to-primary-700 text-white rounded-2xl font-bold text-lg shadow-lg hover:shadow-2xl hover:scale-105 transition-all duration-300 overflow-hidden relative">
            <div class="absolute inset-0 bg-gradient-to-r from-primary-700 to-primary-800 opacity-0 group-hover:opacity-100 transition-opacity" />
            <Icon name="lucide:layout-grid" class="w-6 h-6 relative z-10" />
            <span class="relative z-10">Ver Todos os Recursos</span>
            <Icon name="lucide:arrow-right" class="w-5 h-5 group-hover:translate-x-1 transition-transform relative z-10" />
          </NuxtLink>
          
          <NuxtLink to="/cadastro" class="group inline-flex items-center justify-center gap-3 px-8 py-4 bg-white border-2 border-gray-300 text-gray-700 rounded-2xl font-bold text-lg shadow-md hover:shadow-xl hover:border-accent-500 hover:text-accent-600 hover:scale-105 transition-all duration-300">
            <Icon name="lucide:rocket" class="w-6 h-6" />
            <span>Começar Agora</span>
          </NuxtLink>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
const features = [
  {
    icon: 'lucide:smartphone',
    title: 'App Mobile Completo',
    description: 'Aplicativo Android e iOS com modo offline. Gerencie e treine em qualquer lugar, a qualquer hora.',
    bgColor: 'bg-gradient-to-br from-primary-400 to-primary-600',
    iconColor: 'text-white',
    forWho: 'Personal & Aluno',
    forWhoColor: 'text-primary-600',
    gradientFrom: 'from-primary-500',
    gradientTo: 'to-purple-500',
    badge: 'Novo',
  },
  {
    icon: 'lucide:video',
    title: 'Vídeos Demonstrativos',
    description: 'Adicione vídeos aos exercícios. Aprenda a executar os movimentos com perfeição.',
    bgColor: 'bg-gradient-to-br from-red-400 to-red-600',
    iconColor: 'text-white',
    forWho: 'Personal & Aluno',
    forWhoColor: 'text-red-600',
    gradientFrom: 'from-red-500',
    gradientTo: 'to-orange-500',
  },
  {
    icon: 'lucide:clipboard-list',
    title: 'Treinos Personalizados',
    description: 'Crie protocolos específicos sob medida. Receba treinos alinhados aos seus objetivos.',
    bgColor: 'bg-gradient-to-br from-purple-400 to-purple-600',
    iconColor: 'text-white',
    forWho: 'Personal & Aluno',
    forWhoColor: 'text-purple-600',
    gradientFrom: 'from-purple-500',
    gradientTo: 'to-pink-500',
  },
  {
    icon: 'lucide:trophy',
    title: 'Gamificação & XP',
    description: 'Ganhe pontos, conquistas e badges. Acompanhe o engajamento e motive seus alunos.',
    bgColor: 'bg-gradient-to-br from-yellow-400 to-yellow-600',
    iconColor: 'text-white',
    forWho: 'Aluno',
    forWhoColor: 'text-yellow-600',
    gradientFrom: 'from-yellow-500',
    gradientTo: 'to-orange-500',
  },
  {
    icon: 'lucide:trending-up',
    title: 'Evolução em Tempo Real',
    description: 'Monitore progresso com gráficos detalhados. Visualize sua evolução e resultados.',
    bgColor: 'bg-gradient-to-br from-accent-400 to-accent-600',
    iconColor: 'text-white',
    forWho: 'Personal & Aluno',
    forWhoColor: 'text-accent-600',
    gradientFrom: 'from-accent-500',
    gradientTo: 'to-green-500',
  },
  {
    icon: 'lucide:message-circle',
    title: 'Chat Integrado',
    description: 'Comunicação direta e instantânea. Tire dúvidas e receba feedback em tempo real.',
    bgColor: 'bg-gradient-to-br from-blue-400 to-blue-600',
    iconColor: 'text-white',
    forWho: 'Personal & Aluno',
    forWhoColor: 'text-blue-600',
    gradientFrom: 'from-blue-500',
    gradientTo: 'to-cyan-500',
  },
]

const stats = [
  { value: '500+', label: 'Personal Trainers', gradient: 'from-primary-600 to-purple-600' },
  { value: '5.000+', label: 'Alunos Ativos', gradient: 'from-accent-600 to-green-600' },
  { value: '50K+', label: 'Treinos Criados', gradient: 'from-orange-600 to-red-600' },
  { value: '98%', label: 'Satisfação', gradient: 'from-yellow-600 to-orange-600' },
]
</script>
