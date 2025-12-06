<template>
  <section id="planos" class="py-24 bg-gray-50 dark:bg-gray-900 overflow-hidden transition-colors duration-300">
    <div class="max-w-6xl mx-auto px-6 sm:px-8">
      <!-- Header -->
      <div class="text-center mb-16">
        <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-primary-100 dark:bg-primary-900/30 mb-4">
          <Icon name="lucide:credit-card" class="w-4 h-4 text-primary-500 dark:text-primary-400" />
          <span class="text-sm font-medium text-primary-600 dark:text-primary-300">Planos para Personal Trainers</span>
        </div>
        <h2 class="section-title mb-4">
          Escolha o plano
          <span class="gradient-text">ideal para você</span>
        </h2>
        <p class="section-subtitle">
          Planos para personal trainers. <strong class="text-accent-600 dark:text-accent-400">Alunos acessam pelo app!</strong>
        </p>
      </div>

      <!-- Toggle -->
      <div class="flex items-center justify-center gap-4 mb-12">
        <span class="font-medium" :class="!isYearly ? 'text-gray-900 dark:text-white' : 'text-gray-400 dark:text-gray-500'">Mensal</span>
        <button 
          @click="isYearly = !isYearly"
          class="relative w-14 h-8 rounded-full transition-colors"
          :class="isYearly ? 'bg-primary-500' : 'bg-gray-300 dark:bg-gray-700'"
        >
          <div 
            class="absolute top-1 w-6 h-6 rounded-full bg-white shadow-md transition-all"
            :class="isYearly ? 'left-7' : 'left-1'"
          />
        </button>
        <span class="font-medium" :class="isYearly ? 'text-gray-900 dark:text-white' : 'text-gray-400 dark:text-gray-500'">
          Anual
          <span class="ml-1 text-accent-500 dark:text-accent-400 text-sm">(-20%)</span>
        </span>
      </div>

      <!-- Pricing Cards -->
      <div class="grid md:grid-cols-3 gap-8 max-w-5xl mx-auto">
        <div 
          v-for="plan in plans" 
          :key="plan.name"
          class="card relative overflow-hidden bg-white dark:bg-gray-800 transition-colors duration-300"
          :class="plan.featured ? 'border-2 border-primary-500 shadow-glow' : 'border border-gray-100 dark:border-gray-700'"
        >
          <!-- Featured Badge -->
          <div 
            v-if="plan.featured"
            class="absolute top-0 right-0 bg-primary-500 text-white text-xs font-bold px-4 py-1 rounded-bl-xl"
          >
            MAIS POPULAR
          </div>

          <!-- Plan Info -->
          <div class="mb-6">
            <h3 class="text-xl font-bold text-gray-900 dark:text-white mb-2">{{ plan.name }}</h3>
            <p class="text-gray-500 dark:text-gray-400 text-sm">{{ plan.description }}</p>
          </div>

          <!-- Price -->
          <div class="mb-6">
            <div class="flex items-baseline gap-1">
              <span class="text-4xl font-bold text-gray-900 dark:text-white">
                R$ {{ isYearly ? plan.yearlyPrice : plan.monthlyPrice }}
              </span>
              <span class="text-gray-500 dark:text-gray-400">/mês</span>
            </div>
            <p v-if="isYearly && plan.yearlyPrice > 0" class="text-sm text-accent-500 dark:text-accent-400 mt-1">
              Cobrado anualmente
            </p>
          </div>

          <!-- Features -->
          <ul class="space-y-3 mb-8">
            <li 
              v-for="feature in plan.features" 
              :key="feature"
              class="flex items-start gap-3"
            >
              <Icon name="lucide:check" class="w-5 h-5 text-accent-500 dark:text-accent-400 flex-shrink-0 mt-0.5" />
              <span class="text-gray-600 dark:text-gray-300">{{ feature }}</span>
            </li>
          </ul>

          <!-- CTA Button -->
          <NuxtLink 
            to="/cadastro"
            class="btn w-full"
            :class="plan.featured ? 'btn-primary' : 'btn-outline'"
          >
            {{ plan.cta }}
          </NuxtLink>
        </div>
      </div>

      <!-- Guarantee -->
      <div class="mt-12 text-center">
        <div class="inline-flex items-center gap-3 px-6 py-3 rounded-full bg-accent-50 dark:bg-accent-900/30 border border-accent-100 dark:border-accent-700">
          <Icon name="lucide:shield-check" class="w-5 h-5 text-accent-500 dark:text-accent-400" />
          <span class="text-accent-700 dark:text-accent-300 font-medium">Garantia de 30 dias ou seu dinheiro de volta</span>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
const isYearly = ref(false)

const plans = [
  {
    name: 'Starter',
    description: 'Para começar',
    monthlyPrice: 29,
    yearlyPrice: 23,
    features: [
      'Até 5 alunos',
      'Protocolos ilimitados',
      'App mobile',
      'Suporte por email',
    ],
    cta: 'Escolher Plano',
    featured: false,
  },
  {
    name: 'Profissional',
    description: 'Para personal trainers ativos',
    monthlyPrice: 49,
    yearlyPrice: 39,
    features: [
      'Até 30 alunos',
      'Protocolos ilimitados',
      'App mobile + offline',
      'Relatórios avançados',
      'Suporte prioritário',
      'Vídeos personalizados',
    ],
    cta: 'Escolher Plano',
    featured: true,
  },
  {
    name: 'Estúdio',
    description: 'Para academias e estúdios',
    monthlyPrice: 149,
    yearlyPrice: 119,
    features: [
      'Alunos ilimitados',
      'Múltiplos personais',
      'API e integrações',
      'Relatórios gerenciais',
      'Suporte 24/7',
      'Treinamento da equipe',
    ],
    cta: 'Falar com Vendas',
    featured: false,
  },
]
</script>
