<template>
    <div>
        <div id="carousel-example-2" class="carousel slide carousel-fade" data-ride="carousel">
            <!--Indicators-->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-2" data-slide-to="1"></li>
            </ol>
            <!--/.Indicators-->
            <!--Slides-->
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                <div class="view">
                    <img class="d-block w-100" src="/static/assets/images/imagens/fundo-nosso-et-sobre.jpg" alt="First slide" style="
                    object-fit: cover; min-height:500px;">
                    
                </div>
                <div class="carousel-caption">
                    <h1 class="titulo_mobile  h1-responsive">ALIENCODES</h1>
                    <vue-typed-js class="text-center" :loop="true" :backSpeed="10" :typeSpeed="50" :strings="['Desenvolvendo sites e sistemas de outro mundo!']">
                        <h3 class="h3-responsive typing text-center w-100"></h3>
                    </vue-typed-js>
                    
                </div>
                </div>
                <div class="carousel-item">
                    <!--Mask color-->
                    <div class="view">
                        <img class="d-block w-100" src="/static/assets/images/imagens/BANNERS-02.jpg" alt="Second slide" style="
                        object-fit: cover; min-height:500px;">
                        
                    </div>
                    <div class="carousel-caption">
                        <h3 class="h3-responsive">Nós construimos com</h3>
                        <vue-typed-js class="text-center" :loop="true" :typeSpeed="100" :backSpeed="10" :strings="['CRIATIVIDADE ' +'E'+' INOVAÇÃO']" :contentType="'html'">
                            <h1 class="titulo_mobile h1-responsive  w-100 text-center typing"></h1>
                        </vue-typed-js>
                        
                    </div>
                </div>
                
            </div>
            <!--/.Slides-->
            <!--Controls-->
            <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
            <!--/.Controls-->
            </div>
    </div>
</template>

<script>

export default {
name:'CarrouselHome',
    data: function () {
        return {
            
        }
    },
    methods:{
        
    },
    components:{
    },
    created(){
       

    }
}
</script>

<style scoped>
   .carousel-caption{
       bottom: 30% !important;
   }
   .carousel-caption h1{
       font-size: 4em;
       font-weight: 900;
   }

@media (max-width: 700px) { 
        .titulo_mobile{
                font-size: 1em;
        }
        .carousel-caption h1{
            font-size: 2em;
            font-weight: 900;
        }
    }


</style>
