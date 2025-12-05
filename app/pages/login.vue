<template>
  <div class="min-h-screen bg-gradient-to-br from-gray-50 via-white to-primary-50 relative overflow-hidden">
    <!-- Animated Background -->
    <div class="absolute inset-0 -z-10">
      <div class="absolute top-20 right-20 w-[500px] h-[500px] bg-primary-400/10 rounded-full blur-3xl animate-float" style="animation-duration: 8s;" />
      <div class="absolute bottom-20 left-20 w-[600px] h-[600px] bg-accent-400/10 rounded-full blur-3xl animate-float" style="animation-duration: 10s; animation-delay: 1s;" />
      <div class="absolute inset-0 bg-[linear-gradient(to_right,#8080800a_1px,transparent_1px),linear-gradient(to_bottom,#8080800a_1px,transparent_1px)] bg-[size:4rem_4rem] [mask-image:radial-gradient(ellipse_80%_60%_at_50%_50%,#000_60%,transparent_100%)]" />
    </div>

    <!-- Header -->
    <TheHeader />

    <div class="pt-32 pb-20">
      <div class="max-w-md mx-auto px-6">
        <!-- Card Login -->
        <div class="bg-white rounded-3xl shadow-2xl border border-gray-100 p-10 animate-fade-in">
          <div class="text-center mb-10">
            <div class="relative inline-flex mb-6">
              <div class="absolute inset-0 bg-gradient-to-br from-primary-500 to-purple-500 rounded-2xl blur-xl opacity-30 animate-pulse" />
              <div class="relative inline-flex items-center justify-center w-20 h-20 bg-gradient-to-br from-primary-500 to-purple-600 rounded-2xl shadow-lg">
                <Icon name="lucide:log-in" class="w-10 h-10 text-white" />
              </div>
            </div>
            <h1 class="text-4xl font-black text-gray-900 mb-3">Bem-vindo de Volta!</h1>
            <p class="text-lg text-gray-600">Acesse sua conta pelo aplicativo</p>
          </div>

          <!-- Aviso App -->
          <div class="bg-gradient-to-br from-blue-50 to-indigo-50 border-2 border-blue-200 rounded-2xl p-6 mb-8">
            <div class="flex items-start gap-4">
              <div class="w-12 h-12 bg-blue-500 rounded-xl flex items-center justify-center flex-shrink-0 shadow-lg">
                <Icon name="lucide:smartphone" class="w-6 h-6 text-white" />
              </div>
              <div>
                <p class="text-base font-bold text-blue-900 mb-2">📱 Acesse pelo App</p>
                <p class="text-sm text-blue-800 leading-relaxed">
                  O login completo está disponível <strong>apenas no aplicativo</strong>. Baixe agora para acessar todas as funcionalidades, treinos e acompanhamento!
                </p>
              </div>
            </div>
          </div>

          <!-- Download App -->
          <div class="relative bg-gradient-to-br from-primary-600 via-purple-600 to-primary-700 rounded-2xl p-8 text-white mb-8 overflow-hidden shadow-2xl">
            <div class="absolute inset-0 bg-[linear-gradient(to_right,#ffffff0a_1px,transparent_1px),linear-gradient(to_bottom,#ffffff0a_1px,transparent_1px)] bg-[size:2rem_2rem]" />
            <div class="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full blur-2xl" />
            
            <div class="relative z-10">
              <div class="flex items-center justify-center gap-2 mb-6">
                <Icon name="lucide:download" class="w-6 h-6" />
                <p class="text-xl font-black">Baixe o App Agora</p>
              </div>
              <div class="grid grid-cols-2 gap-4">
                <a href="#" class="group flex flex-col items-center gap-2 bg-white/15 backdrop-blur-sm hover:bg-white/25 transition-all duration-300 rounded-xl p-4 border border-white/20 hover:scale-105">
                  <Icon name="logos:apple" class="w-12 h-12" />
                  <div class="text-center">
                    <div class="text-xs text-white/80">Disponível na</div>
                    <div class="font-bold">App Store</div>
                  </div>
                </a>
                <a href="#" class="group flex flex-col items-center gap-2 bg-white/15 backdrop-blur-sm hover:bg-white/25 transition-all duration-300 rounded-xl p-4 border border-white/20 hover:scale-105">
                  <Icon name="logos:google-play-icon" class="w-12 h-12" />
                  <div class="text-center">
                    <div class="text-xs text-white/80">Disponível no</div>
                    <div class="font-bold">Google Play</div>
                  </div>
                </a>
              </div>
            </div>
          </div>

          <!-- Divider -->
          <div class="relative mb-8">
            <div class="absolute inset-0 flex items-center">
              <div class="w-full border-t-2 border-gray-200"></div>
            </div>
            <div class="relative flex justify-center">
              <span class="bg-white px-4 text-sm font-semibold text-gray-500">OU</span>
            </div>
          </div>

          <!-- Links -->
          <div class="text-center space-y-5">
            <p class="text-lg font-semibold text-gray-700">
              Ainda não tem conta?
            </p>
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <NuxtLink 
                to="/cadastro"
                class="group relative inline-flex items-center justify-center gap-2 px-6 py-4 bg-gradient-to-r from-primary-600 to-primary-700 text-white font-bold rounded-xl hover:shadow-xl hover:scale-105 transition-all duration-300 overflow-hidden"
              >
                <div class="absolute inset-0 bg-gradient-to-r from-primary-700 to-primary-800 opacity-0 group-hover:opacity-100 transition-opacity" />
                <Icon name="lucide:briefcase" class="w-5 h-5 relative z-10" />
                <span class="relative z-10">Sou Personal</span>
              </NuxtLink>
              <NuxtLink 
                to="/cadastro/aluno"
                class="group inline-flex items-center justify-center gap-2 px-6 py-4 bg-white border-2 border-accent-500 text-accent-600 font-bold rounded-xl hover:bg-accent-50 hover:scale-105 transition-all duration-300"
              >
                <Icon name="lucide:dumbbell" class="w-5 h-5" />
                <span>Sou Aluno</span>
              </NuxtLink>
            </div>
          </div>
        </div>

        <!-- Features -->
        <div class="mt-10 grid grid-cols-3 gap-4 animate-fade-in" style="animation-delay: 0.2s;">
          <div class="text-center">
            <div class="w-12 h-12 bg-primary-100 rounded-xl flex items-center justify-center mx-auto mb-2">
              <Icon name="lucide:shield-check" class="w-6 h-6 text-primary-600" />
            </div>
            <p class="text-xs font-medium text-gray-600">100% Seguro</p>
          </div>
          <div class="text-center">
            <div class="w-12 h-12 bg-accent-100 rounded-xl flex items-center justify-center mx-auto mb-2">
              <Icon name="lucide:zap" class="w-6 h-6 text-accent-600" />
            </div>
            <p class="text-xs font-medium text-gray-600">Setup em 2min</p>
          </div>
          <div class="text-center">
            <div class="w-12 h-12 bg-purple-100 rounded-xl flex items-center justify-center mx-auto mb-2">
              <Icon name="lucide:star" class="w-6 h-6 text-purple-600" />
            </div>
            <p class="text-xs font-medium text-gray-600">Nota 5.0</p>
          </div>
        </div>

        <!-- Info Extra -->
        <div class="mt-8 text-center text-sm text-gray-500 animate-fade-in" style="animation-delay: 0.3s;">
          <p>
            Ao usar o Academia na Mão, você concorda com nossos 
            <a href="#" class="text-primary-600 hover:underline font-medium">Termos de Uso</a> 
            e 
            <a href="#" class="text-primary-600 hover:underline font-medium">Política de Privacidade</a>.
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
  title: 'Login - Academia na Mão',
  meta: [
    { name: 'description', content: 'Faça login no Academia na Mão pelo aplicativo e acesse todos os seus treinos personalizados.' }
  ]
})
</script>
