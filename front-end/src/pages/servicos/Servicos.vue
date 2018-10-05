<template>
    <div>
        <nav-bar-home>

        </nav-bar-home>
        <header-secundario titulo="Serviços" backgroundImage="/static/assets/images/imagens/banner-servicos3.jpg">
        </header-secundario>
        <nossos-servicos>

        </nossos-servicos>
        <nosso-time>

        </nosso-time>
        <call-action>

        </call-action>
        
        <!-- <testemunhos>

        </testemunhos> -->
        <footer-vue>
        </footer-vue>
    </div>
</template>

<script>

import FooterVue from '@/components/menu/Footer'
import navBarHome from '@/components/menu/Menuhome'
import HeaderSecundario from '@/components/sections/HeaderSecundario'
import NossosServicos from '@/components/sections/NossosServicos'
import NossoTime from '@/components/sections/NossoTime'
import CallAction from '@/components/sections/CallAction'
import Testemunhos from '@/components/sections/Testemunhos'

export default {
    name: "Servicos",
    components: {
        navBarHome,
        HeaderSecundario,
        FooterVue,
        NossosServicos,
        NossoTime,
        CallAction,
        Testemunhos
    }
};
</script>

<style scoped>

</style>
