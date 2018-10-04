<template>
    <dashboard-template>
      <div slot="conteudo" style="width: 100%;">
        <indicador-card titulo="Portfolios" porcentagem="70%" texto="Coloque mais portfólios e se torne um ninja" numero="120000">

        </indicador-card>
      </div>
    </dashboard-template>
    
</template>

<script>
import DashboardTemplate from '@/templates/dashboard/DashboardTemplate'
import IndicadorCard from '@/components/cards/IndicadorCard'
export default {
  name: "dashboard",
  components:{
    DashboardTemplate,
    IndicadorCard
  }
};
</script>

<style scoped>

</style>
