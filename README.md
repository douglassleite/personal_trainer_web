# Academia na Mão - Web

Landing page e aplicação web do sistema Academia na Mão, desenvolvida com **Nuxt 4** e **Vue 3**.

## 🚀 Tecnologias

- **Framework:** Nuxt 4.2.1
- **Frontend:** Vue 3.5
- **Estilização:** Tailwind CSS
- **Ícones:** Nuxt Icon (Lucide)
- **Utilitários:** VueUse

## 📋 Pré-requisitos

- Node.js 18+ 
- npm ou yarn

## 🛠️ Instalação

```bash
# Clonar o repositório
git clone https://github.com/douglassleite/personal_trainer_web.git
cd personal_trainer_web

# Instalar dependências
npm install

# Configurar variáveis de ambiente
cp .env.example .env
```

## ⚙️ Variáveis de Ambiente

```env
# URL da API Backend
NUXT_PUBLIC_API_BASE=http://localhost:3001
```

## 🏃 Executando

### Desenvolvimento

```bash
npm run dev
```

Acesse: http://localhost:3000

### Build de Produção

```bash
npm run build
npm run preview
```

## 🐳 Docker

### Build e Deploy

```bash
# Build e deploy
./deploy.sh deploy

# Apenas build
./deploy.sh build

# Parar aplicação
./deploy.sh stop

# Ver logs
./deploy.sh logs

# Ver status
./deploy.sh status
```

### Docker Compose Manual

```bash
# Build
docker-compose -f docker-compose.prod.yml build

# Iniciar
docker-compose -f docker-compose.prod.yml up -d

# Parar
docker-compose -f docker-compose.prod.yml down
```

## 📁 Estrutura do Projeto

```
personal_trainer_web/
├── app/
│   ├── components/
│   │   └── landing/          # Componentes da landing page
│   │       ├── TheHeader.vue
│   │       ├── TheFooter.vue
│   │       ├── HeroSection.vue
│   │       ├── FeaturesSection.vue
│   │       ├── HowItWorksSection.vue
│   │       ├── PricingSection.vue
│   │       ├── TestimonialsSection.vue
│   │       └── CTASection.vue
│   └── pages/
│       ├── index.vue         # Landing page principal
│       └── recursos.vue      # Página de recursos completa
├── assets/
│   └── css/
│       └── tailwind.css      # Estilos globais
├── public/                   # Arquivos estáticos
├── nuxt.config.ts           # Configuração do Nuxt
├── tailwind.config.ts       # Configuração do Tailwind
├── Dockerfile               # Build para produção
├── docker-compose.prod.yml  # Orquestração Docker
└── deploy.sh                # Script de deploy
```

## 🎨 Páginas

### Landing Page (`/`)
- Hero com CTAs para Personal e Aluno
- Seção de Recursos
- Como Funciona (com carrossel de telas do app)
- Planos e Preços
- Depoimentos
- CTA Final

### Explorar Recursos (`/recursos`)
- Recursos para Personal Trainers
- Recursos para Alunos
- Filtro por tipo de usuário

## 🔗 Integração

A aplicação web se conecta com:
- **Backend API:** `personal_trainer_backend` (porta 3001)
- **Nginx Proxy:** `personal_trainer_infrastructure`

## 🌐 URLs de Produção

- **Web:** https://personalweb.infinityitsolutions.com.br
- **API:** https://personalapi.infinityitsolutions.com.br

## 📦 Scripts Disponíveis

| Comando | Descrição |
|---------|-----------|
| `npm run dev` | Inicia servidor de desenvolvimento |
| `npm run build` | Gera build de produção |
| `npm run preview` | Preview do build de produção |
| `npm run generate` | Gera site estático |
| `npm run postinstall` | Prepara o Nuxt |

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova feature'`)
4. Push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto é privado e de uso exclusivo.

---

Desenvolvido com ❤️ para conectar Personal Trainers e Alunos.

# yarn
yarn build

# bun
bun run build
```

Locally preview production build:

```bash
# npm
npm run preview

# pnpm
pnpm preview

# yarn
yarn preview

# bun
bun run preview
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.
