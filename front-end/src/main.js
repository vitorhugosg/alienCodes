// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import axios from 'axios'
import Vuex from 'vuex'


//configurando vuex
var store = {
  //variaveis e listas
  state: {
    usuario: sessionStorage.getItem('usuario') ? JSON.parse(sessionStorage.getItem('usuario')) : null,
    portfolio: []
  },
  //metodos para listar os getters
  getters:{
    getUsuario: state =>{
      return state.usuario;
    },
    getToken: state =>{
      //pegando token
      if(state.usuario.token != null){
        return state.usuario.token;
      }else{
        return;
      }
    },
    getPortfolio: state=>{
      return state.portfolio;
    }
  },
  //meetodos para auterar os valores 
  mutations:{
    setUsuario(state, n){
      state.usuario = n;
    },
    setPortfolio(state, n){
      state.portfolio = n;
    }
  }
}

Vue.use(Vuex)

Vue.config.productionTip = false
//definindo stancia do axios:
Vue.prototype.$http = axios;
//definindo variavel URL
console.log();
if(process.env.NODE_ENV == 'development'){
  Vue.prototype.$urlAPI = 'http://127.0.0.1:8000/api/';
  Vue.prototype.$urlBaseAssets = 'http://127.0.0.1:8000/api/storage/';
}else{
  Vue.prototype.$urlAPI = 'https://api.aliencodes.com.br/api/';
  Vue.prototype.$urlBaseAssets = 'https://api.aliencodes.com.br/storage/';
}

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store: new Vuex.Store(store),
  template: '<App/>',
  components: { App }
})
