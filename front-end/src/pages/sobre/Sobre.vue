<template>
    <div>
        <nav-bar-home>

        </nav-bar-home>
        <header-secundario titulo="sobre" backgroundImage="/static/assets/images/imagens/ets-sobre3.jpg">

        </header-secundario>
        <sobre-duas-colunas>

        </sobre-duas-colunas>
        <nosso-time></nosso-time>
        <footer-vue>
        </footer-vue>
        
    </div>
    
</template>

<script>
import FooterVue from '@/components/menu/Footer'
import navBarHome from '@/components/menu/Menuhome'
import HeaderSecundario from '@/components/sections/HeaderSecundario'
import SobreDuasColunas from '@/components/sections/SobreDuasColunas'
import NossoTime from '@/components/sections/NossoTime'
export default {
    name: 'Sobre',
    components:{
        FooterVue,
        navBarHome,
        HeaderSecundario,
        SobreDuasColunas,
        NossoTime
    }
}
</script>

<style>


</style>
