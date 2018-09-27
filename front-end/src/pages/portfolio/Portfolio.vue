<template>

  <div>
		
      <nav-bar-home></nav-bar-home>
      <header-secundario titulo="Portfólio" backgroundImage="/static/assets/images/imagens/banner2-port2.jpg">
			</header-secundario>
			<portfolio-mix></portfolio-mix>
      <footer-vue></footer-vue>
  </div>
  
</template>

<script>
import FooterVue from "@/components/menu/Footer";
import navBarHome from "@/components/menu/Menuhome";
import HeaderSecundario from "@/components/sections/HeaderSecundario";
import PortfolioMix from "@/components/sections/PortfolioMix";

export default {
  name: "Portfolio",
  components: {
    FooterVue,
    navBarHome,
    HeaderSecundario,
    PortfolioMix
  }
};
</script>

<style scoped>
</style>
