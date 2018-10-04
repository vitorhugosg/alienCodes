<template>
    <div class="card">
        <table v-if="this.portfolio" class="table">
            <thead>
                <tr>
                    <th scope="col">portfolio_id</th>
                    <th scope="col">Titulo</th>
                    <th scope="col">Texto</th>
                    <th scope="col">Categorias</th>
                    <th scope="col">Foto</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="item in getPortfolio" :key="item.id">
                    <th>{{item.id}}</th>
                    <td>{{item.titulo}}</td>
                    <td><div v-html="item.descricao"></div></td>
                    <td>
                        <span v-for="categorias in item.categorias" :key="categorias.id"  class="badge badge-pill pink">
                            {{ categorias.nomeCategoria }}</span>
                    </td>
                    <td>
                        <div v-for="image in item.imagens" :key="image.id" style="width: 15px; height: 15;">
                            <img  v-bind:src="urlBase + image.path" class="img-fluid z-depth-1 rounded-circle d-inline-block"
                        alt="Responsive image"/>
                        </div>
                        
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    
</template>
<script>
    export default {
        name: 'tableCard',
        computed : {
            getPortfolio(){
                if (this.portfolio = this.$store.getters.getPortfolio) {
                    return this.portfolio;
                }else{
                    this.portfolio = [];
                }
                
                
            }
        },
        data(){
            return {
                portfolio: [],
                urlBase: ''
            }
        },
        created(){
            this.urlBase = this.$urlBaseAssets;
            
            this.$http.get(this.$urlAPI + 'portfolio/getportfolio')
            .then(response => {
                if(response.data){
                    this.portfolio = response.data;
                    localStorage.setItem('portfolio', JSON.stringify(response.data));
                    this.$store.commit('setPortfolio', response.data);
                }
            })
            .catch(function (error) {
                console.log(error);
                alert('ERROR: Tente novamente mais tarde!');
            });
        }
    }
</script>
