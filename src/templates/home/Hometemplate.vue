<template>
    <div>
        <nav-bar-home>
            
        </nav-bar-home>
        
    </div>
</template>

<script>
import navBarHome from '@/components/menu/Menuhome'

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
        navBarHome
    }
}
</script>

<style scoped>
    .menuTotal{
        background: #000;
        position: fixed;
        top: 0px;
        bottom: 0px;
        right: 0px;
        left: 0px;
        z-index: 99;
        min-height: 100%;
    }
    .menuTotal .row,
    .menuTotal .col-md-12{
        height: 100%;
    }
    .height100{
        height: 100%;
    }
   
</style>
