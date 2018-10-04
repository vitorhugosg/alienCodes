<template>

    <section class="py-5 cor-section">
        <div class="container">
            <!-- Section: Contact v.3 -->
            <div class="contact-section my-5">

            <!-- Form with header -->
            <div class="card" style="background-color:#3a3d40;">

                <!-- Grid row -->
                <div class="row">

                <!-- Grid column -->
                <div class="col-lg-8">

                    <div class="card-body form">

                    <!-- Header -->
                    <h3 class="mt-4 deixando-verde"><i class="fa fa-envelope pr-2 deixando-verde"></i>Fale Conosco</h3>

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-md-6">
                        <div class="md-form mb-0">
                            <input type="text" id="form-contact-name" class="form-control">
                            <label for="form-contact-name" class="">Seu Nome</label>
                        </div>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-6">
                        <div class="md-form mb-0">
                            <input type="text" id="form-contact-email" class="form-control">
                            <label for="form-contact-email" class="">Seu E-mail</label>
                        </div>
                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-md-6">
                        <div class="md-form mb-0">
                            <input type="text" id="form-contact-phone" class="form-control">
                            <label for="form-contact-phone" class="">Seu Telefone</label>
                        </div>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-6">
                        <div class="md-form mb-0">
                            <input type="text" id="form-contact-company" class="form-control">
                            <label for="form-contact-company" class="">Sua Empresa</label>
                        </div>
                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-md-12">
                        <div class="md-form mb-0">
                            <textarea type="text" id="form-contact-message" class="form-control md-textarea" rows="3"></textarea>
                            <label for="form-contact-message" >Sua Mensagem</label>
                            <a class="btn-floating btn-lg blue verdin">
                            <i class="fa fa-send-o"></i>
                            </a>
                        </div>
                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->

                    </div>

                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-lg-4 ">

                    <div class="card-body contact text-center h-100 white-text verdin">

                    <h3 class="my-4 pb-2">Nossos Contatos</h3>
                    <ul class="text-lg-left list-unstyled ml-4">
                        <li>
                        <p><i class="fa fa-map-marker pr-2 verdin-claro"></i>Campeche - Ilha da Magia - Plateta Terra - Sistema Solar - Via Láctea</p>
                        </li>
                        <li>
                        <p><i class="fa fa-phone pr-2 verdin-claro"></i>48 99190-0991</p>
                        </li>
                        <li>
                        <p><i class="fa fa-envelope pr-2 verdin-claro"></i>contato@aliencodes.com.br</p>
                        </li>
                    </ul>
                    <hr class="hr-light my-4">
                        <ul class="list-inline text-center list-unstyled">
                            <li class="list-inline-item">
                                <a class="p-2 fa-lg li-ic">
                                     <i class="fa fa-facebook verdin-claro"> </i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="p-2 fa-lg ins-ic">
                                    <i class="fa fa-instagram verdin-claro"> </i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a class="p-2 fa-lg tw-ic">
                                    <i class="fa fa-twitter verdin-claro"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- Grid column -->

                </div>
                <!-- Grid row -->

            </div>
            <!-- Form with header -->

            </div>
            <!-- Section: Contact v.3 -->
        </div>
    </section>
  
</template>

<script>
export default {
  name: 'SectionContato'
}
</script>

<style scoped>

.cor-section {
    background-color: #282A2D;
    color:#fff;
}

.deixando-verde {
    background: -webkit-linear-gradient(#4DF0D9 , #009069);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.verdin {
    background-color: #009069 !important;
}
.verdin-claro {
    color: #4DF0D9 !important;
}
.md-form label.active{
    border-color: #fff !important;
    color: #FFF;
}

/* .verdezando.active{
    color:#009069 !important;
    
} */

</style>
