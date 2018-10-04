<template>

  <div >
    <div class="card">
        <ul class="list-group list-group-flush ">
            <li class="list-group-item text-center backgroundrules"><h4 class=" background-title">Categorias</h4></li>
            <li v-for="(categoria, chave) in categorias" :key="chave" class="list-group-item backgroundcorpo"><i class="fa fa-check deixando-verde mr-2"></i> {{categoria.nomeCategoria}}
      
                    
                    
       
            </li>
            
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

.backgroundrules{
  background-color: #535659 !important;
}
.backgroundcorpo{
  background-color: #3a3d40 !important;
  color:white;
}

.deixando-verde {
    background: -webkit-linear-gradient(#4DF0D9 , #009069);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

</style>
