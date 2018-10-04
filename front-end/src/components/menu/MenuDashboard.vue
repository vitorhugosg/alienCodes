<template>
    <header>
        <!-- Sidebar navigation -->
        <div id="slide-out" class="side-nav sn-bg-4 fixed" style="transform: translateX(0%);">
            <ul class="custom-scrollbar">
            <!-- Logo -->
            <li class="logo-sn waves-effect">
                <div class="text-center">
                    <router-link to="/dashboard" class="pl-0"><img style="max-height: 50px; width: auto;" class="img-fluid" src="/static/assets/images/imagens/logonew.png" alt=""></router-link>
                </div>
            </li>
            <!--/. Logo -->

            
            <!-- Side navigation links -->
            <li>
                <ul class="collapsible collapsible-accordion">
                    
                    <!-- Simple link -->
                    <li><router-link to="/dashboard/" class="collapsible-header waves-effect"><i class="fa fa-bell-o"></i> Home</router-link></li>
                    <li><router-link to="/dashboard/portfolio" class="collapsible-header waves-effect"><i class="fa fa-bell-o"></i> Portfolio</router-link></li>
                </ul>
            </li>
            <!--/. Side navigation links -->
            <div class="ps__scrollbar-x-rail" style="left: 0px; bottom: 0px;"><div class="ps__scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__scrollbar-y-rail" style="top: 0px; right: 0px;"><div class="ps__scrollbar-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></ul>
            <div class="sidenav-bg mask-strong"></div>
        </div>
        <!--/. Sidebar navigation -->
        <NavDashboard titulo="AlienCodes 2018 POWERED">

        </NavDashboard>
    </header>
    
</template>

<script>
import NavDashboard from '@/components/menu/NavDashboard'
export default {
  name: "MenuDashboard",
  components:{
      NavDashboard
  }
};
</script>

<style>
    .sn-bg-4{
        background-image: url('https://images.alphacoders.com/109/thumb-1920-109093.jpg') !important;
    }
</style>
