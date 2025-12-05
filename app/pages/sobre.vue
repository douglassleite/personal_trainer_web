<template>
  <div>
    <TheHeader />

    <!-- Hero Section -->
    <section class="relative pt-32 pb-20 bg-gradient-to-br from-primary-50 via-white to-purple-50 overflow-hidden">
      <!-- Background Elements -->
      <div class="absolute inset-0 opacity-30">
        <div class="absolute inset-0" style="background-image: radial-gradient(circle at 1px 1px, rgb(0 0 0 / 0.05) 1px, transparent 0); background-size: 40px 40px;"></div>
      </div>
      <div class="absolute top-20 right-10 w-96 h-96 bg-primary-200/30 rounded-full blur-3xl animate-float"></div>
      <div class="absolute bottom-20 left-10 w-96 h-96 bg-purple-200/30 rounded-full blur-3xl animate-float" style="animation-delay: 2s;"></div>

      <div class="relative max-w-5xl mx-auto px-6 sm:px-8 text-center">
        <div class="inline-flex items-center gap-2 px-4 py-2 bg-primary-100 text-primary-700 rounded-full text-sm font-semibold mb-6">
          <Icon name="lucide:heart" class="w-4 h-4" />
          Nossa História
        </div>
        <h1 class="text-6xl md:text-7xl font-black text-gray-900 mb-6">
          Transformando a
          <span class="bg-gradient-to-r from-primary-600 via-purple-600 to-accent-600 bg-clip-text text-transparent animate-gradient">
            educação física
          </span>
        </h1>
        <p class="text-xl md:text-2xl text-gray-600 max-w-3xl mx-auto leading-relaxed">
          Conectamos personal trainers e alunos através de uma plataforma moderna, intuitiva e completa
        </p>
      </div>
    </section>

    <!-- Mission Section -->
    <section class="py-20 bg-white">
      <div class="max-w-7xl mx-auto px-6 sm:px-8">
        <div class="grid lg:grid-cols-2 gap-16 items-center">
          <div>
            <div class="inline-flex items-center gap-2 px-4 py-2 bg-accent-100 text-accent-700 rounded-full text-sm font-semibold mb-6">
              <Icon name="lucide:target" class="w-4 h-4" />
              Nossa Missão
            </div>
            <h2 class="text-4xl md:text-5xl font-black text-gray-900 mb-6">
              Democratizar o acesso ao treinamento personalizado
            </h2>
            <p class="text-lg text-gray-600 mb-6 leading-relaxed">
              Acreditamos que todos merecem acesso a orientação profissional de qualidade. Nossa plataforma foi criada para simplificar a gestão de treinos e fortalecer a conexão entre profissionais e alunos.
            </p>
            <p class="text-lg text-gray-600 leading-relaxed">
              Através da tecnologia, eliminamos barreiras e criamos uma experiência única que beneficia tanto personal trainers quanto seus alunos, permitindo que ambos alcancem seus objetivos de forma mais eficiente.
            </p>
          </div>
          <div class="relative">
            <div class="aspect-square rounded-3xl bg-gradient-to-br from-primary-500 to-purple-600 p-1">
              <div class="w-full h-full rounded-3xl bg-white p-8 flex items-center justify-center">
                <div class="text-center">
                  <div class="w-24 h-24 mx-auto mb-6 rounded-2xl bg-gradient-to-br from-primary-500 to-purple-600 flex items-center justify-center">
                    <Icon name="lucide:rocket" class="w-12 h-12 text-white" />
                  </div>
                  <div class="space-y-6">
                    <div>
                      <div class="text-5xl font-black text-gray-900 mb-2">5.000+</div>
                      <div class="text-gray-600 font-semibold">Alunos Ativos</div>
                    </div>
                    <div>
                      <div class="text-5xl font-black text-gray-900 mb-2">500+</div>
                      <div class="text-gray-600 font-semibold">Personal Trainers</div>
                    </div>
                    <div>
                      <div class="text-5xl font-black text-gray-900 mb-2">50K+</div>
                      <div class="text-gray-600 font-semibold">Treinos Realizados</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Values Section -->
    <section class="py-20 bg-gradient-to-b from-gray-50 to-white">
      <div class="max-w-7xl mx-auto px-6 sm:px-8">
        <div class="text-center mb-16">
          <div class="inline-flex items-center gap-2 px-4 py-2 bg-purple-100 text-purple-700 rounded-full text-sm font-semibold mb-6">
            <Icon name="lucide:gem" class="w-4 h-4" />
            Nossos Valores
          </div>
          <h2 class="text-4xl md:text-5xl font-black text-gray-900 mb-6">
            O que nos move
          </h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">
            Princípios que guiam cada decisão e funcionalidade da plataforma
          </p>
        </div>

        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
          <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
            <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-primary-500 to-primary-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
              <Icon name="lucide:users" class="w-8 h-8 text-white" />
            </div>
            <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-primary-600 transition-colors">
              Foco no Usuário
            </h3>
            <p class="text-gray-600 leading-relaxed">
              Desenvolvemos cada funcionalidade pensando na experiência e nas necessidades reais de personal trainers e alunos.
            </p>
          </div>

          <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
            <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-accent-500 to-accent-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
              <Icon name="lucide:zap" class="w-8 h-8 text-white" />
            </div>
            <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-accent-600 transition-colors">
              Inovação
            </h3>
            <p class="text-gray-600 leading-relaxed">
              Estamos sempre buscando novas formas de melhorar a experiência através de tecnologia de ponta e design moderno.
            </p>
          </div>

          <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
            <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-purple-500 to-purple-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
              <Icon name="lucide:shield-check" class="w-8 h-8 text-white" />
            </div>
            <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-purple-600 transition-colors">
              Confiança
            </h3>
            <p class="text-gray-600 leading-relaxed">
              Segurança e privacidade dos dados são prioridades absolutas. Seus dados estão seguros conosco.
            </p>
          </div>

          <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
            <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-orange-500 to-orange-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
              <Icon name="lucide:heart-handshake" class="w-8 h-8 text-white" />
            </div>
            <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-orange-600 transition-colors">
              Simplicidade
            </h3>
            <p class="text-gray-600 leading-relaxed">
              Acreditamos que tecnologia deve facilitar, não complicar. Nossa interface é intuitiva e fácil de usar.
            </p>
          </div>

          <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
            <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-blue-500 to-blue-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
              <Icon name="lucide:trending-up" class="w-8 h-8 text-white" />
            </div>
            <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-blue-600 transition-colors">
              Evolução Contínua
            </h3>
            <p class="text-gray-600 leading-relaxed">
              Ouvimos nossos usuários e evoluímos constantemente, adicionando novos recursos e melhorias.
            </p>
          </div>

          <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
            <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-pink-500 to-pink-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
              <Icon name="lucide:sparkles" class="w-8 h-8 text-white" />
            </div>
            <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-pink-600 transition-colors">
              Excelência
            </h3>
            <p class="text-gray-600 leading-relaxed">
              Buscamos sempre entregar o melhor produto possível, com qualidade em cada detalhe da plataforma.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Story Section -->
    <section class="py-20 bg-white">
      <div class="max-w-7xl mx-auto px-6 sm:px-8">
        <div class="grid lg:grid-cols-2 gap-16 items-center">
          <div class="order-2 lg:order-1">
            <div class="relative">
              <div class="aspect-[4/3] rounded-3xl bg-gradient-to-br from-accent-500 to-accent-700 p-1">
                <div class="w-full h-full rounded-3xl bg-gradient-to-br from-accent-50 to-accent-100 flex items-center justify-center">
                  <div class="text-center p-8">
                    <Icon name="lucide:lightbulb" class="w-32 h-32 text-accent-600 mx-auto mb-6" />
                    <p class="text-2xl font-bold text-accent-900">
                      "A ideia nasceu da necessidade de simplificar a rotina de personal trainers"
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="order-1 lg:order-2">
            <div class="inline-flex items-center gap-2 px-4 py-2 bg-primary-100 text-primary-700 rounded-full text-sm font-semibold mb-6">
              <Icon name="lucide:book-open" class="w-4 h-4" />
              Como Começou
            </div>
            <h2 class="text-4xl md:text-5xl font-black text-gray-900 mb-6">
              De uma ideia simples a uma plataforma completa
            </h2>
            <div class="space-y-4 text-lg text-gray-600 leading-relaxed">
              <p>
                O <strong class="text-gray-900">Academia na Mão</strong> nasceu da observação direta dos desafios enfrentados por personal trainers no dia a dia: planilhas desorganizadas, comunicação fragmentada e dificuldade em acompanhar o progresso dos alunos.
              </p>
              <p>
                Percebemos que havia uma lacuna no mercado - uma solução completa, moderna e acessível que conectasse profissionais e alunos de forma eficiente. Foi então que decidimos criar essa plataforma.
              </p>
              <p>
                Hoje, milhares de personal trainers e alunos usam diariamente nossa plataforma, provando que quando tecnologia e paixão por fitness se encontram, grandes coisas acontecem.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Team Section -->
    <section class="py-20 bg-gradient-to-b from-gray-50 to-white">
      <div class="max-w-7xl mx-auto px-6 sm:px-8">
        <div class="text-center mb-16">
          <div class="inline-flex items-center gap-2 px-4 py-2 bg-primary-100 text-primary-700 rounded-full text-sm font-semibold mb-6">
            <Icon name="lucide:users-round" class="w-4 h-4" />
            Nosso Time
          </div>
          <h2 class="text-4xl md:text-5xl font-black text-gray-900 mb-6">
            Conheça quem faz acontecer
          </h2>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">
            Uma equipe apaixonada por tecnologia e fitness, dedicada a criar a melhor experiência possível
          </p>
        </div>

        <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
          <div class="group bg-white rounded-3xl p-6 shadow-xl hover:shadow-2xl hover:scale-105 transition-all duration-300 text-center">
            <div class="w-24 h-24 mx-auto mb-4 rounded-full bg-gradient-to-br from-primary-400 to-primary-600 flex items-center justify-center text-white text-3xl font-black shadow-lg group-hover:scale-110 transition-transform">
              DL
            </div>
            <h3 class="text-xl font-black text-gray-900 mb-1">Douglas Leite</h3>
            <p class="text-primary-600 font-semibold mb-3">CEO & Founder</p>
            <p class="text-sm text-gray-600 mb-4">Visionário por trás da plataforma</p>
            <div class="flex justify-center gap-3">
              <button class="w-10 h-10 rounded-full bg-gray-100 hover:bg-primary-100 flex items-center justify-center transition-colors">
                <Icon name="lucide:linkedin" class="w-5 h-5 text-gray-600" />
              </button>
              <button class="w-10 h-10 rounded-full bg-gray-100 hover:bg-primary-100 flex items-center justify-center transition-colors">
                <Icon name="lucide:github" class="w-5 h-5 text-gray-600" />
              </button>
            </div>
          </div>

          <div class="group bg-white rounded-3xl p-6 shadow-xl hover:shadow-2xl hover:scale-105 transition-all duration-300 text-center">
            <div class="w-24 h-24 mx-auto mb-4 rounded-full bg-gradient-to-br from-purple-400 to-purple-600 flex items-center justify-center text-white text-3xl font-black shadow-lg group-hover:scale-110 transition-transform">
              JM
            </div>
            <h3 class="text-xl font-black text-gray-900 mb-1">João Mendes</h3>
            <p class="text-purple-600 font-semibold mb-3">CTO</p>
            <p class="text-sm text-gray-600 mb-4">Arquiteto de tecnologia</p>
            <div class="flex justify-center gap-3">
              <button class="w-10 h-10 rounded-full bg-gray-100 hover:bg-purple-100 flex items-center justify-center transition-colors">
                <Icon name="lucide:linkedin" class="w-5 h-5 text-gray-600" />
              </button>
              <button class="w-10 h-10 rounded-full bg-gray-100 hover:bg-purple-100 flex items-center justify-center transition-colors">
                <Icon name="lucide:github" class="w-5 h-5 text-gray-600" />
              </button>
            </div>
          </div>

          <div class="group bg-white rounded-3xl p-6 shadow-xl hover:shadow-2xl hover:scale-105 transition-all duration-300 text-center">
            <div class="w-24 h-24 mx-auto mb-4 rounded-full bg-gradient-to-br from-accent-400 to-accent-600 flex items-center justify-center text-white text-3xl font-black shadow-lg group-hover:scale-110 transition-transform">
              MS
            </div>
            <h3 class="text-xl font-black text-gray-900 mb-1">Maria Silva</h3>
            <p class="text-accent-600 font-semibold mb-3">Head of Design</p>
            <p class="text-sm text-gray-600 mb-4">Criadora da experiência</p>
            <div class="flex justify-center gap-3">
              <button class="w-10 h-10 rounded-full bg-gray-100 hover:bg-accent-100 flex items-center justify-center transition-colors">
                <Icon name="lucide:linkedin" class="w-5 h-5 text-gray-600" />
              </button>
              <button class="w-10 h-10 rounded-full bg-gray-100 hover:bg-accent-100 flex items-center justify-center transition-colors">
                <Icon name="lucide:dribbble" class="w-5 h-5 text-gray-600" />
              </button>
            </div>
          </div>

          <div class="group bg-white rounded-3xl p-6 shadow-xl hover:shadow-2xl hover:scale-105 transition-all duration-300 text-center">
            <div class="w-24 h-24 mx-auto mb-4 rounded-full bg-gradient-to-br from-orange-400 to-orange-600 flex items-center justify-center text-white text-3xl font-black shadow-lg group-hover:scale-110 transition-transform">
              RC
            </div>
            <h3 class="text-xl font-black text-gray-900 mb-1">Rafael Costa</h3>
            <p class="text-orange-600 font-semibold mb-3">Head of Product</p>
            <p class="text-sm text-gray-600 mb-4">Guardião da qualidade</p>
            <div class="flex justify-center gap-3">
              <button class="w-10 h-10 rounded-full bg-gray-100 hover:bg-orange-100 flex items-center justify-center transition-colors">
                <Icon name="lucide:linkedin" class="w-5 h-5 text-gray-600" />
              </button>
              <button class="w-10 h-10 rounded-full bg-gray-100 hover:bg-orange-100 flex items-center justify-center transition-colors">
                <Icon name="lucide:twitter" class="w-5 h-5 text-gray-600" />
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="relative py-32 bg-gradient-to-br from-gray-900 via-gray-800 to-black overflow-hidden">
      <!-- Animated Background -->
      <div class="absolute top-20 left-10 w-96 h-96 bg-primary-500/20 rounded-full blur-3xl animate-float"></div>
      <div class="absolute bottom-20 right-10 w-96 h-96 bg-purple-500/20 rounded-full blur-3xl animate-float" style="animation-delay: 2s;"></div>
      <div class="absolute inset-0 opacity-10">
        <div class="absolute inset-0" style="background-image: radial-gradient(circle at 1px 1px, rgb(255 255 255 / 0.15) 1px, transparent 0); background-size: 40px 40px;"></div>
      </div>

      <div class="relative max-w-4xl mx-auto px-6 sm:px-8 text-center">
        <div class="w-20 h-20 mx-auto mb-8 rounded-2xl bg-gradient-to-br from-primary-500 to-purple-600 flex items-center justify-center backdrop-blur-xl shadow-2xl">
          <Icon name="lucide:rocket" class="w-10 h-10 text-white" />
        </div>
        <h2 class="text-5xl md:text-6xl font-black text-white mb-6">
          Faça parte desta
          <span class="bg-gradient-to-r from-primary-400 via-purple-400 to-accent-400 bg-clip-text text-transparent animate-gradient">
            transformação
          </span>
        </h2>
        <p class="text-xl md:text-2xl text-gray-300 mb-10 max-w-3xl mx-auto">
          Junte-se a milhares de profissionais e alunos que já transformaram sua experiência de treino
        </p>
        <div class="flex flex-col sm:flex-row gap-4 justify-center">
          <NuxtLink to="/cadastro" class="inline-flex items-center justify-center gap-2 px-10 py-5 bg-gradient-to-r from-primary-500 to-primary-600 text-white font-bold rounded-2xl hover:shadow-2xl transition-all hover:scale-105 text-lg">
            <Icon name="lucide:rocket" class="w-6 h-6" />
            Começar Agora
          </NuxtLink>
          <NuxtLink to="/recursos" class="inline-flex items-center justify-center gap-2 px-10 py-5 bg-white/10 backdrop-blur-xl text-white font-bold rounded-2xl hover:bg-white/20 transition-all border border-white/20 text-lg">
            <Icon name="lucide:sparkles" class="w-6 h-6" />
            Ver Recursos
          </NuxtLink>
        </div>

        <!-- Trust Badges -->
        <div class="mt-12 flex flex-wrap justify-center gap-8 text-gray-400">
          <div class="flex items-center gap-2">
            <Icon name="lucide:shield-check" class="w-5 h-5 text-accent-400" />
            <span class="text-sm font-semibold">100% Gratuito</span>
          </div>
          <div class="flex items-center gap-2">
            <Icon name="lucide:smartphone" class="w-5 h-5 text-accent-400" />
            <span class="text-sm font-semibold">iOS & Android</span>
          </div>
          <div class="flex items-center gap-2">
            <Icon name="lucide:clock" class="w-5 h-5 text-accent-400" />
            <span class="text-sm font-semibold">Setup em 2min</span>
          </div>
        </div>
      </div>
    </section>

    <TheFooter />
  </div>
</template>

<script setup lang="ts">
import TheHeader from '~/components/landing/TheHeader.vue'
import TheFooter from '~/components/landing/TheFooter.vue'

useSeoMeta({
  title: 'Sobre - Academia na Mão | Nossa História e Missão',
  description: 'Conheça a história do Academia na Mão, nossa missão de democratizar o acesso ao treinamento personalizado e os valores que nos movem.',
  ogTitle: 'Sobre - Academia na Mão',
  ogDescription: 'Conectando personal trainers e alunos através de tecnologia inovadora. Conheça nossa história e missão.',
})
</script>

<style scoped>
@keyframes float {
  0%, 100% {
    transform: translateY(0px);
  }
  50% {
    transform: translateY(-20px);
  }
}

.animate-float {
  animation: float 8s ease-in-out infinite;
}
</style>
