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
                    <img class="d-block w-100" src="/static/assets/images/imagens/fundo-nosso-et-sobre.jpg" alt="First slide">
                    
                </div>
                <div class="carousel-caption">
                    <h1 class="h1-responsive">ALIEN CODES</h1>
                    <h3 class="h3-responsive">Desenvolvendo sites e sistemas de outro mundo!</h3>
                    
                </div>
                </div>
                <div class="carousel-item">
                <!--Mask color-->
                <div class="view">
                    <img class="d-block w-100" src="/static/assets/images/imagens/BANNERS-02.jpg" alt="Second slide">
                    
                </div>
                <div class="carousel-caption">
                    <h3 class="h3-responsive">Nós construimos com</h3>
                    <h1 class="h1-responsive">CRIATIVIDADE E INOVAÇÃO</h1>
                    
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
</style>
