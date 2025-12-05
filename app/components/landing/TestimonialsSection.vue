<template>
  <section id="depoimentos" class="relative py-32 bg-gradient-to-br from-white via-yellow-50/30 to-orange-50/30 overflow-hidden">
    <!-- Background -->
    <div class="absolute inset-0 -z-10">
      <div class="absolute top-20 left-10 w-[500px] h-[500px] bg-yellow-400/10 rounded-full blur-3xl" />
      <div class="absolute bottom-20 right-10 w-[600px] h-[600px] bg-orange-400/10 rounded-full blur-3xl" />
    </div>

    <div class="max-w-7xl mx-auto px-6 sm:px-8">
      <!-- Header -->
      <div class="text-center mb-20 animate-fade-in">
        <div class="inline-flex items-center gap-2 px-5 py-2.5 rounded-full bg-gradient-to-r from-yellow-50 to-orange-50 border border-yellow-200/50 mb-6 shadow-sm">
          <div class="flex gap-0.5">
            <Icon v-for="i in 5" :key="i" name="lucide:star" class="w-3.5 h-3.5 text-yellow-500 fill-current" />
          </div>
          <span class="text-sm font-bold text-yellow-700">+500 Avaliações 5 Estrelas</span>
        </div>
        <h2 class="text-4xl md:text-5xl lg:text-6xl font-black text-gray-900 mb-6 leading-tight">
          Histórias de
          <br />
          <span class="text-transparent bg-clip-text bg-gradient-to-r from-yellow-600 via-orange-600 to-red-600">
            sucesso reais
          </span>
        </h2>
        <p class="text-xl text-gray-600 max-w-3xl mx-auto leading-relaxed">
          Veja como <strong class="text-primary-600">personal trainers</strong> e <strong class="text-accent-600">alunos</strong> de todo Brasil estão transformando resultados
        </p>
      </div>

      <!-- Testimonials Grid -->
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8 mb-20">
        <div 
          v-for="(testimonial, index) in testimonials" 
          :key="testimonial.name"
          class="group bg-white rounded-3xl p-8 shadow-xl border border-gray-100 hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-500 animate-fade-in"
          :style="{ animationDelay: `${index * 0.1}s` }"
        >
          <!-- Quote Icon -->
          <div class="w-12 h-12 bg-gradient-to-br from-yellow-400 to-orange-400 rounded-2xl flex items-center justify-center mb-4 shadow-lg group-hover:rotate-6 transition-transform">
            <Icon name="lucide:quote" class="w-6 h-6 text-white" />
          </div>

          <!-- Stars -->
          <div class="flex gap-1 mb-5">
            <Icon 
              v-for="i in 5" 
              :key="i"
              name="lucide:star" 
              class="w-5 h-5 text-yellow-400 fill-current" 
            />
          </div>

          <!-- Quote -->
          <p class="text-gray-700 mb-6 leading-relaxed text-lg italic">
            "{{ testimonial.quote }}"
          </p>

          <!-- Author -->
          <div class="flex items-center gap-4 pt-6 border-t-2 border-gray-100">
            <div 
              class="w-14 h-14 rounded-2xl flex items-center justify-center font-black text-white text-xl shadow-lg"
              :class="testimonial.avatarColor"
            >
              {{ testimonial.name.charAt(0) }}
            </div>
            <div>
              <p class="font-black text-gray-900 text-lg">{{ testimonial.name }}</p>
              <p class="text-sm text-gray-600 font-medium">{{ testimonial.role }}</p>
            </div>
          </div>
        </div>
      </div>

      <!-- Stats Banner -->
      <div class="relative bg-gradient-to-br from-primary-600 via-purple-600 to-accent-600 rounded-3xl p-10 md:p-16 shadow-2xl overflow-hidden animate-fade-in" style="animation-delay: 0.8s;">
        <div class="absolute inset-0 bg-[linear-gradient(to_right,#ffffff0a_1px,transparent_1px),linear-gradient(to_bottom,#ffffff0a_1px,transparent_1px)] bg-[size:3rem_3rem]" />
        <div class="absolute top-0 right-0 w-64 h-64 bg-white/10 rounded-full blur-3xl" />
        <div class="absolute bottom-0 left-0 w-80 h-80 bg-white/10 rounded-full blur-3xl" />
        
        <div class="relative z-10">
          <div class="text-center mb-12">
            <h3 class="text-3xl md:text-4xl font-black text-white mb-3">Números que impressionam</h3>
            <p class="text-white/80 text-lg">E continuam crescendo a cada dia</p>
          </div>
          <div class="grid grid-cols-2 md:grid-cols-4 gap-8 text-white text-center">
            <div v-for="stat in stats" :key="stat.label" class="group">
              <div class="text-5xl md:text-6xl font-black mb-3 group-hover:scale-110 transition-transform">{{ stat.value }}</div>
              <div class="text-white/90 font-medium text-lg">{{ stat.label }}</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
const testimonials = [
  {
    name: 'Rafael Costa',
    role: 'Personal Trainer',
    quote: 'Finalmente encontrei uma plataforma que entende minhas necessidades. Meus alunos amam o app e a gamificação mantém eles motivados!',
    avatarColor: 'bg-primary-500',
    type: 'personal',
  },
  {
    name: 'Marina Santos',
    role: 'Aluna há 6 meses',
    quote: 'O app me ajuda a não esquecer dos treinos. Os vídeos são ótimos e adoro ver minha evolução semana a semana!',
    avatarColor: 'bg-accent-500',
    type: 'aluno',
  },
  {
    name: 'Carla Mendes',
    role: 'Personal e Nutricionista',
    quote: 'A facilidade de criar protocolos e acompanhar a evolução dos alunos me economiza horas por semana. Recomendo demais!',
    avatarColor: 'bg-purple-500',
    type: 'personal',
  },
  {
    name: 'Lucas Oliveira',
    role: 'Aluno há 1 ano',
    quote: 'Nunca fui tão constante nos treinos! O sistema de XP e conquistas me motiva muito. Já perdi 15kg!',
    avatarColor: 'bg-yellow-500',
    type: 'aluno',
  },
  {
    name: 'Amanda Silva',
    role: 'Personal Online',
    quote: 'Trabalho 100% online e essa plataforma revolucionou meu atendimento. Os vídeos dos exercícios são perfeitos!',
    avatarColor: 'bg-red-500',
    type: 'personal',
  },
  {
    name: 'Pedro Henrique',
    role: 'Aluno há 3 meses',
    quote: 'Ter meu treino no celular com vídeos de cada exercício mudou tudo. Treino com confiança mesmo sendo iniciante.',
    avatarColor: 'bg-blue-500',
    type: 'aluno',
  },
]

const stats = [
  { value: '5.000+', label: 'Alunos Ativos' },
  { value: '500+', label: 'Personal Trainers' },
  { value: '98%', label: 'Satisfação' },
  { value: '150k+', label: 'Treinos Realizados' },
]
</script>
