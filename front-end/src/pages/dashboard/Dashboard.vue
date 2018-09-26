<template>
    <div>
      <MenuDashboard>

      </MenuDashboard>
      <main>
        <div class="container-fluid">
          <!--Section: Chat-->
            <section class="section">
              <div class="row">
                <div class="col-md-4">
                  <div class="card card-cascade cascading-admin-card">

                      <!--Card Data-->
                      <div class="admin-up">
                          <i class="fa fa-money primary-color"></i>
                          <div class="data">
                              <p>SALES</p>
                              <h4 class="font-weight-bold dark-grey-text">2000$</h4>
                          </div>
                      </div>
                      <!--/.Card Data-->

                      <!--Card content-->
                      <div class="card-body card-body-cascade">
                          <div class="progress mb-3">
                              <div class="progress-bar bg-primary" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                          <!--Text-->
                          <p class="card-text">Better than last week (25%)</p>
                      </div>
                      <!--/.Card content-->

                  </div>
                </div>
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
export default {
  name: "dashboard",
  components:{
    MenuDashboard,
    FooterDash
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

<style>

</style>
