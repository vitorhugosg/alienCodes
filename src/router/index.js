import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/pages/home/Home'
import Sobre from '@/pages/sobre/Sobre'
import Servicos from '@/pages/servicos/Servicos'
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
    }
  ]
})
