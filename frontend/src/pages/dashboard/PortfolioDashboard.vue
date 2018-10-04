<template>
    <dashboard-template>
      <div slot="conteudo" style="width: 100%;">
        <div class="row">
            <div class="col-md-12">
                <modal-add-portfolio></modal-add-portfolio>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <table-card></table-card>
            </div>
        </div>
      </div>
    </dashboard-template>
    
</template>

<script>
import DashboardTemplate from '@/templates/dashboard/DashboardTemplate'
import IndicadorCard from '@/components/cards/IndicadorCard'
import TableCard from '@/components/cards/tableCard'
import ModalAddPortfolio from '@/components/modals/modalAddPortfolio'
export default {
  name: "PortfolioDashboard",
  components:{
    DashboardTemplate,
    IndicadorCard,
    TableCard,
    ModalAddPortfolio
  }
};
</script>

<style scoped>

</style>
