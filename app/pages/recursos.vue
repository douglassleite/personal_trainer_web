<template>
  <div class="min-h-screen bg-gradient-to-br from-gray-50 via-white to-primary-50 dark:from-gray-900 dark:via-gray-900 dark:to-gray-800 relative overflow-hidden transition-colors duration-300">
    <!-- Animated Background -->
    <div class="absolute inset-0 -z-10">
      <div class="absolute top-40 right-20 w-[600px] h-[600px] bg-primary-400/10 dark:bg-primary-400/5 rounded-full blur-3xl animate-float" style="animation-duration: 10s;" />
      <div class="absolute bottom-40 left-20 w-[700px] h-[700px] bg-purple-400/10 dark:bg-purple-400/5 rounded-full blur-3xl animate-float" style="animation-duration: 12s; animation-delay: 1s;" />
      <div class="absolute inset-0 bg-[linear-gradient(to_right,#8080800a_1px,transparent_1px),linear-gradient(to_bottom,#8080800a_1px,transparent_1px)] dark:bg-[linear-gradient(to_right,#ffffff08_1px,transparent_1px),linear-gradient(to_bottom,#ffffff08_1px,transparent_1px)] bg-[size:4rem_4rem] [mask-image:radial-gradient(ellipse_80%_60%_at_50%_50%,#000_60%,transparent_100%)]" />
    </div>

    <!-- Header -->
    <TheHeader />

    <!-- Hero Section -->
    <section class="relative pt-32 pb-20 overflow-hidden">
      <div class="absolute inset-0 bg-gradient-to-br from-primary-600 via-purple-600 to-primary-700 -z-10">
        <div class="absolute inset-0 bg-[linear-gradient(to_right,#ffffff0a_1px,transparent_1px),linear-gradient(to_bottom,#ffffff0a_1px,transparent_1px)] bg-[size:3rem_3rem]" />
        <div class="absolute top-0 right-0 w-96 h-96 bg-white/10 rounded-full blur-3xl" />
        <div class="absolute bottom-0 left-0 w-[500px] h-[500px] bg-white/10 rounded-full blur-3xl" />
      </div>

      <div class="max-w-7xl mx-auto px-6 sm:px-8 text-center relative z-10">
        <div class="inline-flex items-center gap-2 px-5 py-2.5 rounded-full bg-white/20 backdrop-blur-sm border border-white/30 text-white mb-8 animate-fade-in">
          <Icon name="lucide:sparkles" class="w-4 h-4" />
          <span class="text-sm font-bold">Tudo em um só lugar</span>
        </div>
        <h1 class="text-5xl md:text-6xl lg:text-7xl font-black text-white mb-6 leading-tight animate-slide-up">
          Explore Todos os
          <br />
          <span class="text-transparent bg-clip-text bg-gradient-to-r from-yellow-300 via-orange-300 to-yellow-300 bg-[length:200%_200%] animate-gradient">
            Recursos
          </span>
        </h1>
        <p class="text-xl md:text-2xl text-white/90 max-w-3xl mx-auto mb-10 leading-relaxed animate-slide-up" style="animation-delay: 0.1s;">
          Descubra como o Academia na Mão transforma a experiência de treino 
          para <strong>Personal Trainers</strong> e <strong>Alunos</strong>
        </p>
        
        <!-- Toggle Personal / Aluno -->
        <div class="inline-flex bg-primary-100/80 dark:bg-white/20 backdrop-blur-md rounded-2xl p-2 shadow-2xl border border-primary-200/50 dark:border-white/30 animate-slide-up" style="animation-delay: 0.2s;">
          <button 
            @click="activeTab = 'all'"
            class="px-8 py-3.5 rounded-xl text-sm font-bold transition-all"
            :class="activeTab === 'all' ? 'bg-white text-primary-600 shadow-lg scale-105' : 'text-gray-700 dark:text-white hover:bg-white/50 dark:hover:bg-white/20'"
          >
            Todos
          </button>
          <button 
            @click="activeTab = 'personal'"
            class="px-8 py-3.5 rounded-xl text-sm font-bold transition-all"
            :class="activeTab === 'personal' ? 'bg-white text-primary-600 shadow-lg scale-105' : 'text-gray-700 dark:text-white hover:bg-white/50 dark:hover:bg-white/20'"
          >
            <Icon name="lucide:briefcase" class="w-4 h-4 inline mr-2" />
            Personal
          </button>
          <button 
            @click="activeTab = 'aluno'"
            class="px-8 py-3.5 rounded-xl text-sm font-bold transition-all"
            :class="activeTab === 'aluno' ? 'bg-white text-primary-600 shadow-lg scale-105' : 'text-gray-700 dark:text-white hover:bg-white/50 dark:hover:bg-white/20'"
          >
            <Icon name="lucide:dumbbell" class="w-4 h-4 inline mr-2" />
            Aluno
          </button>
        </div>
      </div>
    </section>

    <!-- Recursos Content -->
    <section class="py-24">
      <div class="max-w-7xl mx-auto px-6 sm:px-8">
        
        <!-- SEÇÃO PERSONAL TRAINER -->
        <div v-if="activeTab === 'all' || activeTab === 'personal'" class="mb-24 animate-fade-in">
          <div class="flex items-center gap-6 mb-12">
            <div class="w-20 h-20 rounded-3xl bg-gradient-to-br from-primary-500 to-primary-700 flex items-center justify-center shadow-2xl">
              <Icon name="lucide:briefcase" class="w-10 h-10 text-white" />
            </div>
            <div>
              <h2 class="text-4xl md:text-5xl font-black text-gray-900 mb-2">Para Personal Trainers</h2>
              <p class="text-xl text-gray-600">Ferramentas profissionais para gerenciar seu negócio</p>
            </div>
          </div>

          <!-- Grid de Recursos Personal -->
          <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
            
            <!-- Dashboard Personal -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl transition-all duration-500 border border-gray-100 hover:border-primary-300 hover:scale-105 hover:-translate-y-2">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-primary-400 to-primary-600 flex items-center justify-center mb-6 group-hover:scale-110 group-hover:rotate-6 transition-all duration-500 shadow-lg">
                <Icon name="lucide:layout-dashboard" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-primary-600 transition-colors">Dashboard Completo</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Visão geral de todos os seus alunos, treinos ativos e métricas de desempenho em tempo real.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  <span class="text-sm font-medium">Total de alunos ativos</span>
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  <span class="text-sm font-medium">Taxa de adesão aos treinos</span>
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  <span class="text-sm font-medium">Alunos que treinaram hoje</span>
                </li>
              </ul>
            </div>

            <!-- Gestão de Alunos -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl transition-all duration-500 border border-gray-100 hover:border-blue-300 hover:scale-105 hover:-translate-y-2">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-blue-400 to-blue-600 flex items-center justify-center mb-6 group-hover:scale-110 group-hover:rotate-6 transition-all duration-500 shadow-lg">
                <Icon name="lucide:users" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-blue-600 transition-colors">Gestão de Alunos</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Gerencie sua carteira de alunos com facilidade. Veja perfis, histórico e progresso individual.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Perfil completo do aluno
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Histórico de treinos
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Convite por link/código
                </li>
              </ul>
            </div>

            <!-- Criação de Treinos -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-purple-500 to-purple-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:clipboard-list" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-purple-600 transition-colors">Criação de Treinos</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Monte treinos personalizados com nossa biblioteca de exercícios ou crie os seus próprios.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Biblioteca de exercícios
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Séries, reps e descanso
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Vídeos demonstrativos
                </li>
              </ul>
            </div>

            <!-- Protocolos de Treino -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-orange-500 to-orange-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:folder" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-orange-600 transition-colors">Protocolos de Treino</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Crie protocolos reutilizáveis e aplique em múltiplos alunos com um clique.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Protocolos salvos
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Aplicar em massa
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Duplicar e editar
                </li>
              </ul>
            </div>

            <!-- Anamnese Digital -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-pink-500 to-pink-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:file-text" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-pink-600 transition-colors">Anamnese Digital</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Formulário completo de avaliação física e histórico de saúde do aluno.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Histórico médico
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Objetivos do aluno
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Restrições e lesões
                </li>
              </ul>
            </div>

            <!-- Acompanhamento de Evolução -->\n            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-teal-500 to-teal-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:trending-up" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-teal-600 transition-colors">Acompanhar Evolução</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Veja o progresso de cada aluno com gráficos e métricas detalhadas.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Gráficos de evolução
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Comparativo de cargas
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Frequência semanal
                </li>
              </ul>
            </div>

            <!-- Ranking dos Alunos -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-yellow-500 to-yellow-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:trophy" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-yellow-600 transition-colors">Ranking de Alunos</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Gamificação para engajar seus alunos com ranking e competição saudável.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Ranking semanal/mensal
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Sistema de XP
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Motivação entre alunos
                </li>
              </ul>
            </div>

            <!-- Notificações -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-red-500 to-red-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:bell" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-red-600 transition-colors">Notificações</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Receba alertas sobre atividades dos alunos e solicitações de vínculo.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Treino concluído
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Novo aluno vinculado
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Anamnese respondida
                </li>
              </ul>
            </div>

            <!-- Upload de Vídeos -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-indigo-500 to-indigo-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:video" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-indigo-600 transition-colors">Vídeos de Exercícios</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Faça upload dos seus próprios vídeos demonstrativos para cada exercício.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Upload personalizado
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Thumbnails automáticos
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                    <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Biblioteca privada
                </li>
              </ul>
            </div>

          </div>
        </div>

        <!-- Divisor -->
        <div v-if="activeTab === 'all'" class="flex items-center gap-4 my-12">
          <div class="flex-1 h-px bg-gradient-to-r from-transparent via-gray-300 to-transparent"></div>
          <Icon name="lucide:arrow-down" class="w-6 h-6 text-gray-400" />
          <div class="flex-1 h-px bg-gradient-to-r from-transparent via-gray-300 to-transparent"></div>
        </div>

        <!-- SEÇÃO ALUNO -->
        <div v-if="activeTab === 'all' || activeTab === 'aluno'">
          <div class="flex items-center gap-4 mb-10">
            <div class="w-14 h-14 rounded-2xl bg-accent-100 flex items-center justify-center">
              <Icon name="lucide:user" class="w-7 h-7 text-accent-600" />
            </div>
            <div>
              <h2 class="text-3xl font-bold text-gray-900">Para Alunos</h2>
              <p class="text-gray-600">Tudo que você precisa para evoluir nos treinos</p>
            </div>
          </div>

          <!-- Grid de Recursos Aluno -->
          <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
            
            <!-- Dashboard Aluno -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-accent-500 to-accent-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:home" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-accent-600 transition-colors">Dashboard do Aluno</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Veja seu treino do dia, progresso e conquistas em um painel intuitivo.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Treino do dia em destaque
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Série de treinos (streak)
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  XP e conquistas
                </li>
              </ul>
            </div>

            <!-- Meus Treinos -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-blue-500 to-blue-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:dumbbell" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-blue-600 transition-colors">Meus Treinos</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Acesse todos os seus treinos organizados por grupo muscular.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Treinos por dia da semana
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Grupos musculares
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Marcar como concluído
                </li>
              </ul>
            </div>

            <!-- Execução de Exercícios -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-purple-500 to-purple-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:play-circle" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-purple-600 transition-colors">Execução Guiada</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Vídeos demonstrativos e instruções detalhadas para cada exercício.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Vídeos do personal
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Séries e repetições
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Timer de descanso
                </li>
              </ul>
            </div>

            <!-- Modo Corrida -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300 relative overflow-hidden">
              <div class="absolute top-3 right-3 bg-accent-500 text-white text-xs font-bold px-2 py-1 rounded-full">
                NOVO
              </div>
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-green-500 to-green-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:map-pin" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-green-600 transition-colors">Modo Corrida</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Acompanhe suas corridas em tempo real com GPS e métricas completas.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Rastreamento GPS
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Pace em tempo real
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Calorias queimadas
                </li>
              </ul>
            </div>

            <!-- Corrida Indoor/Esteira -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-orange-500 to-orange-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:activity" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-orange-600 transition-colors">Corrida Indoor</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Modo especial para esteira e corridas indoor sem GPS.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Modo esteira
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Entrada manual de distância
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Cronômetro preciso
                </li>
              </ul>
            </div>

            <!-- Treino Intervalado -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-red-500 to-red-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:timer" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-red-600 transition-colors">Treino Intervalado</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">HIIT e treinos intervalados com timer automático de esforço e descanso.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Protocolos prontos
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Timer automático
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Alertas sonoros
                </li>
              </ul>
            </div>

            <!-- Histórico de Corridas -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-cyan-500 to-cyan-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:history" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-cyan-600 transition-colors">Histórico de Corridas</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Veja todas as suas corridas com detalhes e evolução do desempenho.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Todas as corridas
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Mapa do percurso
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Estatísticas detalhadas
                </li>
              </ul>
            </div>

            <!-- Metas e Conquistas -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-yellow-500 to-yellow-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:target" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-yellow-600 transition-colors">Metas e Conquistas</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Defina metas, desbloqueie conquistas e colecione medalhas.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Metas personalizadas
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Medalhas e badges
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Desafios semanais
                </li>
              </ul>
            </div>

            <!-- Ranking -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-amber-500 to-amber-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:trophy" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-amber-600 transition-colors">Ranking</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Compare seu desempenho com outros alunos e suba no ranking.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Ranking semanal
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Ranking mensal
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Posição entre alunos
                </li>
              </ul>
            </div>

            <!-- Evolução Pessoal -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-emerald-500 to-emerald-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:line-chart" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-emerald-600 transition-colors">Evolução Pessoal</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Acompanhe sua evolução com gráficos e estatísticas detalhadas.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Gráficos de progresso
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Histórico de cargas
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Frequência de treino
                </li>
              </ul>
            </div>

            <!-- Vinculo com Personal -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-pink-500 to-pink-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:link" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-pink-600 transition-colors">Vínculo com Personal</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Conecte-se ao seu personal trainer por link ou código.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Código de convite
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Link de vínculo
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Troca de personal
                </li>
              </ul>
            </div>

            <!-- Perfil e Configurações -->
            <div class="group bg-white rounded-3xl p-8 shadow-xl hover:shadow-2xl hover:scale-105 hover:-translate-y-2 transition-all duration-300">
              <div class="w-16 h-16 rounded-2xl bg-gradient-to-br from-slate-500 to-slate-700 flex items-center justify-center mb-6 shadow-lg group-hover:scale-110 group-hover:rotate-6 transition-all duration-300">
                <Icon name="lucide:settings" class="w-8 h-8 text-white" />
              </div>
              <h3 class="text-2xl font-black text-gray-900 mb-3 group-hover:text-slate-600 transition-colors">Perfil e Configurações</h3>
              <p class="text-gray-600 mb-6 leading-relaxed">Personalize seu perfil, foto e preferências de notificação.</p>
              <ul class="space-y-3">
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Foto de perfil
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Dados pessoais
                </li>
                <li class="flex items-center gap-3 text-gray-700">
                  <div class="w-6 h-6 rounded-lg bg-accent-100 flex items-center justify-center flex-shrink-0">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-600" />
                  </div>
                  Notificações
                </li>
              </ul>
            </div>

          </div>
        </div>

      </div>
    </section>

    <!-- CTA Final -->
    <section class="py-20 bg-gradient-to-r from-primary-500 to-primary-600">
      <div class="max-w-4xl mx-auto px-6 sm:px-8 text-center">
        <h2 class="text-3xl md:text-4xl font-bold text-white mb-6">
          Pronto para transformar seus treinos?
        </h2>
        <p class="text-xl text-white/90 mb-8">
          Junte-se a milhares de personal trainers e alunos que já usam o Academia na Mão
        </p>
        <div class="flex flex-col sm:flex-row gap-4 justify-center">
          <NuxtLink to="/cadastro" class="inline-flex items-center justify-center gap-2 px-8 py-4 bg-white text-primary-600 font-semibold rounded-xl hover:bg-gray-100 transition-all shadow-lg">
            <Icon name="lucide:briefcase" class="w-5 h-5" />
            Sou Personal Trainer
          </NuxtLink>
          <NuxtLink to="/cadastro" class="inline-flex items-center justify-center gap-2 px-8 py-4 bg-white/20 text-white font-semibold rounded-xl hover:bg-white/30 transition-all border border-white/30">
            <Icon name="lucide:user" class="w-5 h-5" />
            Sou Aluno
          </NuxtLink>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <TheFooter />
  </div>
</template>

<script setup lang="ts">
import TheHeader from '~/components/landing/TheHeader.vue'
import TheFooter from '~/components/landing/TheFooter.vue'

const activeTab = ref<'all' | 'personal' | 'aluno'>('all')

useSeoMeta({
  title: 'Recursos - Academia na Mão',
  description: 'Explore todos os recursos do Academia na Mão para Personal Trainers e Alunos. Dashboard, treinos, corrida, ranking e muito mais.',
})
</script>
