<template>
  <div>
    <!-- Header -->
    <TheHeader />

    <!-- Main Content -->
    <main>
      <HeroSection />
      <FeaturesSection />
      <HowItWorksSection />
      <TestimonialsSection />
      <PricingSection />
      <CTASection />
    </main>

    <!-- Footer -->
    <TheFooter />
  </div>
</template>

<script setup lang="ts">
import TheHeader from '~/components/landing/TheHeader.vue'
import TheFooter from '~/components/landing/TheFooter.vue'
import HeroSection from '~/components/landing/HeroSection.vue'
import FeaturesSection from '~/components/landing/FeaturesSection.vue'
import HowItWorksSection from '~/components/landing/HowItWorksSection.vue'
import TestimonialsSection from '~/components/landing/TestimonialsSection.vue'
import PricingSection from '~/components/landing/PricingSection.vue'
import CTASection from '~/components/landing/CTASection.vue'

// SEO Meta Tags
useSeoMeta({
  title: 'Academia na Mão - Plataforma para Personal Trainers e Alunos',
  description: 'A plataforma completa que conecta personal trainers e alunos. Gerencie treinos personalizados e acompanhe sua evolução em tempo real.',
  ogTitle: 'Academia na Mão - Transforme seu Negócio Fitness',
  ogDescription: 'Gerencie seus alunos, crie treinos personalizados e acompanhe resultados em tempo real. A ferramenta essencial para personal trainers e alunos.',
  ogImage: '/images/og-image.jpg',
  twitterCard: 'summary_large_image',
})
</script>
