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
    usuario: sessionStorage.getItem('usuario') ? JSON.parse(sessionStorage.getItem('usuario')) : null
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
    }
  },
  //meetodos para auterar os valores 
  mutations:{
    setUsuario(state, n){
      state.usuario = n;
    }
  }
}
Vue.use(Vuex)

Vue.config.productionTip = false
//definindo stancia do axios:
Vue.prototype.$http = axios;
//definindo variavel URL
Vue.prototype.$urlAPI = 'http://127.0.0.1:8000/api/';
/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store: new Vuex.Store(store),
  template: '<App/>',
  components: { App }
})
