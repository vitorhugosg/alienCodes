<template>

  <section class="cor-section py-5">
      <div class="container-fluid" >
          <div class="row m-0">
              <div class="col-md-12 text-center titulo">
                  <h2 class="background-title">NOSSOS PROJETOS</h2>
              </div>
          </div>
          
          <div class="row pb-5">
                <div class="controls text-center w-100">
                    <button type="button" class="btn purple-gradient btn-md btn-rounded" data-filter="all">All</button>
                    <button v-for="categoria in categorias" :key="categoria.id" type="button" class="btn purple-gradient btn-md btn-rounded" :data-filter="'.portfolio'+categoria.id">{{categoria.titulo_categoria}}</button>
                </div>
            </div>
            <div class="containerMix">
                <div class="row">
                    <div v-for="(portfolio, chave) in portfolios" :key="portfolio.id" :class="'col-md-3 col-sm-12 mix p-2 '+ classPortfolio[chave]" :data-order="portfolio.id">
                        <div class="view overlay">
                            <img :src="urlBase + portfolio.imagens[0].path" class="img-fluid " :alt="portfolio.titulo">
                            <div class="mask flex-center rgba-grey-strong">
                                <div class="row text-center">
                                    <div class="col-md-12">
                                        <p class="white-text d-block">{{portfolio.titulo}}</p>
                                    </div>
                                    <div class="col-md-12">
                                        <router-link class="btn purple-gradient btn-rounded btn-sm" :to="'/portfolio/'+ portfolio.id +'/ver'">Ver Projeto</router-link>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
          </div>
          <div class="row pt-5">
              <div class="col-md-12 text-center">                  
                 <router-link to="/portfolio"><button type="button" class="btn btn-outline-default btn-rounded waves-effect">VER MAIS</button></router-link> 
              </div>
          </div>
      </div>
  </section>
  
</template>

<script>
import mixitup from 'mixitup';


export default {
  name: 'PortfolioMix',
  data(){
      return {
          portfolios: false,
          categorias: {},
          classPortfolio: []
      }
  },
  mounted(){

      this.$http.get(this.$urlAPI + 'portfolio/getportfolio')
        .then(response => {
            if(response.data){
                this.portfolios = response.data;
                localStorage.setItem('portfolio', JSON.stringify(response.data));
                this.$store.commit('setPortfolio', response.data);
                for (let i = 0; i < this.portfolios.length; i++) {
                    const element = this.portfolios[i];
                    this.classPortfolio[i] = '';
                    for (let i2 = 0; i2 < element.categorias.length; i2++) {
                        const cat = element.categorias[i2];
                        this.classPortfolio[i] = this.classPortfolio[i] +'portfolio'+ cat.categoria_portfolio_id + ' ';
                        
                    }
                    
                }
                console.log(this.portfolios);
                
            }
        })
        .catch(function (error) {
            console.log(error);
            alert('ERROR: Tente novamente mais tarde!');
        });

        this.urlBase = this.$urlBaseAssets;
        this.$http.get(this.$urlAPI + 'portfolio/getcategorias')
        .then(response => {
            if(response.data){
                this.categorias = response.data;
            }
        })
        .catch(function (error) {
            console.log(error);
            alert('ERROR: Tente novamente mais tarde!');
            
        });

        setTimeout(() => {
            
            var containerEl = document.querySelector('.containerMix');
            var mixer = mixitup(containerEl);
        }, 1000);
        

        
    }
}
</script>

<style scoped>

.cor-section {
    background-color: #1B1D20;

}

.btn {
    letter-spacing: .1em;
}

</style>
