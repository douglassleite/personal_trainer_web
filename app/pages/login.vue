<template>
  <div class="min-h-screen bg-gray-50">
    <!-- Header -->
    <TheHeader />

    <div class="pt-24 pb-16">
      <div class="max-w-md mx-auto px-6">
        <!-- Card Login -->
        <div class="bg-white rounded-2xl shadow-lg p-8">
          <div class="text-center mb-8">
            <div class="inline-flex items-center justify-center w-16 h-16 bg-primary-100 rounded-full mb-4">
              <Icon name="lucide:log-in" class="w-8 h-8 text-primary-600" />
            </div>
            <h1 class="text-2xl font-bold text-gray-900 mb-2">Bem-vindo de Volta!</h1>
            <p class="text-gray-600">Faça login para acessar sua conta</p>
          </div>

          <!-- Aviso App -->
          <div class="bg-blue-50 border border-blue-200 rounded-xl p-4 mb-6">
            <div class="flex items-start gap-3">
              <Icon name="lucide:smartphone" class="w-5 h-5 text-blue-600 flex-shrink-0 mt-0.5" />
              <div>
                <p class="text-sm text-blue-800 font-medium">Acesse pelo App</p>
                <p class="text-sm text-blue-700">
                  O login completo está disponível apenas no aplicativo. Baixe agora para acessar todas as funcionalidades!
                </p>
              </div>
            </div>
          </div>

          <!-- Download App -->
          <div class="bg-gradient-to-br from-primary-500 to-primary-600 rounded-xl p-6 text-white mb-6">
            <div class="flex items-center justify-center gap-2 mb-4">
              <Icon name="lucide:download" class="w-5 h-5" />
              <p class="font-semibold">Baixe o App</p>
            </div>
            <div class="flex flex-col gap-3">
              <a href="#" class="flex items-center gap-3 bg-white/10 hover:bg-white/20 transition-colors rounded-xl px-4 py-3">
                <Icon name="logos:apple" class="w-8 h-8" />
                <div>
                  <div class="text-xs text-white/70">Download on the</div>
                  <div class="font-semibold">App Store</div>
                </div>
              </a>
              <a href="#" class="flex items-center gap-3 bg-white/10 hover:bg-white/20 transition-colors rounded-xl px-4 py-3">
                <Icon name="logos:google-play-icon" class="w-8 h-8" />
                <div>
                  <div class="text-xs text-white/70">GET IT ON</div>
                  <div class="font-semibold">Google Play</div>
                </div>
              </a>
            </div>
          </div>

          <!-- Links -->
          <div class="text-center space-y-4">
            <p class="text-gray-600">
              Não tem conta ainda?
            </p>
            <div class="flex flex-col sm:flex-row gap-3">
              <NuxtLink 
                to="/cadastro/personal"
                class="flex-1 inline-flex items-center justify-center gap-2 px-4 py-3 border-2 border-primary-500 text-primary-600 font-semibold rounded-lg hover:bg-primary-50 transition-colors"
              >
                <Icon name="lucide:briefcase" class="w-4 h-4" />
                Sou Personal
              </NuxtLink>
              <NuxtLink 
                to="/cadastro/aluno"
                class="flex-1 inline-flex items-center justify-center gap-2 px-4 py-3 border-2 border-accent-500 text-accent-600 font-semibold rounded-lg hover:bg-accent-50 transition-colors"
              >
                <Icon name="lucide:user" class="w-4 h-4" />
                Sou Aluno
              </NuxtLink>
            </div>
          </div>
        </div>

        <!-- Info Extra -->
        <div class="mt-8 text-center text-sm text-gray-500">
          <p>
            Ao usar o Academia na Mão, você concorda com nossos 
            <a href="#" class="text-primary-600 hover:underline">Termos de Uso</a> 
            e 
            <a href="#" class="text-primary-600 hover:underline">Política de Privacidade</a>.
          </p>
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
  title: 'Login - Academia na Mão'
})
</script>
