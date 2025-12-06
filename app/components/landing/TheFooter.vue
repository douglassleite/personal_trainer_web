<template>
  <footer class="bg-gray-900 dark:bg-gray-950 text-white pt-16 pb-8 overflow-hidden transition-colors duration-300">
    <div class="max-w-6xl mx-auto px-6 sm:px-8">
      <!-- Main Footer -->
      <div class="grid grid-cols-2 md:grid-cols-4 lg:grid-cols-5 gap-8 pb-12 border-b border-gray-800 dark:border-gray-700">
        <!-- Brand -->
        <div class="col-span-2 lg:col-span-2">
          <div class="flex items-center gap-3 mb-4">
            <div class="w-10 h-10 bg-gradient-to-br from-primary-500 to-primary-600 rounded-xl flex items-center justify-center">
              <Icon name="lucide:dumbbell" class="w-5 h-5 text-white" />
            </div>
            <span class="text-xl font-bold">
              Academia<span class="text-primary-400">NaMão</span>
            </span>
          </div>
          <p class="text-gray-400 dark:text-gray-500 mb-6 max-w-sm">
            Transformando a forma como personal trainers e alunos se conectam e alcançam resultados juntos.
          </p>
          <div class="flex gap-4">
            <a 
              v-for="social in socialLinks" 
              :key="social.name"
              :href="social.href"
              target="_blank"
              class="w-10 h-10 rounded-lg bg-gray-800 dark:bg-gray-900 hover:bg-primary-500 dark:hover:bg-primary-600 flex items-center justify-center transition-colors"
            >
              <Icon :name="social.icon" class="w-5 h-5" />
            </a>
          </div>
        </div>

        <!-- Links -->
        <div v-for="section in footerLinks" :key="section.title">
          <h4 class="font-semibold mb-4 text-white">{{ section.title }}</h4>
          <ul class="space-y-3">
            <li v-for="link in section.links" :key="link.label">
              <a 
                :href="link.href" 
                class="text-gray-400 dark:text-gray-500 hover:text-white dark:hover:text-gray-200 transition-colors"
              >
                {{ link.label }}
              </a>
            </li>
          </ul>
        </div>
      </div>

      <!-- Bottom -->
      <div class="pt-8 flex flex-col md:flex-row items-center justify-between gap-4">
        <p class="text-gray-400 dark:text-gray-500 text-sm">
          © {{ new Date().getFullYear() }} Academia na Mão. Todos os direitos reservados.
        </p>
        <div class="flex gap-6 text-sm">
          <a href="/privacidade" class="text-gray-400 hover:text-white transition-colors">
            Política de Privacidade
          </a>
          <a href="/termos" class="text-gray-400 hover:text-white transition-colors">
            Termos de Uso
          </a>
        </div>
      </div>
    </div>
  </footer>
</template>

<script setup lang="ts">
const socialLinks = [
  { name: 'Instagram', icon: 'lucide:instagram', href: '#' },
  { name: 'Facebook', icon: 'lucide:facebook', href: '#' },
  { name: 'YouTube', icon: 'lucide:youtube', href: '#' },
  { name: 'LinkedIn', icon: 'lucide:linkedin', href: '#' },
]

const footerLinks = [
  {
    title: 'Produto',
    links: [
      { label: 'Recursos', href: '#recursos' },
      { label: 'Planos', href: '#planos' },
      { label: 'App Mobile', href: '#' },
      { label: 'Integrações', href: '#' },
    ],
  },
  {
    title: 'Empresa',
    links: [
      { label: 'Sobre Nós', href: '#' },
      { label: 'Blog', href: '#' },
      { label: 'Carreiras', href: '#' },
      { label: 'Contato', href: '#' },
    ],
  },
  {
    title: 'Suporte',
    links: [
      { label: 'Central de Ajuda', href: '#' },
      { label: 'Documentação', href: '#' },
      { label: 'Status', href: '#' },
      { label: 'Fale Conosco', href: '#' },
    ],
  },
]
</script>
