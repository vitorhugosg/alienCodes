<template>
    <div>
      <MenuDashboard>

      </MenuDashboard>
      <main>
        <div class="container-fluid">
          <!--Section: Chat-->
            <section class="section">
              <div class="row">
                <slot name="conteudo">

                </slot>
              </div>
            </section>
        </div>
      </main>
      <footer-dash></footer-dash>
      
    </div>
</template>

<script>
import MenuDashboard from '@/components/menu/MenuDashboard'
import FooterDash from '@/components/menu/FooterDash'
import IndicadorCard from '@/components/cards/IndicadorCard'
export default {
  name: "dashboard",
  components:{
    MenuDashboard,
    FooterDash,
    IndicadorCard
  },
  created(){
    let usuarioAux = this.$store.getters.getUsuario;
    if(!usuarioAux){
      router.push('/')
    }
    
  },
  methods: {
    toggleBodyClass(addRemoveClass, className) {
      const el = document.body;

      if (addRemoveClass === 'addClass') {
        el.classList.add(className);
      } else {
        el.classList.remove(className);
      }
    },
  },
  mounted() {
    this.toggleBodyClass('addClass', 'fixed-sn');
  },
  destroyed() {
    this.toggleBodyClass('removeClass', 'fixed-sn');
  }
};
</script>

<style scoped>
  .animated{
    background: #282A2D !important;
    min-height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
  }
  .fixed-sn{
    min-height: 100%;
    background: #282A2D !important;
  }
  slot{
      width: 100%;
  }
</style>
