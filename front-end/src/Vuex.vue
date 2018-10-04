//configurando vuex
var store = {
  //variaveis e listas
  state: {
    usuario: sessionStorage.getItem('usuario') ? JSON.parse(sessionStorage.getItem('usuario')) : null,
    conteudosLinhaTempo:[]
  },
  //metodos para listar os getters
  getters:{
    getUsuario: state =>{
      return state.usuario;
    },
    getToken: state =>{
      if(state.usuario.token != null){
        return state.usuario.token;
      }else{return;}
        
      
      
    },
    getConteudosLinhaTempo: state=>{
      return state.conteudosLinhaTempo;
    }
  },
  //meetodos para auterar os valores 
  mutations:{
    setUsuario(state, n){
      state.usuario = n;
    },
    setConteudosLinhaTempo(state, n){
      state.conteudosLinhaTempo = n;
    },
    setPaginacaoConteudosLinhaTempo(state,lista){
      for (let item of lista) {
        state.conteudosLinhaTempo.push(item);
      }
    }
  }
}