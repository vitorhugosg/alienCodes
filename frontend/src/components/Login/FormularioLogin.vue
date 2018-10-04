<template>
    <div class="card wow fadeIn animated" data-wow-delay="0.3s" style="visibility: visible; animation-name: fadeIn; animation-delay: 0.3s;">
        <div class="card-body text-white">

          <!--Header-->
          <div class="form-header purple-gradient text-center">
              <h3><img src="/static/assets/images/imagens/logonew.png" alt="" class="img-fluid" style="max-height: 50px; width: auto;"></h3>
          </div>
          <h2>Se você é um alien, entre ;)</h2>
          <div id="erros" class="md-form py-2">
              {{msgError}}
          </div>
          <div class="md-form">
              <i class="fa fa-envelope prefix white-text"></i>
              <input v-model="  nomeLogin" type="text" id="orangeForm-email" class="form-control text-white" name="emailLogin">
              <label for="orangeForm-email">Digite aqui seu email</label>
          </div>

          <div class="md-form">
              <i class="fa fa-lock prefix white-text"></i>
              <input v-model="senhaLogin" type="password" id="orangeForm-pass" class="form-control text-white" name="senhaLogin">
              <label for="orangeForm-pass">Digite aqui sua senha</label>
          </div>

          <div class="text-center">
              <button v-on:click="enviarLogin()" class="btn purple-gradient btn-lg waves-effect waves-light">Login</button>
              <hr>
              <div class="inline-ul text-center d-flex justify-content-center">
                  <a class="p-2 m-2 fa-lg tw-ic"><i class="fa fa-twitter white-text"></i></a>
                  <a class="p-2 m-2 fa-lg li-ic"><i class="fa fa-linkedin white-text"> </i></a>
                  <a class="p-2 m-2 fa-lg ins-ic"><i class="fa fa-instagram white-text"> </i></a>
              </div>
          </div>
      </div>
  </div>
</template>

<script>

export default {
  name: "FormularioLogin",
  data(){
    return {
      nomeLogin: '',
      senhaLogin: '',
      msgError: ''
    }
  },
  methods:{
    enviarLogin(){
        this.msgError = '';
        this.$http.post(this.$urlAPI + 'usuario/login',{
            'email': this.nomeLogin,
            'password': this.senhaLogin,
        }).then(response =>{
            if(response.data.status){
                sessionStorage.setItem('usuario', JSON.stringify(response.data.usuario));
                this.$store.commit('setUsuario', response.data.usuario);
                this.$router.push('/dashboard');
            }else if(response.data.status == false && response.data.validacao){
                let erros = '';
                for(let erro of Object.values(response.data.erros)){
                    if(erro != 'no' && erro != 'false'){
                        erros += " - "+ erro + " <br>".replace('<br>', "\n");
                    }
                }
                this.msgError = erros;
            }else{
                this.msgError = 'Usuário não existe em nosso banco de dados';
            }
        }).catch(e => {
            console.log(e)
            this.msgError = 'Houve uma falha ao se conectar com servidor';
        });
    }
  }
};
</script>

<style scoped>
.card {
  background-color: rgba(229, 228, 255, 0.2);
}
#erros{
    color: red;
}
</style>
