<template>
    <div>
        <nav-bar-home>
            
        </nav-bar-home>
        <carrousel-home>

        </carrousel-home>
        <section-tres-ideias>

        </section-tres-ideias>
        <section-como-fazemos>

        </section-como-fazemos>
        <portfolio-mix>

        </portfolio-mix>
        <nosso-time>
            
        </nosso-time>
        <Skills>

        </Skills>
        <nossos-servicos>
        </nossos-servicos>
        <FooterVue>

        </FooterVue>
    </div>
</template>

<script>
import navBarHome from '@/components/menu/Menuhome'
import CarrouselHome from '@/components/carrousel/CarrouselHome'
import SectionTresIdeias from '@/components/sections/SectionTresIdeias'
import SectionComoFazemos from '@/components/sections/SectionComoFazemos'
import PortfolioMix from '@/components/sections/PortfolioMix'
import NossoTime from '@/components/sections/NossoTime'
import Skills from '@/components/sections/Skills'
import NossosServicos from '@/components/sections/NossosServicos'
import FooterVue from '@/components/menu/Footer'

export default {
name:'Hometemplate',
    data: function () {
        return {
            menuAtivado: false
        }
    },
    methods:{
        ativarMenu(){
            this.menuAtivado = !this.menuAtivado
        }
    },
    components:{
        navBarHome,
        CarrouselHome,
        SectionTresIdeias,
        SectionComoFazemos,
        PortfolioMix,
        NossoTime,
        Skills,
        NossosServicos,
        FooterVue
    }
}
</script>

<style scoped>
    
    
   
</style>
