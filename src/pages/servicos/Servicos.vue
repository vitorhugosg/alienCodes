<template>
    <div>
        <nav-bar-home>

        </nav-bar-home>
        <header-secundario titulo="Servicos" backgroundImage="/static/assets/images/imagens/banner-servicos2.jpg">
        </header-secundario>
        <nossos-servicos>

        </nossos-servicos>
        <nosso-time>

        </nosso-time>
        <call-action>
            
        </call-action>
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
export default {
    name: "Servicos",
    components: {
        navBarHome,
        HeaderSecundario,
        FooterVue,
        NossosServicos,
        NossoTime,
        CallAction
    }
};
</script>

<style scoped>

</style>
