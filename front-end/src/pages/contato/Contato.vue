<template>
   
        <div>
            <nav-bar-home></nav-bar-home>
            <header-secundario titulo="Contato" backgroundImage="/static/assets/images/imagens/banner-contato.jpg">
                </header-secundario>
                <section-contato>
                    
                </section-contato>
            <footer-vue></footer-vue>
        </div>
    
  
</template>

<script>
import FooterVue from '@/components/menu/Footer'
import navBarHome from '@/components/menu/Menuhome'
import HeaderSecundario from '@/components/sections/HeaderSecundario'
import SectionContato from '@/components/sections/SectionContato'
export default {
    name: 'Contato',
    components:{
        FooterVue,
        navBarHome,
        HeaderSecundario,
        SectionContato
    }
}
</script>

<style scoped>


</style>
