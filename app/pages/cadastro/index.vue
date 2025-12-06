<template>
  <div class="min-h-screen bg-gradient-to-br from-gray-50 via-white to-gray-50 dark:from-gray-900 dark:via-gray-900 dark:to-gray-800 transition-colors duration-300">
    <!-- Header -->
    <TheHeader />

    <div class="pt-20 pb-16">
      <div class="max-w-7xl mx-auto px-6">
        <!-- Header com animação -->
        <div class="text-center mb-16 animate-fade-in">
          <div class="inline-flex items-center justify-center w-20 h-20 bg-gradient-to-br from-primary-500 via-purple-500 to-accent-500 rounded-3xl mb-8 shadow-2xl animate-pulse-slow">
            <Icon name="lucide:sparkles" class="w-10 h-10 text-white" />
          </div>
          <h1 class="text-6xl font-black text-gray-900 dark:text-white mb-6 tracking-tight">
            Transforme sua
            <span class="block text-transparent bg-clip-text bg-gradient-to-r from-primary-600 via-purple-600 to-accent-600 mt-2">
              Jornada Fitness
            </span>
          </h1>
          <p class="text-2xl text-gray-600 dark:text-gray-300 max-w-3xl mx-auto leading-relaxed font-light">
            Cadastre-se em menos de 2 minutos e comece hoje mesmo
          </p>
        </div>

        <!-- Cards de Escolha - Redesign -->
        <div class="grid lg:grid-cols-2 gap-8 max-w-5xl mx-auto mb-20">
          <!-- Card Personal Trainer -->
          <NuxtLink 
            to="/cadastro/personal"
            class="group relative bg-white dark:bg-gray-800 rounded-[2rem] p-12 overflow-hidden transition-all duration-500 hover:scale-[1.02] hover:shadow-2xl border border-gray-100 dark:border-gray-700"
          >
            <!-- Background gradient on hover -->
            <div class="absolute inset-0 bg-gradient-to-br from-primary-500/5 via-purple-500/5 to-primary-500/5 opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            
            <div class="relative z-10">
              <!-- Badge -->
              <div class="inline-flex items-center gap-2 px-4 py-2 bg-primary-100 dark:bg-primary-900/30 text-primary-700 dark:text-primary-300 rounded-full text-sm font-bold mb-6">
                <Icon name="lucide:trending-up" class="w-4 h-4" />
                Para Profissionais
              </div>

              <!-- Icon -->
              <div class="w-24 h-24 bg-gradient-to-br from-primary-500 to-primary-600 rounded-3xl flex items-center justify-center mb-8 shadow-xl group-hover:shadow-2xl group-hover:scale-110 transition-all duration-500">
                <Icon name="lucide:briefcase" class="w-12 h-12 text-white" />
              </div>

              <!-- Content -->
              <h2 class="text-4xl font-black text-gray-900 dark:text-white mb-4">
                Personal<br/>Trainer
              </h2>
              <p class="text-gray-600 dark:text-gray-300 text-lg mb-8 leading-relaxed">
                Gerencie alunos, crie treinos personalizados e acompanhe resultados
              </p>

              <!-- Features -->
              <ul class="space-y-3 mb-10">
                <li class="flex items-center gap-3 text-gray-700 dark:text-gray-300">
                  <div class="w-6 h-6 rounded-full bg-green-100 dark:bg-green-900/30 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-green-600 dark:text-green-400" />
                  </div>
                  <span>Alunos ilimitados</span>
                </li>
                <li class="flex items-center gap-3 text-gray-700 dark:text-gray-300">
                  <div class="w-6 h-6 rounded-full bg-green-100 dark:bg-green-900/30 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-green-600 dark:text-green-400" />
                  </div>
                  <span>Biblioteca de +500 exercícios</span>
                </li>
                <li class="flex items-center gap-3 text-gray-700 dark:text-gray-300">
                  <div class="w-6 h-6 rounded-full bg-green-100 dark:bg-green-900/30 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-green-600 dark:text-green-400" />
                  </div>
                  <span>Link de captação único</span>
                </li>
              </ul>

              <!-- CTA -->
              <div class="flex items-center justify-between p-5 bg-gradient-to-r from-primary-600 to-primary-700 rounded-2xl text-white group-hover:shadow-xl transition-all">
                <span class="font-bold text-lg">Começar agora</span>
                <Icon name="lucide:arrow-right" class="w-6 h-6 group-hover:translate-x-2 transition-transform" />
              </div>
            </div>
          </NuxtLink>

          <!-- Card Aluno -->
          <NuxtLink 
            to="/cadastro/aluno"
            class="group relative bg-white dark:bg-gray-800 rounded-[2rem] p-12 overflow-hidden transition-all duration-500 hover:scale-[1.02] hover:shadow-2xl border border-gray-100 dark:border-gray-700"
          >
            <!-- Background gradient on hover -->
            <div class="absolute inset-0 bg-gradient-to-br from-accent-500/5 via-green-500/5 to-accent-500/5 opacity-0 group-hover:opacity-100 transition-opacity duration-500"></div>
            
            <div class="relative z-10">
              <!-- Badge -->
              <div class="inline-flex items-center gap-2 px-4 py-2 bg-accent-100 dark:bg-accent-900/30 text-accent-700 dark:text-accent-300 rounded-full text-sm font-bold mb-6">
                <Icon name="lucide:zap" class="w-4 h-4" />
                Para Atletas
              </div>

              <!-- Icon -->
              <div class="w-24 h-24 bg-gradient-to-br from-accent-500 to-accent-600 rounded-3xl flex items-center justify-center mb-8 shadow-xl group-hover:shadow-2xl group-hover:scale-110 transition-all duration-500">
                <Icon name="lucide:dumbbell" class="w-12 h-12 text-white" />
              </div>

              <!-- Content -->
              <h2 class="text-4xl font-black text-gray-900 dark:text-white mb-4">
                Aluno
              </h2>
              <p class="text-gray-600 dark:text-gray-300 text-lg mb-8 leading-relaxed">
                Receba treinos, acompanhe evolução e alcance seus objetivos
              </p>

              <!-- Features -->
              <ul class="space-y-3 mb-10">
                <li class="flex items-center gap-3 text-gray-700 dark:text-gray-300">
                  <div class="w-6 h-6 rounded-full bg-green-100 dark:bg-green-900/30 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-green-600 dark:text-green-400" />
                  </div>
                  <span>Treinos personalizados</span>
                </li>
                <li class="flex items-center gap-3 text-gray-700 dark:text-gray-300">
                  <div class="w-6 h-6 rounded-full bg-green-100 dark:bg-green-900/30 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-green-600 dark:text-green-400" />
                  </div>
                  <span>Vídeos demonstrativos</span>
                </li>
                <li class="flex items-center gap-3 text-gray-700 dark:text-gray-300">
                  <div class="w-6 h-6 rounded-full bg-green-100 dark:bg-green-900/30 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-green-600 dark:text-green-400" />
                  </div>
                  <span>Tracking e conquistas</span>
                </li>
              </ul>

              <!-- CTA -->
              <div class="flex items-center justify-between p-5 bg-gradient-to-r from-accent-600 to-accent-700 rounded-2xl text-white group-hover:shadow-xl transition-all">
                <span class="font-bold text-lg">Começar agora</span>
                <Icon name="lucide:arrow-right" class="w-6 h-6 group-hover:translate-x-2 transition-transform" />
              </div>
            </div>
          </NuxtLink>
        </div>

        <!-- Aviso App -->
        <div class="mt-16 max-w-3xl mx-auto">
          <div class="bg-gradient-to-br from-primary-600 via-purple-600 to-accent-600 rounded-3xl p-10 text-white text-center shadow-2xl">
            <div class="inline-flex items-center justify-center w-16 h-16 bg-white/20 backdrop-blur-sm rounded-2xl mb-6">
              <Icon name="lucide:smartphone" class="w-8 h-8" />
            </div>
            <h3 class="text-3xl font-bold mb-4">Baixe Nosso App!</h3>
            <p class="text-white/95 text-lg mb-8 max-w-xl mx-auto">
              Após criar sua conta, baixe o aplicativo mobile para ter acesso completo a todas as funcionalidades da plataforma
            </p>
            <div class="flex flex-col sm:flex-row gap-4 justify-center max-w-md mx-auto">
              <a href="#" class="flex-1 inline-flex items-center justify-center gap-3 bg-white/20 hover:bg-white/30 backdrop-blur-sm transition-all px-6 py-4 rounded-xl hover:scale-105 duration-300">
                <Icon name="logos:apple" class="w-7 h-7" />
                <div class="text-left">
                  <div class="text-xs text-white/80">Download on the</div>
                  <div class="text-base font-bold">App Store</div>
                </div>
              </a>
              <a href="#" class="flex-1 inline-flex items-center justify-center gap-3 bg-white/20 hover:bg-white/30 backdrop-blur-sm transition-all px-6 py-4 rounded-xl hover:scale-105 duration-300">
                <Icon name="logos:google-play-icon" class="w-7 h-7" />
                <div class="text-left">
                  <div class="text-xs text-white/80">GET IT ON</div>
                  <div class="text-base font-bold">Google Play</div>
                </div>
              </a>
            </div>
          </div>
        </div>

        <!-- Já tem conta? -->
        <div class="mt-10 text-center">
          <div class="inline-flex items-center gap-2 px-6 py-3 bg-white rounded-full shadow-md">
            <Icon name="lucide:info" class="w-4 h-4 text-gray-500" />
            <p class="text-gray-700">
              Já tem conta? 
              <span class="text-primary-600 font-bold">Acesse pelo App</span>
            </p>
          </div>
        </div>
      </div>
    </div>

    <!-- Footer -->
    <TheFooter />
  </div>
</template>

<script setup>
// SEO
useHead({
  title: 'Cadastro - Academia na Mão'
})
</script>
