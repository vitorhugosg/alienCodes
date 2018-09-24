<template>
    <section class="py-5 backgroundImageHeader" v-bind:style="this.newBackgroundImages">
        <div class="container py-5">
            <div class="row">
                <div class="col-md-12 py-5 text-center">
                    <h1 class="text-uppercase text-white">{{titulo}}</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><router-link to="/">Home</router-link></li>
                        <li class="breadcrumb-item active">{{titulo}}</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
  name: 'HeaderSecundario',
  props:[
      'titulo',
      'backgroundImage'
  ],
  data() {
      return {
          newBackgroundImages : ''
      }
  },
  created(){
      this.newBackgroundImages = 'background-image: url("'+ this.backgroundImage + '")'
  }
}
</script>

<style scoped>
    .backgroundImageHeader{
        background-size: cover;
        background-position: center center;
    }
    .breadcrumb{
        background: transparent;
        text-align: center !important;
        width: auto;
        display: inline-block;
        margin: 0 auto;

    }
    .breadcrumb *{
        display: inline-block;
        color: #fff;
        width: auto;
    }
    h1{
        font-weight: 900;
    }
    .breadcrumb-item+.breadcrumb-item::before{
        color: #fff;
    }
    .breadcrumb-item.active{
        font-weight: bold;
    }
</style>
