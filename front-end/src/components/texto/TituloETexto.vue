<template>

  <div>
      <h2>{{titulo}}</h2>
      <div class="texto">
           <p v-html="texto">
                
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
