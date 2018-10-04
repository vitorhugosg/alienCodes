<template>

  <div>
    <div class="card">
        <ul class="list-group list-group-flush">
            <li class="list-group-item text-center"><h3>Categorias</h3></li>
            <li v-for="(categoria, chave) in categorias" :key="chave" class="list-group-item">{{categoria.nomeCategoria}}</li>
            
        </ul>
    </div>
  </div>
  
</template>

<script>


export default {
  name: "SideBarList",
  props:
  ['categorias'],
  components: {

  }
};
</script>

<style scoped>
</style>
