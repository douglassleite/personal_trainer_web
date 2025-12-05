<template>
  <section id="depoimentos" class="py-24 bg-white">
    <div class="container-section">
      <!-- Header -->
      <div class="text-center mb-16">
        <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-yellow-100 mb-4">
          <Icon name="lucide:star" class="w-4 h-4 text-yellow-500" />
          <span class="text-sm font-medium text-yellow-600">+500 Avaliações 5 Estrelas</span>
        </div>
        <h2 class="section-title mb-4">
          Veja o que dizem
          <span class="gradient-text">nossos clientes</span>
        </h2>
        <p class="section-subtitle">
          Personal trainers de todo Brasil já transformaram seu negócio com o Academia na Mão.
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
    role: 'Personal Trainer há 8 anos',
    quote: 'Finalmente encontrei uma plataforma que entende minhas necessidades. Meus alunos amam o app e a gamificação mantém eles motivados!',
    avatarColor: 'bg-primary-500',
  },
  {
    name: 'Carla Mendes',
    role: 'Personal e Nutricionista',
    quote: 'A facilidade de criar protocolos e acompanhar a evolução dos alunos me economiza horas por semana. Recomendo demais!',
    avatarColor: 'bg-purple-500',
  },
  {
    name: 'Bruno Oliveira',
    role: 'Dono de Estúdio',
    quote: 'Usamos o Academia na Mão em todo o estúdio. A gestão de múltiplos personais ficou muito mais simples e organizada.',
    avatarColor: 'bg-accent-500',
  },
  {
    name: 'Amanda Silva',
    role: 'Personal Online',
    quote: 'Trabalho 100% online e essa plataforma revolucionou meu atendimento. Os vídeos dos exercícios são perfeitos!',
    avatarColor: 'bg-red-500',
  },
  {
    name: 'Felipe Santos',
    role: 'Personal Trainer',
    quote: 'O modo offline do app é incrível! Meus alunos treinam na academia mesmo sem internet e tudo sincroniza depois.',
    avatarColor: 'bg-yellow-500',
  },
  {
    name: 'Juliana Ferreira',
    role: 'Personal e Coach',
    quote: 'Os relatórios me ajudam a mostrar resultados concretos para meus alunos. Isso aumentou muito a retenção!',
    avatarColor: 'bg-blue-500',
  },
]

const stats = [
  { value: '5.000+', label: 'Alunos Ativos' },
  { value: '500+', label: 'Personal Trainers' },
  { value: '98%', label: 'Satisfação' },
  { value: '150k+', label: 'Treinos Realizados' },
]
</script>
