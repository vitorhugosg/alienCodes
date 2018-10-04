<template>
    <!-- Navbar -->
        <nav class="navbar fixed-top navbar-expand-lg  double-nav text-white">
            <!-- SideNav slide-out button -->
            <div class="float-left">
                <a href="#" data-activates="slide-out" class="button-collapse"><i class="fa fa-bars"></i></a>
            </div>
            <!-- Breadcrumb-->
            <div class="breadcrumb-dn mr-auto">
                <p>{{titulo}}</p>
            </div>

            <!--Navbar links-->
            <ul class="nav navbar-nav nav-flex-icons ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle waves-effect" href="#" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-user"></i> <span class="clearfix d-none d-sm-inline-block">Ações</span></a>
                    
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item waves-effect waves-light" href="#">Sair</a>
                    </div>
                </li>

            </ul>
            <!--/Navbar links-->
        </nav>
        <!-- /.Navbar -->
</template>
<script>
    export default {
    name: "NavDashboard",
        components:{

        },
        props:[
            'titulo'
        ]
    };
</script>
<style scoped>
    .navbar{
        background-image: url('https://images.alphacoders.com/109/thumb-1920-109093.jpg') !important;
    }
</style>
