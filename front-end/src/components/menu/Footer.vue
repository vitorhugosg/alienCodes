<template>
    <!-- Footer -->
<footer class="page-footer font-small indigo">

    <!-- Footer Links -->
    <div class="container">

      <!-- Grid row-->
      <div class="row text-center d-flex justify-content-center pt-5 mb-3">

        <!-- Grid column -->
        <div class="col-md-2 mb-3">
          <h6 class="nav-footer text-uppercase font-weight-bold">
            <router-link to="/">Home</router-link>
          </h6>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 mb-3">
          <h6 class="nav-footer text-uppercase font-weight-bold">
            <router-link to="/sobre">Sobre</router-link>
          </h6>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 mb-3">
          <h6 class="nav-footer text-uppercase font-weight-bold">
            <router-link to="/servicos">Serviços</router-link>
          </h6>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 mb-3">
          <h6 class="nav-footer text-uppercase font-weight-bold">
            <router-link to="/portfolio">Portfólio</router-link>
          </h6>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 mb-3">
          <h6 class="nav-footer text-uppercase font-weight-bold">
            <router-link to="/contato">Contato</router-link>
          </h6>
        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row-->
      <hr class="grey darken-2" style="margin: 0 15%;">

      <!-- Grid row-->
      <!-- <div class="row d-flex text-center justify-content-center mb-md-0 mb-4">

 
        <div class="col-md-8 col-12 mt-5">
          <p style="line-height: 1.7rem">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem
            aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
            Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur.</p>
        </div>
    

      </div> -->
      <!-- Grid row-->
      <hr class="clearfix d-md-none rgba-white-light" style="margin: 10% 15% 5%;">

      <!-- Grid row-->
      <div class="row pb-3">

        <!-- Grid column -->
        <div class="col-md-12">

          <div class="mb-5 flex-center">

            <!-- Facebook -->
            <a class="fb-ic">
              <i class="fa fa-facebook fa-lg white-text mr-4 deixar-verde"> </i>
            </a>
            <!-- Twitter -->
            <a class="tw-ic">
              <i class="fa fa-twitter fa-lg white-text mr-4 deixar-verde"> </i>
            </a>
            <!-- Google +-->
            <a class="gplus-ic">
              <i class="fa fa-google-plus fa-lg white-text mr-4 deixar-verde"> </i>
            </a>
            <!--Instagram-->
            <a class="ins-ic">
              <i class="fa fa-instagram fa-lg white-text mr-4 deixar-verde"> </i>
            </a>
          </div>

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row-->

    </div>
    <!-- Footer Links -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© Copyright 2018 - 
      <a href="#">AlienCodes</a>
    </div>
    <!-- Copyright -->

  </footer>
  <!-- Footer -->
</template>
<script>
export default {
  name: 'FooterVue'
}
</script>

<style scoped>
  .footer-copyright{
      background-image: linear-gradient(#7873F5,  #FF6EC4); 
  }
  .indigo {
         background-image: linear-gradient(#1B1D20,  #282A2D); 
        letter-spacing: .1em;
  }

  .nav-footer a:hover {
		border-bottom: 4px dotted #fff; 
	}

.deixar-verde:hover {
    color: #009069 !important;
}
  

</style>
