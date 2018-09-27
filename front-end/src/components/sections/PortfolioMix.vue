<template>

  <section class="cor-section py-5">
      <div class="container-fluid ">
          <div class="row m-0">
              <div class="col-md-12 text-center titulo">
                  <h2 class="background-title">NOSSOS PROJETOS</h2>
              </div>
          </div>
          <div class="row pb-5">
                <div class="controls text-center w-100">
                    <button type="button" class="btn purple-gradient btn-md btn-rounded" data-filter="all">All</button>
                    <button type="button" class="btn purple-gradient btn-md btn-rounded" data-filter=".category-a">Category A</button>
                    <button type="button" class="btn purple-gradient btn-md btn-rounded" data-filter=".category-b">Category B</button>
                    <button type="button" class="btn purple-gradient btn-md btn-rounded" data-filter=".category-c">Category C</button>
                </div>
            </div>
            <div class="containerMix">
                <div class="row">
                   
                    <div class="col-md-3 col-sm-12 mix p-2 category-a " data-order="1">
                        <div class="view overlay">
                            <img src="/static/assets/images/imagens/portfolio/coc.jpg" class="img-fluid " alt="smaple image">
                            <div class="mask flex-center rgba-grey-strong">
                                <div class="row text-center">
                                    <div class="col-md-12">
                                        <p class="white-text d-block">Nome do trabalho</p>
                                    </div>
                                    <div class="col-md-12">
                                        <router-link class="btn purple-gradient btn-rounded btn-sm" to="/portfolio/12/ver">Ver Projeto</router-link>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
                    <div class="col-md-3 col-sm-12 mix p-2 category-b" data-order="2">
                        <div class="view overlay">
                            <img src="/static/assets/images/imagens/portfolio/daraujo.jpg" class="img-fluid " alt="smaple image">
                            <div class="mask flex-center rgba-grey-strong">
                                <div class="row text-center">
                                    <div class="col-md-12">
                                        <p class="white-text d-block">Nome do trabalho</p>
                                    </div>
                                    <div class="col-md-12">
                                        <router-link class="btn purple-gradient btn-rounded btn-sm" to="/portfolio/12/ver">Ver Projeto</router-link>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                
                
                    <div class="col-md-3 col-sm-12 mix p-2 category-b category-c" data-order="3">
                        <div class="view overlay">
                            <img src="/static/assets/images/imagens/portfolio/doisellis.jpg" class="img-fluid " alt="smaple image">
                            <div class="mask flex-center rgba-grey-strong">
                                <div class="row text-center">
                                    <div class="col-md-12">
                                        <p class="white-text d-block">Nome do trabalho</p>
                                    </div>
                                    <div class="col-md-12">
                                        <router-link class="btn purple-gradient btn-rounded btn-sm" to="/portfolio/12/ver">Ver Projeto</router-link>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
                
                    <div class="col-md-3 col-sm-12 mix p-2 category-a category-d" data-order="4">
                        <div class="view overlay">
                            <img src="/static/assets/images/imagens/portfolio/fiesc.jpg" class="img-fluid " alt="smaple image">
                            <div class="mask flex-center rgba-grey-strong">
                                <div class="row text-center">
                                    <div class="col-md-12">
                                        <p class="white-text d-block">Nome do trabalho</p>
                                    </div>
                                    <div class="col-md-12">
                                        <router-link class="btn purple-gradient btn-rounded btn-sm" to="/portfolio/12/ver">Ver Projeto</router-link>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    
                </div>
          </div>
          <div class="row pt-5">
              <div class="col-md-12 text-center">                  
                 <router-link to="/portfolio"><button type="button" class="btn btn-outline-default btn-rounded waves-effect">VER MAIS</button></router-link> 
              </div>
          </div>
      </div>
  </section>
  
</template>

<script>
import mixitup from 'mixitup';


export default {
  name: 'PortfolioMix',
  mounted() {
    var containerEl = document.querySelector('.containerMix');
    var mixer = mixitup(containerEl);
  }
}
</script>

<style scoped>

.cor-section {
    background-color: #1B1D20;

}

.btn {
    letter-spacing: .1em;
}

</style>
