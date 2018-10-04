<template>
    <div>
        <div class="modal  fade" id="modalSubscriptionForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg " role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title w-100 font-weight-bold">Adicionar novo item</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body mx-3">
                        <div class="md-form mb-5">
                            
                            <input type="text" id="form3" class="form-control validate" v-model="titulo">
                            <label data-error="wrong" data-success="right" for="form3">Titulo</label>
                        </div>

                        <div class="md-form">
                            <editor v-model="descricao"  api-key="hjnt8q6gxjq017n7fw1lz5j358acvh9axp94nldeybbet8w6" :init="{plugins: 'wordcount'}"></editor>
                        </div>
                        <div style="width: 100%;">
                            <div v-for="item in categorias" :key="item.id"  style="width: 100%;">
                                <input :id="item.id" type="checkbox" :value="item.id" v-model="categoriasEscolhidas"> 
                                <label  class="btn btn-indigo " style="display: inline-block;" :for="item.id">{{item.titulo_categoria}}</label>
                            </div>
                        </div>
                        <p>{{categoriasEscolhidas}}</p>
                        <br>
                        <div class=" text-center">
                            <input type="file" multiple v-on:change="salvaImagem">
                        </div>
                    </div>
                    
                    <div class="modal-footer d-flex justify-content-center">
                        <button v-on:click="enviarPortfolio" class="btn btn-indigo">Send <i class="fa fa-paper-plane-o ml-1"></i></button>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center">
            <button type="button" class="btn btn-default btn-rounded mb-4" data-toggle="modal" data-target="#modalSubscriptionForm">Adicionar Portfólio</button>
        </div>
    </div>
    
</template>
<script>
    

    import Editor from '@tinymce/tinymce-vue'
    export default{
        name: 'modalAddPortfolio',
        components:{
            Editor
        },
        methods: {
           salvaImagem(e){
                //pegando arquivo que foi inputado no input file
                this.arquivosUpload = e.target.files || e.dataTransfer.files; 
            },
            enviarPortfolio(){
                //CHAMANDO FORMDATA
                const fd = new FormData();
                for( var i = 0; i < this.arquivosUpload.length; i++ ){
                    //adicionando arquivo a variavel padrão
                    let file = this.arquivosUpload[i];
                    //adicionando arquivos ao FORMDATA
                    fd.append('files[' + i + ']', file);
                }
                fd.append('titulo', this.titulo);
                fd.append('descricao', this.descricao);
                fd.append('categorias', this.categoriasEscolhidas);
                this.$http.post(this.$urlAPI + 'portfolio/add', fd,{
                    "headers":{
                        'Content-Type': 'multipart/form-data'
                    }
                })
                .then(response => {
                    if(response.data){
                        console.log(response.data)
                        localStorage.setItem('portfolio', JSON.stringify(response.data.portfolio));
                        this.$store.commit('setPortfolio', response.data.portfolio);
                        window.jquery('#modalSubscriptionForm').modal('hide');
                    }
                })
                .catch(function (error) {
                    console.log(error);
                    alert('ERROR: Tente novamente mais tarde!');
                    
                });
            }
        },
         data () {
            return {
                arquivosUpload : [],
                categorias : [],
                checkedNames: [],
                titulo: '',
                descricao: '',
                categoriasEscolhidas: []
            }
        },
        created(){
            this.$http.get(this.$urlAPI + 'portfolio/getcategorias')
            .then(response => {
                if(response.data){
                    this.categorias = response.data;
                }
            })
            .catch(function (error) {
                console.log(error);
                alert('ERROR: Tente novamente mais tarde!');
                
            });
        }
    }
</script>
<style scoped>
    .file-field .md-form{
        margin: 0px;
    }
</style>


