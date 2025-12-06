<template>
  <header 
    class="fixed top-0 left-0 right-0 z-50 transition-all duration-300"
    :class="isScrolled ? 'bg-white/95 dark:bg-gray-900/95 backdrop-blur-md shadow-soft' : 'bg-white dark:bg-gray-900 shadow-sm'"
  >
    <div class="max-w-6xl mx-auto px-6 sm:px-8 lg:px-12">
      <nav class="flex items-center justify-between h-20">
        <!-- Logo -->
        <NuxtLink to="/" class="flex items-center gap-3 group">
          <div class="w-10 h-10 bg-gradient-to-br from-primary-500 to-primary-600 rounded-xl flex items-center justify-center shadow-lg group-hover:shadow-glow transition-shadow">
            <Icon name="lucide:dumbbell" class="w-5 h-5 text-white" />
          </div>
          <span class="text-xl font-bold text-gray-900 dark:text-white">
            Academia<span class="text-primary-500">NaMão</span>
          </span>
        </NuxtLink>

        <!-- Desktop Navigation -->
        <div class="hidden md:flex items-center gap-8">
          <NuxtLink 
            v-for="item in navItems" 
            :key="item.href"
            :to="item.href"
            class="font-medium transition-colors text-gray-600 hover:text-primary-500 dark:text-gray-300 dark:hover:text-primary-400"
          >
            {{ item.label }}
          </NuxtLink>
        </div>

        <!-- CTA Buttons -->
        <div class="hidden md:flex items-center gap-4">
          <button
            @click="toggleTheme"
            class="p-2 rounded-lg transition-colors hover:bg-gray-100 dark:hover:bg-gray-800"
            :title="isDark ? 'Modo Claro' : 'Modo Escuro'"
          >
            <Icon 
              :name="isDark ? 'lucide:sun' : 'lucide:moon'" 
              class="w-5 h-5 text-gray-600 dark:text-gray-300"
            />
          </button>
          
          <!-- Logged In -->
          <template v-if="isLoggedIn">
            <NuxtLink 
              to="/dashboard" 
              class="font-medium transition-colors text-gray-600 hover:text-primary-500 dark:text-gray-300 dark:hover:text-primary-400"
            >
              Olá, {{ userName }}!
            </NuxtLink>
            <button
              @click="handleLogout"
              class="font-medium transition-colors text-red-600 hover:text-red-700 dark:text-red-400 dark:hover:text-red-300 flex items-center gap-2"
            >
              <Icon name="lucide:log-out" class="w-4 h-4" />
              Sair
            </button>
          </template>
          
          <!-- Not Logged In -->
          <template v-else>
            <NuxtLink 
              to="/login" 
              class="font-medium transition-colors text-gray-600 hover:text-primary-500 dark:text-gray-300 dark:hover:text-primary-400"
            >
              Entrar
            </NuxtLink>
            <NuxtLink 
              to="/cadastro" 
              class="font-medium transition-colors text-gray-600 hover:text-primary-500 dark:text-gray-300 dark:hover:text-primary-400"
            >
              Cadastrar
            </NuxtLink>
          </template>
        </div>

        <!-- Mobile Menu Button -->
        <button 
          @click="isMobileMenuOpen = !isMobileMenuOpen"
          class="md:hidden p-2 rounded-lg transition-colors hover:bg-gray-100 dark:hover:bg-gray-800"
        >
          <Icon 
            :name="isMobileMenuOpen ? 'lucide:x' : 'lucide:menu'" 
            class="w-6 h-6 text-gray-700 dark:text-gray-300"
          />
        </button>
      </nav>

      <!-- Mobile Menu -->
      <Transition
        enter-active-class="transition duration-200 ease-out"
        enter-from-class="opacity-0 -translate-y-2"
        enter-to-class="opacity-100 translate-y-0"
        leave-active-class="transition duration-150 ease-in"
        leave-from-class="opacity-100 translate-y-0"
        leave-to-class="opacity-0 -translate-y-2"
      >
        <div 
          v-if="isMobileMenuOpen"
          class="md:hidden py-4 border-t border-gray-100 dark:border-gray-800"
        >
          <div class="flex flex-col gap-4">
            <button
              @click="toggleTheme"
              class="flex items-center gap-2 font-medium transition-colors py-2 text-gray-600 hover:text-primary-500 dark:text-gray-300 dark:hover:text-primary-400"
            >
              <Icon 
                :name="isDark ? 'lucide:sun' : 'lucide:moon'" 
                class="w-5 h-5"
              />
              {{ isDark ? 'Modo Claro' : 'Modo Escuro' }}
            </button>
            <NuxtLink 
              v-for="item in navItems" 
              :key="item.href"
              :to="item.href"
              class="font-medium transition-colors py-2 text-gray-600 hover:text-primary-500 dark:text-gray-300 dark:hover:text-primary-400"
              @click="isMobileMenuOpen = false"
            >
              {{ item.label }}
            </NuxtLink>
            
            <!-- Mobile Logged In / Not Logged In -->
            <div class="flex flex-col gap-3 pt-4 border-t border-gray-100 dark:border-gray-800">
              <template v-if="isLoggedIn">
                <NuxtLink 
                  to="/dashboard" 
                  class="btn btn-secondary w-full"
                  @click="isMobileMenuOpen = false"
                >
                  Olá, {{ userName }}!
                </NuxtLink>
                <button
                  @click="handleLogout"
                  class="btn bg-red-600 hover:bg-red-700 text-white w-full flex items-center justify-center gap-2"
                >
                  <Icon name="lucide:log-out" class="w-4 h-4" />
                  Sair
                </button>
              </template>
              <template v-else>
                <NuxtLink to="/login" class="btn btn-secondary w-full">
                  Entrar
                </NuxtLink>
                <NuxtLink to="/cadastro" class="btn btn-primary w-full">
                  Cadastrar
                </NuxtLink>
              </template>
            </div>
          </div>
        </div>
      </Transition>
    </div>
  </header>
</template>

<script setup lang="ts">
const route = useRoute()
const isScrolled = ref(false)
const isMobileMenuOpen = ref(false)
const { isDark, toggleTheme } = useTheme()

const isLoggedIn = ref(false)
const userName = ref('')

const isHomePage = computed(() => route.path === '/')

const navItems = [
  { label: 'Recursos', href: '/recursos' },
  { label: 'Sobre', href: '/sobre' },
  { label: 'Como Funciona', href: '#como-funciona' },
  { label: 'Depoimentos', href: '#depoimentos' },
]

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
  checkLoginStatus()
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})

function handleScroll() {
  isScrolled.value = window.scrollY > 20
}

function checkLoginStatus() {
  if (import.meta.client) {
    const token = localStorage.getItem('accessToken')
    const userData = localStorage.getItem('user')
    
    if (token && userData) {
      isLoggedIn.value = true
      const user = JSON.parse(userData)
      userName.value = user.nome || 'Personal'
    }
  }
}

function handleLogout() {
  if (import.meta.client) {
    localStorage.removeItem('accessToken')
    localStorage.removeItem('refreshToken')
    localStorage.removeItem('user')
    isLoggedIn.value = false
    userName.value = ''
    navigateTo('/login')
  }
}
</script>
