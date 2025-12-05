<template>
  <div class="min-h-screen bg-gray-50">
    <!-- Header -->
    <TheHeader />

    <!-- Hero Section -->
    <section class="pt-32 pb-16 bg-gradient-to-br from-primary-500 to-primary-600">
      <div class="max-w-6xl mx-auto px-6 sm:px-8 text-center">
        <div class="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-white/20 text-white mb-6">
          <Icon name="lucide:sparkles" class="w-4 h-4" />
          <span class="text-sm font-medium">Tudo em um só lugar</span>
        </div>
        <h1 class="text-4xl md:text-5xl font-bold text-white mb-6">
          Explore Todos os Recursos
        </h1>
        <p class="text-xl text-white/90 max-w-2xl mx-auto mb-8">
          Descubra como o Academia na Mão transforma a experiência de treino 
          para Personal Trainers e Alunos
        </p>
        
        <!-- Toggle Personal / Aluno -->
        <div class="inline-flex bg-white/20 rounded-full p-1">
          <button 
            @click="activeTab = 'all'"
            class="px-6 py-2 rounded-full text-sm font-medium transition-all"
            :class="activeTab === 'all' ? 'bg-white text-primary-600' : 'text-white hover:bg-white/10'"
          >
            Todos
          </button>
          <button 
            @click="activeTab = 'personal'"
            class="px-6 py-2 rounded-full text-sm font-medium transition-all"
            :class="activeTab === 'personal' ? 'bg-white text-primary-600' : 'text-white hover:bg-white/10'"
          >
            <Icon name="lucide:briefcase" class="w-4 h-4 inline mr-1" />
            Personal
          </button>
          <button 
            @click="activeTab = 'aluno'"
            class="px-6 py-2 rounded-full text-sm font-medium transition-all"
            :class="activeTab === 'aluno' ? 'bg-white text-primary-600' : 'text-white hover:bg-white/10'"
          >
            <Icon name="lucide:user" class="w-4 h-4 inline mr-1" />
            Aluno
          </button>
        </div>
      </div>
    </section>

    <!-- Recursos Content -->
    <section class="py-20">
      <div class="max-w-6xl mx-auto px-6 sm:px-8">
        
        <!-- SEÇÃO PERSONAL TRAINER -->
        <div v-if="activeTab === 'all' || activeTab === 'personal'" class="mb-20">
          <div class="flex items-center gap-4 mb-10">
            <div class="w-14 h-14 rounded-2xl bg-primary-100 flex items-center justify-center">
              <Icon name="lucide:briefcase" class="w-7 h-7 text-primary-600" />
            </div>
            <div>
              <h2 class="text-3xl font-bold text-gray-900">Para Personal Trainers</h2>
              <p class="text-gray-600">Ferramentas profissionais para gerenciar seu negócio</p>
            </div>
          </div>

          <!-- Grid de Recursos Personal -->
          <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
            
            <!-- Dashboard Personal -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-primary-200">
              <div class="w-12 h-12 rounded-xl bg-primary-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:layout-dashboard" class="w-6 h-6 text-primary-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Dashboard Completo</h3>
              <p class="text-gray-600 text-sm mb-4">Visão geral de todos os seus alunos, treinos ativos e métricas de desempenho em tempo real.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Total de alunos ativos
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Taxa de adesão aos treinos
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Alunos que treinaram hoje
                </li>
              </ul>
            </div>

            <!-- Gestão de Alunos -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-primary-200">
              <div class="w-12 h-12 rounded-xl bg-blue-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:users" class="w-6 h-6 text-blue-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Gestão de Alunos</h3>
              <p class="text-gray-600 text-sm mb-4">Gerencie sua carteira de alunos com facilidade. Veja perfis, histórico e progresso individual.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Perfil completo do aluno
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Histórico de treinos
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Convite por link/código
                </li>
              </ul>
            </div>

            <!-- Criação de Treinos -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-primary-200">
              <div class="w-12 h-12 rounded-xl bg-purple-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:clipboard-list" class="w-6 h-6 text-purple-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Criação de Treinos</h3>
              <p class="text-gray-600 text-sm mb-4">Monte treinos personalizados com nossa biblioteca de exercícios ou crie os seus próprios.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Biblioteca de exercícios
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Séries, reps e descanso
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Vídeos demonstrativos
                </li>
              </ul>
            </div>

            <!-- Protocolos de Treino -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-primary-200">
              <div class="w-12 h-12 rounded-xl bg-orange-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:folder" class="w-6 h-6 text-orange-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Protocolos de Treino</h3>
              <p class="text-gray-600 text-sm mb-4">Crie protocolos reutilizáveis e aplique em múltiplos alunos com um clique.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Protocolos salvos
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Aplicar em massa
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Duplicar e editar
                </li>
              </ul>
            </div>

            <!-- Anamnese Digital -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-primary-200">
              <div class="w-12 h-12 rounded-xl bg-pink-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:file-text" class="w-6 h-6 text-pink-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Anamnese Digital</h3>
              <p class="text-gray-600 text-sm mb-4">Formulário completo de avaliação física e histórico de saúde do aluno.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Histórico médico
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Objetivos do aluno
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Restrições e lesões
                </li>
              </ul>
            </div>

            <!-- Acompanhamento de Evolução -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-primary-200">
              <div class="w-12 h-12 rounded-xl bg-teal-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:trending-up" class="w-6 h-6 text-teal-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Acompanhar Evolução</h3>
              <p class="text-gray-600 text-sm mb-4">Veja o progresso de cada aluno com gráficos e métricas detalhadas.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Gráficos de evolução
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Comparativo de cargas
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Frequência semanal
                </li>
              </ul>
            </div>

            <!-- Ranking dos Alunos -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-primary-200">
              <div class="w-12 h-12 rounded-xl bg-yellow-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:trophy" class="w-6 h-6 text-yellow-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Ranking de Alunos</h3>
              <p class="text-gray-600 text-sm mb-4">Gamificação para engajar seus alunos com ranking e competição saudável.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Ranking semanal/mensal
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Sistema de XP
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Motivação entre alunos
                </li>
              </ul>
            </div>

            <!-- Notificações -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-primary-200">
              <div class="w-12 h-12 rounded-xl bg-red-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:bell" class="w-6 h-6 text-red-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Notificações</h3>
              <p class="text-gray-600 text-sm mb-4">Receba alertas sobre atividades dos alunos e solicitações de vínculo.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Treino concluído
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Novo aluno vinculado
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Anamnese respondida
                </li>
              </ul>
            </div>

            <!-- Upload de Vídeos -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-primary-200">
              <div class="w-12 h-12 rounded-xl bg-indigo-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:video" class="w-6 h-6 text-indigo-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Vídeos de Exercícios</h3>
              <p class="text-gray-600 text-sm mb-4">Faça upload dos seus próprios vídeos demonstrativos para cada exercício.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Upload personalizado
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Thumbnails automáticos
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
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
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-accent-200">
              <div class="w-12 h-12 rounded-xl bg-accent-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:home" class="w-6 h-6 text-accent-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Dashboard do Aluno</h3>
              <p class="text-gray-600 text-sm mb-4">Veja seu treino do dia, progresso e conquistas em um painel intuitivo.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Treino do dia em destaque
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Série de treinos (streak)
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  XP e conquistas
                </li>
              </ul>
            </div>

            <!-- Meus Treinos -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-accent-200">
              <div class="w-12 h-12 rounded-xl bg-blue-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:dumbbell" class="w-6 h-6 text-blue-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Meus Treinos</h3>
              <p class="text-gray-600 text-sm mb-4">Acesse todos os seus treinos organizados por grupo muscular.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Treinos por dia da semana
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Grupos musculares
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Marcar como concluído
                </li>
              </ul>
            </div>

            <!-- Execução de Exercícios -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-accent-200">
              <div class="w-12 h-12 rounded-xl bg-purple-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:play-circle" class="w-6 h-6 text-purple-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Execução Guiada</h3>
              <p class="text-gray-600 text-sm mb-4">Vídeos demonstrativos e instruções detalhadas para cada exercício.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Vídeos do personal
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Séries e repetições
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Timer de descanso
                </li>
              </ul>
            </div>

            <!-- Modo Corrida -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-accent-200 relative overflow-hidden">
              <div class="absolute top-3 right-3 bg-accent-500 text-white text-xs font-bold px-2 py-1 rounded-full">
                NOVO
              </div>
              <div class="w-12 h-12 rounded-xl bg-green-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:map-pin" class="w-6 h-6 text-green-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Modo Corrida</h3>
              <p class="text-gray-600 text-sm mb-4">Acompanhe suas corridas em tempo real com GPS e métricas completas.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Rastreamento GPS
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Pace em tempo real
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Calorias queimadas
                </li>
              </ul>
            </div>

            <!-- Corrida Indoor/Esteira -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-accent-200">
              <div class="w-12 h-12 rounded-xl bg-orange-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:activity" class="w-6 h-6 text-orange-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Corrida Indoor</h3>
              <p class="text-gray-600 text-sm mb-4">Modo especial para esteira e corridas indoor sem GPS.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Modo esteira
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Entrada manual de distância
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Cronômetro preciso
                </li>
              </ul>
            </div>

            <!-- Treino Intervalado -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-accent-200">
              <div class="w-12 h-12 rounded-xl bg-red-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:timer" class="w-6 h-6 text-red-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Treino Intervalado</h3>
              <p class="text-gray-600 text-sm mb-4">HIIT e treinos intervalados com timer automático de esforço e descanso.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Protocolos prontos
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Timer automático
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Alertas sonoros
                </li>
              </ul>
            </div>

            <!-- Histórico de Corridas -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-accent-200">
              <div class="w-12 h-12 rounded-xl bg-cyan-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:history" class="w-6 h-6 text-cyan-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Histórico de Corridas</h3>
              <p class="text-gray-600 text-sm mb-4">Veja todas as suas corridas com detalhes e evolução do desempenho.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Todas as corridas
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Mapa do percurso
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Estatísticas detalhadas
                </li>
              </ul>
            </div>

            <!-- Metas e Conquistas -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-accent-200">
              <div class="w-12 h-12 rounded-xl bg-yellow-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:target" class="w-6 h-6 text-yellow-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Metas e Conquistas</h3>
              <p class="text-gray-600 text-sm mb-4">Defina metas, desbloqueie conquistas e colecione medalhas.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Metas personalizadas
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Medalhas e badges
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Desafios semanais
                </li>
              </ul>
            </div>

            <!-- Ranking -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-accent-200">
              <div class="w-12 h-12 rounded-xl bg-amber-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:trophy" class="w-6 h-6 text-amber-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Ranking</h3>
              <p class="text-gray-600 text-sm mb-4">Compare seu desempenho com outros alunos e suba no ranking.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Ranking semanal
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Ranking mensal
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Posição entre alunos
                </li>
              </ul>
            </div>

            <!-- Evolução Pessoal -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-accent-200">
              <div class="w-12 h-12 rounded-xl bg-emerald-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:line-chart" class="w-6 h-6 text-emerald-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Evolução Pessoal</h3>
              <p class="text-gray-600 text-sm mb-4">Acompanhe sua evolução com gráficos e estatísticas detalhadas.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Gráficos de progresso
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Histórico de cargas
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Frequência de treino
                </li>
              </ul>
            </div>

            <!-- Vinculo com Personal -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-accent-200">
              <div class="w-12 h-12 rounded-xl bg-pink-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:link" class="w-6 h-6 text-pink-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Vínculo com Personal</h3>
              <p class="text-gray-600 text-sm mb-4">Conecte-se ao seu personal trainer por link ou código.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Código de convite
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Link de vínculo
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Troca de personal
                </li>
              </ul>
            </div>

            <!-- Perfil e Configurações -->
            <div class="group bg-white rounded-2xl p-6 shadow-soft hover:shadow-soft-lg transition-all border border-gray-100 hover:border-accent-200">
              <div class="w-12 h-12 rounded-xl bg-slate-100 flex items-center justify-center mb-4 group-hover:scale-110 transition-transform">
                <Icon name="lucide:settings" class="w-6 h-6 text-slate-600" />
              </div>
              <h3 class="text-lg font-bold text-gray-900 mb-2">Perfil e Configurações</h3>
              <p class="text-gray-600 text-sm mb-4">Personalize seu perfil, foto e preferências de notificação.</p>
              <ul class="space-y-2">
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Foto de perfil
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
                  Dados pessoais
                </li>
                <li class="flex items-center gap-2 text-sm text-gray-600">
                  <Icon name="lucide:check" class="w-4 h-4 text-accent-500" />
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
