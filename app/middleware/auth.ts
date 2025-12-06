export default defineNuxtRouteMiddleware((to, from) => {
  if (import.meta.client) {
    const token = localStorage.getItem('accessToken')
    
    if (!token) {
      return navigateTo('/login')
    }
  }
})
