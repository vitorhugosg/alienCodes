import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/pages/home/Home'
import Sobre from '@/pages/sobre/Sobre'
import Servicos from '@/pages/servicos/Servicos'
import Contato from '@/pages/contato/Contato'
import Portfolio from '@/pages/portfolio/Portfolio'
import PortfolioPage from '@/pages/portfolio-page/PortfolioPage'
import Login from '@/pages/login/login'
import Dashboard from '@/pages/dashboard/Dashboard'
import PortfolioDashboard from '@/pages/dashboard/PortfolioDashboard'
Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/Sobre',
      name: 'Sobre',
      component: Sobre
    },
    {
      path: '/Servicos',
      name: 'Servicos',
      component: Servicos
    },
    {
      path: '/portfolio',
      name: 'Portfolio',
      component: Portfolio
    },
    {
      path: '/Contato',
      name: 'Contato',
      component: Contato
    },
    {
      path: '/portfolio/:id/ver',
      name: 'PortfolioPage',
      component: PortfolioPage
    },
    {
      path: '/login',
      name: 'Login',
      component: Login
    },
    {
      path: '/dashboard',
      name: 'Dashboard',
      component: Dashboard
    },
    {
      path: '/dashboard/portfolio',
      name: 'PortfolioDashboard',
      component: PortfolioDashboard
    },
  ],
  scrollBehavior (to, from, savedPosition) {
    return { x: 0, y: 0 }
  }
})
