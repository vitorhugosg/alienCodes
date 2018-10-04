<template>
    <div class="col-md-4">
        <div class="card card-cascade cascading-admin-card">

            <!--Card Data-->
            <div class="admin-up">
                <i class="fa fa-money primary-color"></i>
                <div class="data">
                    <p>{{titulo}}</p>
                    <h4 class="font-weight-bold dark-grey-text">{{numero}}</h4>
                </div>
            </div>
            <!--/.Card Data-->

            <!--Card content-->
            <div class="card-body card-body-cascade">
                <div class="progress mb-3">
                    <div class="progress-bar bg-primary" role="progressbar" v-bind:style="'width: '+ porcentagem" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <!--Text-->
                <p class="card-text">{{texto}} ({{porcentagem}})</p>
            </div>
            <!--/.Card content-->

        </div>
    </div>
</template>
<script>
    export default {
        name: 'IndicadorCard',
        props: [
            'porcentagem',
            'numero',
            'titulo',
            'texto'
        ]
    };
</script>
<style scoped>

</style>
