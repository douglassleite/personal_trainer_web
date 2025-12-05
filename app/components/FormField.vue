<template>
  <div>
    <label v-if="label" class="block text-sm font-semibold text-gray-700 mb-2">
      {{ label }} <span v-if="required" class="text-red-500">*</span>
    </label>
    <div class="relative">
      <Icon 
        v-if="icon" 
        :name="icon" 
        class="absolute left-4 top-1/2 transform -translate-y-1/2 w-5 h-5 text-gray-400 z-10 transition-colors" 
        :class="{ 'text-primary-500': modelValue }" 
      />
      <input 
        :value="modelValue"
        @input="$emit('update:modelValue', ($event.target as HTMLInputElement).value)"
        @blur="$emit('blur')"
        :type="type"
        :placeholder="placeholder"
        :maxlength="maxlength"
        :class="inputClass"
        class="w-full py-3.5 border-2 border-gray-200 rounded-xl focus:ring-2 focus:ring-primary-500 focus:border-primary-500 transition-all"
      />
      <Icon 
        v-if="modelValue && !error" 
        name="lucide:check-circle" 
        class="absolute right-4 top-1/2 transform -translate-y-1/2 w-5 h-5 text-green-500" 
      />
    </div>
    <p v-if="helper && !error" class="mt-1.5 text-xs text-gray-500 flex items-center gap-1">
      <Icon name="lucide:info" class="w-3 h-3" />
      {{ helper }}
    </p>
    <p v-if="error" class="mt-2 text-sm text-red-600 flex items-center gap-1">
      <Icon name="lucide:alert-circle" class="w-4 h-4" />
      {{ error }}
    </p>
  </div>
</template>

<script setup lang="ts">
const props = defineProps({
  modelValue: String,
  label: String,
  type: {
    type: String,
    default: 'text'
  },
  icon: String,
  placeholder: String,
  error: String,
  helper: String,
  required: Boolean,
  maxlength: [String, Number]
})

defineEmits(['update:modelValue', 'blur'])

const inputClass = computed(() => {
  const classes = []
  if (props.icon) classes.push('pl-12 pr-4')
  else classes.push('px-4')
  
  if (props.error) classes.push('border-red-300 bg-red-50')
  else if (props.modelValue) classes.push('border-green-300 bg-green-50')
  
  return classes.join(' ')
})
</script>
