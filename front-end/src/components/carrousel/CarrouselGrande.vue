<template>

  <div>
      <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item" :class="{active: chave == 0}" v-for="(imagem, chave) in imagens" :key="imagem.id">
                <img class="d-block w-100" :src="imagem.path">
            </div>
            
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
  </div>
  
</template>

<script>


export default {
  name: "CarrouselGrande",
  props:[
      'imagens'
  ],
  components: {

  },
  created(){
      console.log(this.imagens);
  }
};
</script>

<style scoped>
.carousel-item{
    margin-top:30px;
    object-fit: cover;
    object-position: center;
    max-height: 600px;
}


</style>
