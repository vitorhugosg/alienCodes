<template>
    <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="#">Navbar</a>
                <div v-on:click="ativarMenu"><i class="fas fa-bars"></i></div>
            </div>
            
        </nav>
        <transition name="custom-classes-transition"
    enter-active-class="animated tada"
    leave-active-class="animated bounceOutRight">
            <div v-if="menuAtivado" class="menuTotal">
                <div class="row">
                    <div class="col-md-12">
                        <div class="text-center text-white middlevertical">
                            <li><router-link to="/">Home</router-link>   </li>
                            <li><router-link to="/">Contato</router-link></li>
                            <li><router-link to="/">Portfolio</router-link></li>
                            <li><router-link to="/">Sobre</router-link></li>
                        </div>
                    </div>
                </div>
            </div>
        </transition>
    </div>
</template>

<script>
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
