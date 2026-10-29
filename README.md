<div align="center">
  <h1>👽 AlienCodes</h1>
  <p><strong>Sites e sistemas de outro mundo.</strong></p>
  <p>Projeto web com frontend em Vue.js e API/backend em Laravel, organizado em aplicações separadas.</p>
</div>

---

## ✨ Sobre o projeto

Este repositório reúne o site da AlienCodes: uma interface frontend em Vue 2, uma API em Laravel 5.7 com autenticação via Passport e uma experiência offline experimental em `alienoffline/`.

## 🧰 Tecnologias

- **Frontend:** Vue 2, Vue Router, Vuex e Webpack
- **Backend:** PHP 7.1+, Laravel 5.7 e Laravel Passport
- **Offline:** página estática com service worker

## 🚀 Como executar

### Backend

```bash
cd backend
composer install
cp .env.example .env
php artisan key:generate
```

Configure banco de dados, e-mail e demais integrações no `.env`. Depois:

```bash
php artisan migrate
php artisan passport:install
php artisan serve
```

### Frontend

Em outro terminal:

```bash
cd front-end
npm install
npm run dev
```

Para gerar os arquivos de produção, use `npm run build`.

## 📁 Estrutura

| Pasta | Conteúdo |
| --- | --- |
| `backend/` | API e serviços em Laravel |
| `front-end/` | Aplicação Vue.js |
| `alienoffline/` | Protótipo estático com suporte offline |

> Use credenciais próprias em arquivos locais de configuração. Nunca publique chaves, senhas ou tokens.
