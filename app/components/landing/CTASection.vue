<template>
  <section class="py-24 bg-gray-900 text-white relative overflow-hidden">
    <!-- Background -->
    <div class="absolute inset-0 -z-10">
      <div class="absolute top-0 left-1/4 w-[500px] h-[500px] bg-primary-500/20 rounded-full blur-3xl" />
      <div class="absolute bottom-0 right-1/4 w-[400px] h-[400px] bg-accent-500/20 rounded-full blur-3xl" />
    </div>

    <div class="container-section">
      <div class="max-w-3xl mx-auto text-center">
        <!-- Icon -->
        <div class="w-20 h-20 rounded-2xl bg-gradient-to-br from-primary-500 to-accent-500 flex items-center justify-center mx-auto mb-8">
          <Icon name="lucide:rocket" class="w-10 h-10 text-white" />
        </div>

        <!-- Title -->
        <h2 class="text-3xl md:text-4xl lg:text-5xl font-bold mb-6">
          Pronto para transformar
          <br />
          <span class="text-transparent bg-gradient-to-r from-primary-400 to-accent-400 bg-clip-text">
            seus treinos?
          </span>
        </h2>

        <!-- Subtitle -->
        <p class="text-lg text-gray-300 mb-10 max-w-xl mx-auto">
          Seja você <strong class="text-primary-400">personal trainer</strong> ou 
          <strong class="text-accent-400">aluno</strong>, comece agora e alcance resultados incríveis.
        </p>

        <!-- CTA Buttons -->
        <div class="flex flex-col sm:flex-row gap-4 justify-center">
          <NuxtLink to="/cadastro" class="btn btn-primary text-lg px-8 py-4">
            Sou Personal Trainer
            <Icon name="lucide:arrow-right" class="w-5 h-5" />
          </NuxtLink>
          <NuxtLink to="/cadastro-aluno" class="btn bg-white/10 text-white hover:bg-white/20 text-lg px-8 py-4">
            <Icon name="lucide:user" class="w-5 h-5" />
            Sou Aluno
          </NuxtLink>
        </div>
      </div>
    </div>
  </section>
</template>
