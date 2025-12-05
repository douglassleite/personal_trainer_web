<template>
  <section id="depoimentos" class="py-24 bg-white overflow-hidden">
    <div class="max-w-6xl mx-auto px-6 sm:px-8">
      <!-- Header -->
      <div class="text-center mb-16">
        <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-yellow-100 mb-4">
          <Icon name="lucide:star" class="w-4 h-4 text-yellow-500" />
          <span class="text-sm font-medium text-yellow-600">+500 Avaliações 5 Estrelas</span>
        </div>
        <h2 class="section-title mb-4">
          O que dizem nossos
          <span class="text-primary-500">personals</span> e <span class="text-accent-500">alunos</span>
        </h2>
        <p class="section-subtitle">
          Personal trainers e alunos de todo Brasil já transformaram seus resultados com o Academia na Mão.
        </p>
      </div>

      <!-- Testimonials Grid -->
      <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
        <div 
          v-for="testimonial in testimonials" 
          :key="testimonial.name"
          class="card card-hover"
        >
          <!-- Stars -->
          <div class="flex gap-1 mb-4">
            <Icon 
              v-for="i in 5" 
              :key="i"
              name="lucide:star" 
              class="w-5 h-5 text-yellow-400 fill-current" 
            />
          </div>

          <!-- Quote -->
          <p class="text-gray-600 mb-6 leading-relaxed">
            "{{ testimonial.quote }}"
          </p>

          <!-- Author -->
          <div class="flex items-center gap-4 pt-4 border-t border-gray-100">
            <div 
              class="w-12 h-12 rounded-full flex items-center justify-center font-bold text-white text-lg"
              :class="testimonial.avatarColor"
            >
              {{ testimonial.name.charAt(0) }}
            </div>
            <div>
              <p class="font-semibold text-gray-900">{{ testimonial.name }}</p>
              <p class="text-sm text-gray-500">{{ testimonial.role }}</p>
            </div>
          </div>
        </div>
      </div>

      <!-- Stats Banner -->
      <div class="mt-16 bg-gradient-to-r from-primary-500 to-accent-500 rounded-3xl p-8 md:p-12">
        <div class="grid grid-cols-2 md:grid-cols-4 gap-8 text-white text-center">
          <div v-for="stat in stats" :key="stat.label">
            <div class="text-4xl md:text-5xl font-bold mb-2">{{ stat.value }}</div>
            <div class="text-white/80">{{ stat.label }}</div>
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
