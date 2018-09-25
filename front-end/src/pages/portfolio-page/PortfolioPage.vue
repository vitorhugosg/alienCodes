<template>

  <div>
      
        <nav-bar-home></nav-bar-home>
        <header-secundario titulo="Portfólio-Page" backgroundImage="/static/assets/images/imagens/banner-port2.jpg">
                </header-secundario>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <carrousel-grande>

                    </carrousel-grande>
                </div>
            </div>
            <div class="row">
                <div class="col-md-9 py-5">
                    <titulo-e-texto></titulo-e-texto>
                </div>
                <div class="col-md-3 py-5">
                    <side-bar-list>

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
  }
};
</script>

<style scoped>
</style>
