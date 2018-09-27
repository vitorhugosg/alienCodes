<template>
    <div>
        <div class="modal fade" id="modalSubscriptionForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title w-100 font-weight-bold">Adicionar novo item</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body mx-3">
                        <div class="md-form mb-5">
                            
                            <input type="text" id="form3" class="form-control validate">
                            <label data-error="wrong" data-success="right" for="form3">Titulo</label>
                        </div>

                        <div class="md-form">
                            <editor api-key="hjnt8q6gxjq017n7fw1lz5j358acvh9axp94nldeybbet8w6" :init="{plugins: 'wordcount'}"></editor>
                        </div>
                    </div>
                    <div class="modal-footer d-flex justify-content-center">
                        <button class="btn btn-indigo">Send <i class="fa fa-paper-plane-o ml-1"></i></button>
                    </div>
                </div>
            </div>
        </div>

        <div class="text-center">
            <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" data-target="#modalSubscriptionForm">Adicionar Portfólio</a>
        </div>
    </div>
    
</template>
<script>
    import Editor from '@tinymce/tinymce-vue'
    export default{
        name: 'modalAddPortfolio',
        components:{
            Editor
        }
    }
</script>
<style scoped>

</style>

