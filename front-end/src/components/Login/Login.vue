<template>
    <section id="sectionLogin" class="py-5" style="background-image: url('https://images.alphacoders.com/109/thumb-1920-109093.jpg')">
        <div class='container'>
            <div class="row">
                <div class="col-xl-5 col-lg-6 col-md-10 col-sm-12 mx-auto mt-5">
                    <formulario-login class=" d-flex justify-content-center">

                    </formulario-login>
                </div>
                
            </div>
        </div>
    </section>
    
</template>

<script>
import FormularioLogin from '@/components/login/FormularioLogin'
export default {
  name: "Login",
  components:{
      FormularioLogin
  }
};
</script>

<style>
    #sectionLogin{
        background-size: cover;
        background-position: center;
    }
</style>
