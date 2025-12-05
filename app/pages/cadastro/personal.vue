<template>
  <div class="min-h-screen bg-gradient-to-br from-gray-50 via-white to-gray-50">
    <TheHeader />

    <div class="pt-24 pb-16 px-6">
      <div class="max-w-3xl mx-auto">
        <!-- Voltar -->
        <NuxtLink 
          to="/cadastro" 
          class="inline-flex items-center gap-2 text-gray-600 hover:text-primary-600 transition-colors mb-8 group"
        >
          <Icon name="lucide:arrow-left" class="w-4 h-4 group-hover:-translate-x-1 transition-transform" />
          <span>Voltar</span>
        </NuxtLink>

        <!-- Card Principal -->
        <div class="bg-white rounded-[2rem] shadow-2xl border border-gray-100 overflow-hidden">
          <!-- Progress Bar -->
          <div class="h-2 bg-gray-100">
            <div 
              class="h-full bg-gradient-to-r from-primary-500 to-primary-600 transition-all duration-500 ease-out"
              :style="{ width: `${(currentStep / totalSteps) * 100}%` }"
            />
          </div>

          <!-- Content -->
          <div class="p-8 sm:p-12">
            <!-- Header -->
            <div class="text-center mb-10">
              <div class="inline-flex items-center justify-center w-20 h-20 bg-gradient-to-br from-primary-500 to-primary-600 rounded-3xl mb-5 shadow-lg">
                <Icon :name="stepIcon" class="w-10 h-10 text-white" />
              </div>
              <h1 class="text-3xl font-bold text-gray-900 mb-3">{{ stepTitle }}</h1>
              <p class="text-gray-600 text-lg">{{ stepDescription }}</p>
              <div class="flex justify-center gap-2 mt-6">
                <div 
                  v-for="step in totalSteps" 
                  :key="step"
                  class="h-2 rounded-full transition-all duration-300"
                  :class="step <= currentStep ? 'w-8 bg-primary-500' : 'w-2 bg-gray-200'"
                />
              </div>
            </div>

            <!-- Success -->
            <div v-if="success" class="text-center py-12">
              <div class="inline-flex items-center justify-center w-24 h-24 bg-gradient-to-br from-green-400 to-green-600 rounded-full mb-8 animate-bounce">
                <Icon name="lucide:check-circle" class="w-14 h-14 text-white" />
              </div>
              <h2 class="text-3xl font-bold text-gray-900 mb-4">Bem-vindo ao Academia na Mão! 🎉</h2>
              <p class="text-gray-600 text-lg mb-10">
                Sua conta foi criada com sucesso. Baixe o app para começar.
              </p>
              
              <div class="bg-gradient-to-br from-primary-50 to-accent-50 rounded-2xl p-8 max-w-md mx-auto">
                <div class="flex items-center justify-center gap-2 mb-6">
                  <Icon name="lucide:smartphone" class="w-6 h-6 text-primary-600" />
                  <p class="text-lg font-bold text-gray-900">Baixe o App</p>
                </div>
                <div class="space-y-3">
                  <a href="#" class="flex items-center justify-center gap-3 bg-gray-900 hover:bg-gray-800 text-white px-6 py-4 rounded-xl transition-all hover:scale-105 shadow-lg">
                    <Icon name="logos:apple" class="w-7 h-7" />
                    <div class="text-left">
                      <div class="text-xs opacity-80">Download on the</div>
                      <div class="text-base font-bold">App Store</div>
                    </div>
                  </a>
                  <a href="#" class="flex items-center justify-center gap-3 bg-gray-900 hover:bg-gray-800 text-white px-6 py-4 rounded-xl transition-all hover:scale-105 shadow-lg">
                    <Icon name="logos:google-play-icon" class="w-7 h-7" />
                    <div class="text-left">
                      <div class="text-xs opacity-80">GET IT ON</div>
                      <div class="text-base font-bold">Google Play</div>
                    </div>
                  </a>
                </div>
              </div>
            </div>

            <!-- Form -->
            <form v-else @submit.prevent="handleNext" class="space-y-6">
              <!-- Step 1: Dados Pessoais -->
              <div v-show="currentStep === 1" class="space-y-6">
                <FormField
                  v-model="form.nome"
                  label="Nome Completo"
                  icon="lucide:user"
                  placeholder="Seu nome completo"
                  :error="errors.nome"
                  required
                  @blur="validateField('nome')"
                />

                <FormField
                  v-model="form.email"
                  label="Email"
                  type="email"
                  icon="lucide:mail"
                  placeholder="seu@email.com"
                  :error="errors.email"
                  required
                  @blur="validateField('email')"
                />

                <FormField
                  v-model="form.telefone"
                  label="Telefone"
                  icon="lucide:phone"
                  placeholder="(00) 00000-0000"
                  :error="errors.telefone"
                  required
                  @input="formatTelefone"
                  @blur="validateField('telefone')"
                  maxlength="15"
                />

                <FormField
                  v-model="form.dataNascimento"
                  label="Data de Nascimento"
                  type="date"
                  icon="lucide:calendar"
                />
              </div>

              <!-- Step 2: Documentos -->
              <div v-show="currentStep === 2" class="space-y-6">
                <div>
                  <label class="block text-sm font-semibold text-gray-700 mb-3">Tipo de Documento</label>
                  <div class="grid grid-cols-2 gap-3">
                    <label class="relative flex items-center justify-center p-4 border-2 rounded-xl cursor-pointer transition-all"
                      :class="form.tipoDocumento === 'cpf' ? 'border-primary-500 bg-primary-50' : 'border-gray-200 hover:border-gray-300'">
                      <input 
                        type="radio" 
                        v-model="form.tipoDocumento" 
                        value="cpf"
                        class="sr-only"
                      />
                      <div class="flex items-center gap-2">
                        <Icon name="lucide:id-card" class="w-5 h-5" :class="form.tipoDocumento === 'cpf' ? 'text-primary-600' : 'text-gray-500'" />
                        <span class="font-medium" :class="form.tipoDocumento === 'cpf' ? 'text-primary-700' : 'text-gray-700'">CPF</span>
                      </div>
                      <Icon v-if="form.tipoDocumento === 'cpf'" name="lucide:check-circle" class="absolute top-2 right-2 w-5 h-5 text-primary-600" />
                    </label>
                    <label class="relative flex items-center justify-center p-4 border-2 rounded-xl cursor-pointer transition-all"
                      :class="form.tipoDocumento === 'cnpj' ? 'border-primary-500 bg-primary-50' : 'border-gray-200 hover:border-gray-300'">
                      <input 
                        type="radio" 
                        v-model="form.tipoDocumento" 
                        value="cnpj"
                        class="sr-only"
                      />
                      <div class="flex items-center gap-2">
                        <Icon name="lucide:building" class="w-5 h-5" :class="form.tipoDocumento === 'cnpj' ? 'text-primary-600' : 'text-gray-500'" />
                        <span class="font-medium" :class="form.tipoDocumento === 'cnpj' ? 'text-primary-700' : 'text-gray-700'">CNPJ</span>
                      </div>
                      <Icon v-if="form.tipoDocumento === 'cnpj'" name="lucide:check-circle" class="absolute top-2 right-2 w-5 h-5 text-primary-600" />
                    </label>
                  </div>
                </div>

                <FormField
                  v-if="form.tipoDocumento === 'cpf'"
                  v-model="form.cpf"
                  label="CPF"
                  icon="lucide:id-card"
                  placeholder="000.000.000-00"
                  :error="errors.cpf"
                  required
                  @input="formatCpf"
                  @blur="validateField('cpf')"
                  maxlength="14"
                />

                <FormField
                  v-else
                  v-model="form.cnpj"
                  label="CNPJ"
                  icon="lucide:building"
                  placeholder="00.000.000/0000-00"
                  :error="errors.cnpj"
                  required
                  @input="formatCnpj"
                  @blur="validateField('cnpj')"
                  maxlength="18"
                />
              </div>

              <!-- Step 3: CREF -->
              <div v-show="currentStep === 3" class="space-y-6">
                <FormField
                  v-model="form.cref"
                  label="CREF"
                  icon="lucide:award"
                  placeholder="000000-G/SP"
                  :error="errors.cref"
                  required
                  helper="Formato: 000000-G/SP ou 000000-P/SP"
                  @input="formatCref"
                  @blur="validateField('cref')"
                  maxlength="12"
                />

                <div class="bg-blue-50 border border-blue-200 rounded-xl p-4">
                  <div class="flex gap-3">
                    <Icon name="lucide:info" class="w-5 h-5 text-blue-600 flex-shrink-0 mt-0.5" />
                    <div class="text-sm text-blue-900">
                      <p class="font-semibold mb-1">Sobre o CREF</p>
                      <p>O CREF (Conselho Regional de Educação Física) é obrigatório para atuar como Personal Trainer no Brasil.</p>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Step 4: Senha -->
              <div v-show="currentStep === 4" class="space-y-6">
                <div>
                  <label class="block text-sm font-semibold text-gray-700 mb-2">
                    Senha <span class="text-red-500">*</span>
                  </label>
                  <div class="relative">
                    <Icon name="lucide:lock" class="absolute left-4 top-1/2 transform -translate-y-1/2 w-5 h-5 text-gray-400 z-10 transition-colors" :class="{ 'text-primary-500': form.password }" />
                    <input 
                      v-model="form.password"
                      :type="showPassword ? 'text' : 'password'"
                      placeholder="Mínimo 6 caracteres"
                      class="w-full pl-12 pr-14 py-3.5 border-2 border-gray-200 rounded-xl focus:ring-2 focus:ring-primary-500 focus:border-primary-500 transition-all"
                      :class="{ 'border-red-300 bg-red-50': errors.password, 'border-green-300 bg-green-50': passwordStrength > 0 }"
                      @blur="validateField('password')"
                    />
                    <button 
                      type="button"
                      @click="showPassword = !showPassword"
                      class="absolute right-4 top-1/2 transform -translate-y-1/2 text-gray-400 hover:text-gray-600 transition-colors"
                    >
                      <Icon :name="showPassword ? 'lucide:eye-off' : 'lucide:eye'" class="w-5 h-5" />
                    </button>
                  </div>
                  <p v-if="errors.password" class="mt-2 text-sm text-red-600 flex items-center gap-1">
                    <Icon name="lucide:alert-circle" class="w-4 h-4" />
                    {{ errors.password }}
                  </p>
                  
                  <!-- Password Strength -->
                  <div v-if="form.password" class="mt-3">
                    <div class="flex gap-1 mb-2">
                      <div 
                        v-for="i in 4" 
                        :key="i"
                        class="h-1.5 flex-1 rounded-full transition-all"
                        :class="i <= passwordStrength ? strengthColors[passwordStrength] : 'bg-gray-200'"
                      />
                    </div>
                    <p class="text-xs font-medium" :class="strengthColors[passwordStrength].replace('bg-', 'text-')">
                      {{ strengthLabels[passwordStrength] }}
                    </p>
                  </div>
                </div>

                <div>
                  <label class="block text-sm font-semibold text-gray-700 mb-2">
                    Confirmar Senha <span class="text-red-500">*</span>
                  </label>
                  <div class="relative">
                    <Icon name="lucide:lock" class="absolute left-4 top-1/2 transform -translate-y-1/2 w-5 h-5 text-gray-400 z-10" />
                    <input 
                      v-model="form.confirmPassword"
                      :type="showConfirmPassword ? 'text' : 'password'"
                      placeholder="Repita sua senha"
                      class="w-full pl-12 pr-14 py-3.5 border-2 border-gray-200 rounded-xl focus:ring-2 focus:ring-primary-500 focus:border-primary-500 transition-all"
                      :class="{ 'border-red-300 bg-red-50': errors.confirmPassword, 'border-green-300 bg-green-50': form.confirmPassword && form.confirmPassword === form.password }"
                      @blur="validateField('confirmPassword')"
                    />
                    <button 
                      type="button"
                      @click="showConfirmPassword = !showConfirmPassword"
                      class="absolute right-4 top-1/2 transform -translate-y-1/2 text-gray-400 hover:text-gray-600 transition-colors"
                    >
                      <Icon :name="showConfirmPassword ? 'lucide:eye-off' : 'lucide:eye'" class="w-5 h-5" />
                    </button>
                  </div>
                  <p v-if="errors.confirmPassword" class="mt-2 text-sm text-red-600 flex items-center gap-1">
                    <Icon name="lucide:alert-circle" class="w-4 h-4" />
                    {{ errors.confirmPassword }}
                  </p>
                </div>

                <div class="bg-gradient-to-br from-primary-50 to-accent-50 rounded-xl p-5">
                  <div class="flex items-start gap-3">
                    <input 
                      v-model="form.aceitoTermos"
                      type="checkbox"
                      class="mt-1 w-5 h-5 text-primary-600 border-2 border-gray-300 rounded focus:ring-2 focus:ring-primary-500"
                    />
                    <label class="text-sm text-gray-700">
                      Li e aceito os <a href="#" class="text-primary-600 hover:text-primary-700 font-semibold">Termos de Uso</a> e 
                      <a href="#" class="text-primary-600 hover:text-primary-700 font-semibold">Política de Privacidade</a>
                    </label>
                  </div>
                  <p v-if="errors.aceitoTermos" class="mt-2 text-sm text-red-600 flex items-center gap-1 ml-8">
                    <Icon name="lucide:alert-circle" class="w-4 h-4" />
                    {{ errors.aceitoTermos }}
                  </p>
                </div>
              </div>

              <!-- Error Message -->
              <div v-if="error" class="bg-red-50 border border-red-200 text-red-800 rounded-xl p-4 flex items-center gap-3">
                <Icon name="lucide:alert-circle" class="w-5 h-5 flex-shrink-0" />
                <p class="text-sm">{{ error }}</p>
              </div>

              <!-- Navigation Buttons -->
              <div class="flex gap-4 pt-4">
                <button
                  v-if="currentStep > 1"
                  type="button"
                  @click="previousStep"
                  class="flex-1 px-6 py-3.5 border-2 border-gray-300 text-gray-700 rounded-xl hover:bg-gray-50 transition-all font-semibold"
                >
                  Voltar
                </button>
                
                <button
                  type="submit"
                  :disabled="loading"
                  class="flex-1 px-6 py-3.5 bg-gradient-to-r from-primary-500 to-primary-600 hover:from-primary-600 hover:to-primary-700 text-white rounded-xl transition-all font-semibold shadow-lg hover:shadow-xl disabled:opacity-50 disabled:cursor-not-allowed"
                >
                  <span v-if="loading" class="flex items-center justify-center gap-2">
                    <Icon name="lucide:loader-2" class="w-5 h-5 animate-spin" />
                    Processando...
                  </span>
                  <span v-else-if="currentStep === totalSteps">
                    Criar Conta
                  </span>
                  <span v-else>
                    Continuar
                  </span>
                </button>
              </div>
            </form>
          </div>
        </div>

        <!-- Login Link -->
        <div class="text-center mt-8">
          <p class="text-gray-600">
            Já tem uma conta? 
            <NuxtLink to="/login" class="text-primary-600 hover:text-primary-700 font-semibold">
              Fazer login
            </NuxtLink>
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
const currentStep = ref(1)
const totalSteps = 4
const loading = ref(false)
const success = ref(false)
const error = ref('')
const showPassword = ref(false)
const showConfirmPassword = ref(false)

const form = reactive({
  nome: '',
  email: '',
  telefone: '',
  dataNascimento: '',
  tipoDocumento: 'cpf',
  cpf: '',
  cnpj: '',
  cref: '',
  password: '',
  confirmPassword: '',
  aceitoTermos: false
})

const errors = reactive({
  nome: '',
  email: '',
  telefone: '',
  cpf: '',
  cnpj: '',
  cref: '',
  password: '',
  confirmPassword: '',
  aceitoTermos: ''
})

const stepConfig = {
  1: {
    title: 'Dados Pessoais',
    description: 'Vamos começar com suas informações básicas',
    icon: 'lucide:user'
  },
  2: {
    title: 'Documentação',
    description: 'Agora precisamos de seus documentos',
    icon: 'lucide:id-card'
  },
  3: {
    title: 'Registro Profissional',
    description: 'Valide seu CREF para atuar como Personal',
    icon: 'lucide:award'
  },
  4: {
    title: 'Segurança',
    description: 'Crie uma senha forte para sua conta',
    icon: 'lucide:lock'
  }
}

const stepTitle = computed(() => stepConfig[currentStep.value]?.title || '')
const stepDescription = computed(() => stepConfig[currentStep.value]?.description || '')
const stepIcon = computed(() => stepConfig[currentStep.value]?.icon || 'lucide:user')

const passwordStrength = computed(() => {
  const pwd = form.password
  if (!pwd) return 0
  if (pwd.length < 6) return 1
  if (pwd.length < 8) return 2
  if (pwd.length >= 8 && /[A-Z]/.test(pwd) && /[0-9]/.test(pwd)) return 4
  return 3
})

const strengthColors = {
  0: 'bg-gray-200',
  1: 'bg-red-500',
  2: 'bg-orange-500',
  3: 'bg-yellow-500',
  4: 'bg-green-500'
}

const strengthLabels = {
  0: '',
  1: 'Fraca',
  2: 'Regular',
  3: 'Boa',
  4: 'Forte'
}

const validateField = (field: string) => {
  errors[field] = ''

  switch (field) {
    case 'nome':
      if (!form.nome) errors.nome = 'Nome é obrigatório'
      else if (form.nome.length < 3) errors.nome = 'Nome deve ter no mínimo 3 caracteres'
      break
    case 'email':
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/
      if (!form.email) errors.email = 'Email é obrigatório'
      else if (!emailRegex.test(form.email)) errors.email = 'Email inválido'
      break
    case 'telefone':
      const cleanPhone = form.telefone.replace(/\D/g, '')
      if (!form.telefone) errors.telefone = 'Telefone é obrigatório'
      else if (cleanPhone.length !== 11) errors.telefone = 'Telefone inválido'
      break
    case 'cpf':
      const cleanCpf = form.cpf.replace(/\D/g, '')
      if (!form.cpf) errors.cpf = 'CPF é obrigatório'
      else if (cleanCpf.length !== 11) errors.cpf = 'CPF inválido'
      break
    case 'cnpj':
      const cleanCnpj = form.cnpj.replace(/\D/g, '')
      if (!form.cnpj) errors.cnpj = 'CNPJ é obrigatório'
      else if (cleanCnpj.length !== 14) errors.cnpj = 'CNPJ inválido'
      break
    case 'cref':
      const crefRegex = /^\d{6}-[GP]\/[A-Z]{2}$/
      if (!form.cref) errors.cref = 'CREF é obrigatório'
      else if (!crefRegex.test(form.cref)) errors.cref = 'CREF inválido (ex: 000000-G/SP)'
      break
    case 'password':
      if (!form.password) errors.password = 'Senha é obrigatória'
      else if (form.password.length < 6) errors.password = 'Senha deve ter no mínimo 6 caracteres'
      break
    case 'confirmPassword':
      if (!form.confirmPassword) errors.confirmPassword = 'Confirme sua senha'
      else if (form.confirmPassword !== form.password) errors.confirmPassword = 'Senhas não coincidem'
      break
  }
}

const validateStep = () => {
  let isValid = true

  switch (currentStep.value) {
    case 1:
      validateField('nome')
      validateField('email')
      validateField('telefone')
      isValid = !errors.nome && !errors.email && !errors.telefone
      break
    case 2:
      if (form.tipoDocumento === 'cpf') {
        validateField('cpf')
        isValid = !errors.cpf
      } else {
        validateField('cnpj')
        isValid = !errors.cnpj
      }
      break
    case 3:
      validateField('cref')
      isValid = !errors.cref
      break
    case 4:
      validateField('password')
      validateField('confirmPassword')
      if (!form.aceitoTermos) {
        errors.aceitoTermos = 'Você deve aceitar os termos'
        isValid = false
      }
      isValid = isValid && !errors.password && !errors.confirmPassword
      break
  }

  return isValid
}

const handleNext = () => {
  if (!validateStep()) return

  if (currentStep.value < totalSteps) {
    currentStep.value++
    window.scrollTo({ top: 0, behavior: 'smooth' })
  } else {
    handleSubmit()
  }
}

const previousStep = () => {
  if (currentStep.value > 1) {
    currentStep.value--
    window.scrollTo({ top: 0, behavior: 'smooth' })
  }
}

const handleSubmit = async () => {
  if (!validateStep()) return

  loading.value = true
  error.value = ''

  try {
    const response = await $fetch('http://localhost:3001/api/auth/register', {
      method: 'POST',
      body: {
        nome: form.nome,
        email: form.email,
        telefone: form.telefone.replace(/\D/g, ''),
        password: form.password,
        userType: 'PERSONAL',
        dataNascimento: form.dataNascimento || undefined,
        cpf: form.tipoDocumento === 'cpf' ? form.cpf.replace(/\D/g, '') : undefined,
        cnpj: form.tipoDocumento === 'cnpj' ? form.cnpj.replace(/\D/g, '') : undefined,
        cref: form.cref
      }
    })

    success.value = true
    window.scrollTo({ top: 0, behavior: 'smooth' })
  } catch (e: any) {
    console.error('Erro no cadastro:', e)
    error.value = e.data?.message || e.message || 'Erro ao criar conta. Tente novamente.'
  } finally {
    loading.value = false
  }
}

const formatTelefone = (e: Event) => {
  const input = e.target as HTMLInputElement
  let value = input.value.replace(/\D/g, '')
  if (value.length > 11) value = value.slice(0, 11)
  if (value.length > 10) {
    form.telefone = value.replace(/(\d{2})(\d{5})(\d{4})/, '($1) $2-$3')
  } else if (value.length > 5) {
    form.telefone = value.replace(/(\d{2})(\d{4})(\d{0,4})/, '($1) $2-$3')
  } else if (value.length > 2) {
    form.telefone = value.replace(/(\d{2})(\d{0,5})/, '($1) $2')
  } else {
    form.telefone = value.replace(/(\d*)/, '($1')
  }
}

const formatCpf = (e: Event) => {
  const input = e.target as HTMLInputElement
  let value = input.value.replace(/\D/g, '')
  if (value.length > 11) value = value.slice(0, 11)
  form.cpf = value.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, '$1.$2.$3-$4')
}

const formatCnpj = (e: Event) => {
  const input = e.target as HTMLInputElement
  let value = input.value.replace(/\D/g, '')
  if (value.length > 14) value = value.slice(0, 14)
  form.cnpj = value.replace(/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, '$1.$2.$3/$4-$5')
}

const formatCref = (e: Event) => {
  const input = e.target as HTMLInputElement
  let value = input.value.replace(/[^0-9GP]/gi, '').toUpperCase()
  
  if (value.length > 7) {
    const numbers = value.slice(0, 6)
    const letter = value.slice(6, 7)
    const state = value.slice(7, 9)
    form.cref = `${numbers}-${letter}/${state}`
  } else if (value.length > 6) {
    const numbers = value.slice(0, 6)
    const letter = value.slice(6, 7)
    form.cref = `${numbers}-${letter}/`
  } else {
    form.cref = value
  }
}

useHead({
  title: 'Cadastro Personal Trainer - Academia na Mão'
})
</script>
