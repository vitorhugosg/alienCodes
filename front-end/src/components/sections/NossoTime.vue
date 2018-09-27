<template>

  <!-- Section: Team v.4 -->
    <section class="cor-section py-5">
        <div class="container">

       
        <div class="row">
            <div class="col-md-12">
                <!-- Section heading -->
                <div class="row">
                    <div class="col-md-12 text-center  titulo">
                        <h2 class="background-title">NOSSOS ALIENS</h2>
                    </div>
                </div>
            
                <div class="row">

                    <!-- Grid column -->
                    <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                    <div class="avatar mx-auto">
                        <img src="/static/assets/images/imagens/bia.jpg" class="rounded-circle z-depth-1 img-fluid" alt="Sample avatar">
                    </div>
                    <h5 class="font-weight-bold mt-4 mb-3 space-text">Bianca Carlsen</h5>
                    <p class="text-uppercase deixar-verde"><strong>WEB DESIGNER</strong></p>
                    <p class="grey-text">
"Olá, eu serei responsável por desenhar seu projeto. Prepare-se para alavancar seu negócio com uma interface diferenciada".</p>
                    <ul class="list-unstyled mb-0">
                        <!-- Facebook -->
                        <a href="https://www.facebook.com/bia.carlsen" target="_blank" class="p-2 fa-lg fb-ic">
                        <i class="fa fa-facebook deixar-verde"> </i>
                        </a>
                        <!-- Github -->
                        <a href="https://github.com/biacarlsen" target="_blank" class="p-2 fa-lg tw-ic">
                           <i class="fa fa-github deixar-verde"> </i>
                        </a>
                        <!-- Linkedin -->
                        <a href="https://www.linkedin.com/in/bianca-carlsen-897391104/" target="_blank" class="p-2 fa-lg ins-ic">
                            <i class="fa fa-linkedin deixar-verde" aria-hidden="true"></i>
                        </a>
                    </ul>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                    <div class="avatar mx-auto">
                        <img src="/static/assets/images/imagens/vitor.jpg" class="rounded-circle z-depth-1 img-fluid" alt="Sample avatar">
                    </div>
                    <h5 class="font-weight-bold mt-4 mb-3 space-text">Vitor Hugo</h5>
                    <p class="text-uppercase deixar-verde"><strong>Web developer</strong></p>
                    <p class="grey-text">“Olá, eu sou a pessoa que irá desenvolver o código do seu projeto. Pode contar comigo, porque missão dada é missão cumprida!“

</p>
                    <ul class="list-unstyled mb-0">
                        <!-- Facebook -->
                        <a href="https://www.facebook.com/ufovhsg" target="_blank" class="p-2 fa-lg fb-ic">
                        <i class="fa fa-facebook deixar-verde"> </i>
                        </a>
                        <!-- Github -->
                        <a href="https://github.com/vitorhugosg" target="_blank" class="p-2 fa-lg tw-ic">
                           <i class="fa fa-github deixar-verde"> </i>
                        </a>
                        <!-- Linkedin -->
                        <a href=" https://www.linkedin.com/in/vhcode/" target="_blank" class="p-2 fa-lg ins-ic">
                            <i class="fa fa-linkedin deixar-verde" aria-hidden="true"></i>
                        </a>
                    </ul>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                    <div class="avatar mx-auto">
                        <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(30).jpg" class="rounded-circle z-depth-1" alt="Sample avatar">
                    </div>
                    <h5 class="font-weight-bold mt-4 mb-3 space-text">Maria Smith</h5>
                    <p class="text-uppercase deixar-verde"><strong>FRONTEND DEVELOPER</strong></p>
                    <p class="grey-text">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim est fugiat nulla id eu laborum.</p>
                    <ul class="list-unstyled mb-0">
                        <!-- Facebook -->
                        <a href="#" target="_blank"  class="p-2 fa-lg fb-ic">
                        <i class="fa fa-facebook deixar-verde"> </i>
                        </a>
                        <!-- Github -->
                        <a href="#" target="_blank" class="p-2 fa-lg tw-ic">
                           <i class="fa fa-github deixar-verde"> </i>
                        </a>
                        <!-- Linkedin -->
                        <a href="#" target="_blank" class="p-2 fa-lg ins-ic">
                            <i class="fa fa-linkedin deixar-verde" aria-hidden="true"></i>
                        </a>
                    </ul>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-lg-3 col-md-6 col-sm-12 text-center">
                    <div class="avatar mx-auto">
                        <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(32).jpg" class="rounded-circle z-depth-1" alt="Sample avatar">
                    </div>
                    <h5 class="font-weight-bold mt-4 mb-3 space-text">Tom Adams</h5>
                    <p class="text-uppercase deixar-verde"><strong>Backend developer</strong></p>
                    <p class="grey-text">Perspiciatis repellendus ad odit consequuntur, eveniet earum nisi qui consectetur totam officia voluptates perferendis voluptatibus aut.</p>
                    <ul class="list-unstyled mb-0">
                        <!-- Facebook -->
                        <a href="#" target="_blank" class="p-2 fa-lg fb-ic">
                        <i class="fa fa-facebook deixar-verde"> </i>
                        </a>
                        <!-- Github -->
                        <a href="#" target="_blank" class="p-2 fa-lg tw-ic">
                           <i class="fa fa-github deixar-verde"> </i>
                        </a>
                        <!-- Linkedin -->
                        <a href="#" target="_blank" class="p-2 fa-lg ins-ic">
                            <i class="fa fa-linkedin deixar-verde" aria-hidden="true"></i>
                        </a>
                    </ul>
                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->
        
            </div>
    
        </div>

     </div>
    </section>
    <!-- Section: Team v.4 -->
  
</template>

<script>
export default {
  name: 'NossoTime'
}
</script>

<style scoped>

.card-wrapper{
    min-height: 580px;
    height: auto;
}
.avatar{
    text-align: center;
    padding: 5px;
    transition: transform .2s; /* Animation */
    margin: 0 auto;
}
.avatar:hover {
    transform: scale(1.5);
}
.avatar img{
    max-width: 100px;
    max-height: 100px;
    margin: 0 auto;
    display: inline-block;
}

.cor-section {
    background-color: #282A2D;
}

.deixar-verde {
    background: -webkit-linear-gradient(#4DF0D9 , #009069);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.space-text {
    letter-spacing: 1px;;
}
</style>
