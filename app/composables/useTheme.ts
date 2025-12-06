export const useTheme = () => {
  const isDark = useState<boolean>('theme-dark', () => false)

  const toggleTheme = () => {
    isDark.value = !isDark.value
    updateTheme()
  }

  const setTheme = (dark: boolean) => {
    isDark.value = dark
    updateTheme()
  }

  const updateTheme = () => {
    if (import.meta.client) {
      if (isDark.value) {
        document.documentElement.classList.add('dark')
        localStorage.setItem('theme', 'dark')
      } else {
        document.documentElement.classList.remove('dark')
        localStorage.setItem('theme', 'light')
      }
    }
  }

  const initTheme = () => {
    if (import.meta.client) {
      // Check localStorage first
      const savedTheme = localStorage.getItem('theme')
      if (savedTheme) {
        isDark.value = savedTheme === 'dark'
      } else {
        // Check system preference
        isDark.value = window.matchMedia('(prefers-color-scheme: dark)').matches
      }
      updateTheme()
    }
  }

  // Initialize on client side
  if (import.meta.client) {
    initTheme()
  }

  return {
    isDark,
    toggleTheme,
    setTheme,
  }
}
