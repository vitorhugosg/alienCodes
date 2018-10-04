<template>

  <div>
      <h2 class="background-title">{{titulo}}</h2>
      <div class="texto">
           <p v-html="texto" class="grey-text">
                
            </p>
      </div>
     
  </div>
  
</template>

<script>


export default {
  name: "TituloETexto",
  props:[
    'titulo',
    'texto'
  ],
  components: {
      
  },
  created(){
    console
  }
};
</script>

<style scoped>





</style>
