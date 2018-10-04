<template>

  <div>
      
        <nav-bar-home></nav-bar-home>
        <header-secundario titulo="Portfólio-Page" backgroundImage="/static/assets/images/imagens/banner2-port2.jpg">
                </header-secundario>
        <div class="container" v-if="this.portfolio">
            <div class="row">
                <div class="col-md-12">
                    <carrousel-grande :imagens="portfolio.imagens">

                    </carrousel-grande>
                </div>
            </div>
            <div class="row">
                <div class="col-md-9 py-5">
                    <titulo-e-texto :texto="portfolio.descricao" :titulo="portfolio.titulo"></titulo-e-texto>
                </div>
                <div class="col-md-3 py-5">
                    <side-bar-list :categorias="portfolio.categorias">

                    </side-bar-list>
                </div>
            </div>
        </div>
        
        <footer-vue></footer-vue>
  </div>
  
</template>

<script>
import FooterVue from "@/components/menu/Footer";
import navBarHome from "@/components/menu/Menuhome";
import HeaderSecundario from "@/components/sections/HeaderSecundario";
import PortfolioMix from "@/components/sections/PortfolioMix";
import CarrouselGrande from "@/components/carrousel/CarrouselGrande";
import TituloETexto from "@/components/texto/TituloETexto";
import SideBarList from "@/components/sidebar/SiderBarList";


export default {
  name: "Portfolio",
  components: {
    FooterVue,
    navBarHome,
    HeaderSecundario,
    PortfolioMix,
    CarrouselGrande,
    TituloETexto,
    SideBarList
  },
  created(){
      this.$http.get(this.$urlAPI + 'portfolio/getportfoliobyid/'+ this.$route.params.id)
    .then(response => {
        if(response.data){
            
            this.portfolio = response.data;
            console.log(this.portfolio);
        }
    })
    .catch(function (error) {
        console.log(error);
        alert('ERROR: Tente novamente mais tarde!');
        
    });
  },
  data(){
      return {
          portfolio: false
      }
  }
};
</script>

<style scoped>
</style>
