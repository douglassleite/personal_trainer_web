<template>
  <section class="relative py-32 bg-gradient-to-b from-gray-50 to-white overflow-hidden">
    <!-- Background Pattern -->
    <div class="absolute inset-0 opacity-30">
      <div class="absolute inset-0" style="background-image: radial-gradient(circle at 1px 1px, rgb(0 0 0 / 0.05) 1px, transparent 0); background-size: 40px 40px;"></div>
    </div>

    <!-- Animated Background Orbs -->
    <div class="absolute top-20 left-10 w-96 h-96 bg-primary-200/20 rounded-full blur-3xl animate-float" style="animation-delay: 0s;"></div>
    <div class="absolute bottom-20 right-10 w-96 h-96 bg-purple-200/20 rounded-full blur-3xl animate-float" style="animation-delay: 2s;"></div>

    <div class="relative max-w-7xl mx-auto px-6 sm:px-8">
      <!-- Header -->
      <div class="text-center mb-20">
        <div class="inline-flex items-center gap-2 px-4 py-2 bg-primary-100 text-primary-700 rounded-full text-sm font-semibold mb-6">
          <Icon name="lucide:sparkles" class="w-4 h-4" />
          Dashboard Intuitivo
        </div>
        <h2 class="text-5xl md:text-6xl font-black text-gray-900 mb-6">
          Tudo que você precisa,
          <span class="bg-gradient-to-r from-primary-600 via-purple-600 to-accent-600 bg-clip-text text-transparent animate-gradient">
            em um só lugar
          </span>
        </h2>
        <p class="text-xl text-gray-600 max-w-3xl mx-auto leading-relaxed">
          Interface moderna e intuitiva que coloca os recursos mais importantes ao seu alcance
        </p>
      </div>

      <!-- Dashboard Preview Tabs -->
      <div class="mb-12">
        <div class="flex flex-wrap justify-center gap-4">
          <button
            v-for="tab in tabs"
            :key="tab.id"
            @click="activeTab = tab.id"
            :class="[
              'px-8 py-4 rounded-2xl font-bold text-lg transition-all duration-300',
              activeTab === tab.id
                ? 'bg-gradient-to-r from-primary-500 to-primary-600 text-white shadow-xl scale-105'
                : 'bg-white text-gray-700 hover:bg-gray-50 shadow-lg hover:shadow-xl hover:scale-105'
            ]"
          >
            <div class="flex items-center gap-3">
              <Icon :name="tab.icon" class="w-6 h-6" />
              <span>{{ tab.label }}</span>
            </div>
          </button>
        </div>
      </div>

      <!-- Dashboard Mockup Container -->
      <div class="relative">
        <!-- Browser Chrome -->
        <div class="bg-white rounded-3xl shadow-2xl overflow-hidden border border-gray-200">
          <!-- Browser Header -->
          <div class="bg-gray-100 px-6 py-4 flex items-center gap-2 border-b border-gray-200">
            <div class="flex gap-2">
              <div class="w-3 h-3 rounded-full bg-red-400"></div>
              <div class="w-3 h-3 rounded-full bg-yellow-400"></div>
              <div class="w-3 h-3 rounded-full bg-green-400"></div>
            </div>
            <div class="flex-1 mx-4">
              <div class="bg-white rounded-lg px-4 py-2 text-sm text-gray-500 flex items-center gap-2">
                <Icon name="lucide:lock" class="w-4 h-4" />
                app.academianamao.com
              </div>
            </div>
            <div class="flex gap-2">
              <Icon name="lucide:menu" class="w-5 h-5 text-gray-400" />
            </div>
          </div>

          <!-- Dashboard Content -->
          <div class="bg-gradient-to-br from-gray-50 to-white p-8 min-h-[600px]">
            <!-- Personal Trainer View -->
            <div v-if="activeTab === 'personal'" class="animate-fade-in">
              <!-- Top Stats -->
              <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
                <div class="bg-white rounded-2xl p-6 shadow-lg hover:shadow-xl transition-shadow border border-gray-100">
                  <div class="flex items-center justify-between mb-4">
                    <div class="w-12 h-12 rounded-xl bg-gradient-to-br from-primary-500 to-primary-600 flex items-center justify-center">
                      <Icon name="lucide:users" class="w-6 h-6 text-white" />
                    </div>
                    <span class="text-green-600 text-sm font-semibold">+12%</span>
                  </div>
                  <div class="text-3xl font-black text-gray-900 mb-1">48</div>
                  <div class="text-sm text-gray-500">Alunos Ativos</div>
                </div>

                <div class="bg-white rounded-2xl p-6 shadow-lg hover:shadow-xl transition-shadow border border-gray-100">
                  <div class="flex items-center justify-between mb-4">
                    <div class="w-12 h-12 rounded-xl bg-gradient-to-br from-accent-500 to-accent-600 flex items-center justify-center">
                      <Icon name="lucide:trending-up" class="w-6 h-6 text-white" />
                    </div>
                    <span class="text-green-600 text-sm font-semibold">+8%</span>
                  </div>
                  <div class="text-3xl font-black text-gray-900 mb-1">156</div>
                  <div class="text-sm text-gray-500">Treinos esta semana</div>
                </div>

                <div class="bg-white rounded-2xl p-6 shadow-lg hover:shadow-xl transition-shadow border border-gray-100">
                  <div class="flex items-center justify-between mb-4">
                    <div class="w-12 h-12 rounded-xl bg-gradient-to-br from-purple-500 to-purple-600 flex items-center justify-center">
                      <Icon name="lucide:target" class="w-6 h-6 text-white" />
                    </div>
                    <span class="text-green-600 text-sm font-semibold">92%</span>
                  </div>
                  <div class="text-3xl font-black text-gray-900 mb-1">88%</div>
                  <div class="text-sm text-gray-500">Taxa de conclusão</div>
                </div>

                <div class="bg-white rounded-2xl p-6 shadow-lg hover:shadow-xl transition-shadow border border-gray-100">
                  <div class="flex items-center justify-between mb-4">
                    <div class="w-12 h-12 rounded-xl bg-gradient-to-br from-orange-500 to-orange-600 flex items-center justify-center">
                      <Icon name="lucide:star" class="w-6 h-6 text-white" />
                    </div>
                    <span class="text-green-600 text-sm font-semibold">4.9</span>
                  </div>
                  <div class="text-3xl font-black text-gray-900 mb-1">4.8</div>
                  <div class="text-sm text-gray-500">Avaliação média</div>
                </div>
              </div>

              <!-- Recent Activity & Quick Actions -->
              <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
                <!-- Recent Activity -->
                <div class="lg:col-span-2 bg-white rounded-2xl p-6 shadow-lg border border-gray-100">
                  <div class="flex items-center justify-between mb-6">
                    <h3 class="text-xl font-black text-gray-900">Atividade Recente</h3>
                    <button class="text-primary-600 hover:text-primary-700 text-sm font-semibold">Ver tudo</button>
                  </div>
                  <div class="space-y-4">
                    <div class="flex items-center gap-4 p-4 bg-gray-50 rounded-xl hover:bg-gray-100 transition-colors">
                      <div class="w-10 h-10 rounded-full bg-gradient-to-br from-blue-400 to-blue-600 flex items-center justify-center text-white font-bold">JM</div>
                      <div class="flex-1">
                        <div class="font-semibold text-gray-900">João Mendes completou treino de Peito</div>
                        <div class="text-sm text-gray-500">Há 5 minutos</div>
                      </div>
                      <div class="text-green-600">
                        <Icon name="lucide:check-circle" class="w-6 h-6" />
                      </div>
                    </div>

                    <div class="flex items-center gap-4 p-4 bg-gray-50 rounded-xl hover:bg-gray-100 transition-colors">
                      <div class="w-10 h-10 rounded-full bg-gradient-to-br from-pink-400 to-pink-600 flex items-center justify-center text-white font-bold">MS</div>
                      <div class="flex-1">
                        <div class="font-semibold text-gray-900">Maria Silva iniciou novo protocolo</div>
                        <div class="text-sm text-gray-500">Há 15 minutos</div>
                      </div>
                      <div class="text-primary-600">
                        <Icon name="lucide:play-circle" class="w-6 h-6" />
                      </div>
                    </div>

                    <div class="flex items-center gap-4 p-4 bg-gray-50 rounded-xl hover:bg-gray-100 transition-colors">
                      <div class="w-10 h-10 rounded-full bg-gradient-to-br from-purple-400 to-purple-600 flex items-center justify-center text-white font-bold">RC</div>
                      <div class="flex-1">
                        <div class="font-semibold text-gray-900">Rafael Costa respondeu anamnese</div>
                        <div class="text-sm text-gray-500">Há 1 hora</div>
                      </div>
                      <div class="text-accent-600">
                        <Icon name="lucide:file-text" class="w-6 h-6" />
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Quick Actions -->
                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-100">
                  <h3 class="text-xl font-black text-gray-900 mb-6">Ações Rápidas</h3>
                  <div class="space-y-3">
                    <button class="w-full flex items-center gap-3 p-4 bg-gradient-to-r from-primary-500 to-primary-600 text-white rounded-xl hover:shadow-lg transition-all hover:scale-105">
                      <Icon name="lucide:plus-circle" class="w-5 h-5" />
                      <span class="font-semibold">Novo Treino</span>
                    </button>
                    <button class="w-full flex items-center gap-3 p-4 bg-gray-50 text-gray-700 rounded-xl hover:bg-gray-100 transition-colors">
                      <Icon name="lucide:user-plus" class="w-5 h-5" />
                      <span class="font-semibold">Adicionar Aluno</span>
                    </button>
                    <button class="w-full flex items-center gap-3 p-4 bg-gray-50 text-gray-700 rounded-xl hover:bg-gray-100 transition-colors">
                      <Icon name="lucide:calendar" class="w-5 h-5" />
                      <span class="font-semibold">Agendar Avaliação</span>
                    </button>
                    <button class="w-full flex items-center gap-3 p-4 bg-gray-50 text-gray-700 rounded-xl hover:bg-gray-100 transition-colors">
                      <Icon name="lucide:message-circle" class="w-5 h-5" />
                      <span class="font-semibold">Mensagens</span>
                    </button>
                  </div>
                </div>
              </div>
            </div>

            <!-- Student View -->
            <div v-if="activeTab === 'aluno'" class="animate-fade-in">
              <!-- Today's Workout Banner -->
              <div class="bg-gradient-to-r from-primary-500 via-purple-500 to-accent-500 rounded-3xl p-8 mb-8 text-white relative overflow-hidden">
                <div class="absolute top-0 right-0 w-64 h-64 bg-white/10 rounded-full blur-3xl"></div>
                <div class="relative z-10">
                  <div class="flex items-center gap-2 mb-4">
                    <Icon name="lucide:calendar" class="w-5 h-5" />
                    <span class="text-sm font-semibold opacity-90">Treino de Hoje</span>
                  </div>
                  <h3 class="text-4xl font-black mb-2">Treino A - Peito e Tríceps</h3>
                  <p class="text-lg opacity-90 mb-6">8 exercícios • 45-60 min • Intermediário</p>
                  <button class="inline-flex items-center gap-2 px-8 py-4 bg-white text-primary-600 rounded-xl font-bold hover:bg-gray-100 transition-all hover:scale-105 shadow-xl">
                    <Icon name="lucide:play" class="w-5 h-5" />
                    Iniciar Treino
                  </button>
                </div>
              </div>

              <!-- Stats Grid -->
              <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-100">
                  <div class="flex items-center gap-4 mb-4">
                    <div class="w-14 h-14 rounded-2xl bg-gradient-to-br from-accent-500 to-accent-600 flex items-center justify-center">
                      <Icon name="lucide:flame" class="w-7 h-7 text-white" />
                    </div>
                    <div>
                      <div class="text-3xl font-black text-gray-900">12</div>
                      <div class="text-sm text-gray-500">Dias de sequência</div>
                    </div>
                  </div>
                  <div class="w-full h-2 bg-gray-200 rounded-full overflow-hidden">
                    <div class="h-full bg-gradient-to-r from-accent-500 to-accent-600" style="width: 80%"></div>
                  </div>
                </div>

                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-100">
                  <div class="flex items-center gap-4 mb-4">
                    <div class="w-14 h-14 rounded-2xl bg-gradient-to-br from-purple-500 to-purple-600 flex items-center justify-center">
                      <Icon name="lucide:zap" class="w-7 h-7 text-white" />
                    </div>
                    <div>
                      <div class="text-3xl font-black text-gray-900">2.450</div>
                      <div class="text-sm text-gray-500">XP Total</div>
                    </div>
                  </div>
                  <div class="flex items-center gap-2 text-sm text-gray-600">
                    <Icon name="lucide:arrow-up" class="w-4 h-4 text-green-600" />
                    <span>+150 esta semana</span>
                  </div>
                </div>

                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-100">
                  <div class="flex items-center gap-4 mb-4">
                    <div class="w-14 h-14 rounded-2xl bg-gradient-to-br from-blue-500 to-blue-600 flex items-center justify-center">
                      <Icon name="lucide:trophy" class="w-7 h-7 text-white" />
                    </div>
                    <div>
                      <div class="text-3xl font-black text-gray-900">#8</div>
                      <div class="text-sm text-gray-500">No ranking</div>
                    </div>
                  </div>
                  <div class="flex items-center gap-2 text-sm text-green-600 font-semibold">
                    <Icon name="lucide:trending-up" class="w-4 h-4" />
                    <span>Subiu 2 posições</span>
                  </div>
                </div>
              </div>

              <!-- Progress & Achievements -->
              <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
                <!-- Weekly Progress -->
                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-100">
                  <h3 class="text-xl font-black text-gray-900 mb-6">Progresso Semanal</h3>
                  <div class="space-y-4">
                    <div>
                      <div class="flex justify-between items-center mb-2">
                        <span class="text-sm font-semibold text-gray-700">Meta de Treinos</span>
                        <span class="text-sm font-bold text-primary-600">4/5</span>
                      </div>
                      <div class="w-full h-3 bg-gray-200 rounded-full overflow-hidden">
                        <div class="h-full bg-gradient-to-r from-primary-500 to-primary-600 rounded-full" style="width: 80%"></div>
                      </div>
                    </div>
                    <div>
                      <div class="flex justify-between items-center mb-2">
                        <span class="text-sm font-semibold text-gray-700">Calorias Queimadas</span>
                        <span class="text-sm font-bold text-orange-600">2.100/2.500</span>
                      </div>
                      <div class="w-full h-3 bg-gray-200 rounded-full overflow-hidden">
                        <div class="h-full bg-gradient-to-r from-orange-500 to-orange-600 rounded-full" style="width: 84%"></div>
                      </div>
                    </div>
                    <div>
                      <div class="flex justify-between items-center mb-2">
                        <span class="text-sm font-semibold text-gray-700">Tempo de Treino</span>
                        <span class="text-sm font-bold text-accent-600">185/200 min</span>
                      </div>
                      <div class="w-full h-3 bg-gray-200 rounded-full overflow-hidden">
                        <div class="h-full bg-gradient-to-r from-accent-500 to-accent-600 rounded-full" style="width: 92.5%"></div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Recent Achievements -->
                <div class="bg-white rounded-2xl p-6 shadow-lg border border-gray-100">
                  <h3 class="text-xl font-black text-gray-900 mb-6">Conquistas Recentes</h3>
                  <div class="space-y-4">
                    <div class="flex items-center gap-4 p-4 bg-gradient-to-r from-yellow-50 to-orange-50 rounded-xl border border-yellow-200">
                      <div class="w-12 h-12 rounded-xl bg-gradient-to-br from-yellow-400 to-orange-500 flex items-center justify-center">
                        <Icon name="lucide:award" class="w-6 h-6 text-white" />
                      </div>
                      <div class="flex-1">
                        <div class="font-bold text-gray-900">Primeira Semana!</div>
                        <div class="text-sm text-gray-600">7 dias consecutivos</div>
                      </div>
                    </div>

                    <div class="flex items-center gap-4 p-4 bg-gradient-to-r from-purple-50 to-pink-50 rounded-xl border border-purple-200">
                      <div class="w-12 h-12 rounded-xl bg-gradient-to-br from-purple-400 to-pink-500 flex items-center justify-center">
                        <Icon name="lucide:star" class="w-6 h-6 text-white" />
                      </div>
                      <div class="flex-1">
                        <div class="font-bold text-gray-900">Lenda do Ferro</div>
                        <div class="text-sm text-gray-600">50 treinos completos</div>
                      </div>
                    </div>

                    <div class="flex items-center gap-4 p-4 bg-gradient-to-r from-blue-50 to-cyan-50 rounded-xl border border-blue-200">
                      <div class="w-12 h-12 rounded-xl bg-gradient-to-br from-blue-400 to-cyan-500 flex items-center justify-center">
                        <Icon name="lucide:target" class="w-6 h-6 text-white" />
                      </div>
                      <div class="flex-1">
                        <div class="font-bold text-gray-900">Meta Batida</div>
                        <div class="text-sm text-gray-600">100% das metas semanais</div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Decorative Elements -->
        <div class="absolute -top-6 -left-6 w-24 h-24 bg-primary-400/20 rounded-full blur-2xl animate-pulse"></div>
        <div class="absolute -bottom-6 -right-6 w-32 h-32 bg-purple-400/20 rounded-full blur-2xl animate-pulse" style="animation-delay: 1s;"></div>
      </div>

      <!-- Feature Highlights -->
      <div class="mt-20 grid grid-cols-1 md:grid-cols-3 gap-8">
        <div class="text-center">
          <div class="w-16 h-16 mx-auto mb-4 rounded-2xl bg-gradient-to-br from-primary-100 to-primary-200 flex items-center justify-center">
            <Icon name="lucide:smartphone" class="w-8 h-8 text-primary-600" />
          </div>
          <h4 class="text-lg font-bold text-gray-900 mb-2">100% Responsivo</h4>
          <p class="text-gray-600">Funciona perfeitamente em qualquer dispositivo</p>
        </div>

        <div class="text-center">
          <div class="w-16 h-16 mx-auto mb-4 rounded-2xl bg-gradient-to-br from-accent-100 to-accent-200 flex items-center justify-center">
            <Icon name="lucide:zap" class="w-8 h-8 text-accent-600" />
          </div>
          <h4 class="text-lg font-bold text-gray-900 mb-2">Tempo Real</h4>
          <p class="text-gray-600">Atualizações instantâneas de progresso</p>
        </div>

        <div class="text-center">
          <div class="w-16 h-16 mx-auto mb-4 rounded-2xl bg-gradient-to-br from-purple-100 to-purple-200 flex items-center justify-center">
            <Icon name="lucide:shield-check" class="w-8 h-8 text-purple-600" />
          </div>
          <h4 class="text-lg font-bold text-gray-900 mb-2">Seguro</h4>
          <p class="text-gray-600">Seus dados protegidos com criptografia</p>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">
const activeTab = ref<'personal' | 'aluno'>('personal')

const tabs = [
  { id: 'personal', label: 'Personal Trainer', icon: 'lucide:briefcase' },
  { id: 'aluno', label: 'Aluno', icon: 'lucide:user' }
]
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

@keyframes fade-in {
  from {
    opacity: 0;
    transform: translateY(10px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.animate-fade-in {
  animation: fade-in 0.5s ease-out;
}
</style>
