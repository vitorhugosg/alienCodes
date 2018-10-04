<template>
	<!--Navbar-->
	<div>
		<nav class="navbar navbar-expand-lg fixed-top border-none">
			<div class="container">

				<router-link class="navbar-brand d-flex justify-content-start" to="/">
					<img v-if="!responsive" style="max-height: 50px; width: auto;" class="img-fluid" src="/static/assets/images/imagens/logonew.png" alt="">
					<img v-if="responsive" style="max-height: 25px !important; width: auto;" class="img-fluid" src="/static/assets/images/imagens/logo-responsive.png" alt="">
				</router-link>
				
				<a type="button" v-on:click="ativarMenuTotal()" class="waves-effect btn-floating btn-sm purple-gradient d-flex justify-content-end animated pulse infinite">
						<i class="fa fa-bars" aria-hidden="true"></i>
				</a>
			</div>
		</nav>
		<transition v-if="this.menuAtivado"
			name="custom-classes-transition"
			enter-active-class="animated zoomIn"
			leave-active-class="animated zoomOut"
		>
			<div class="menuTotal animated zoomIn" style="background-image: url('/static/assets/images/BANNERS-MENU.jpg')">
				<div class="container">
					<div class="row">
						<nav class="navbar navbar-expand-lg fixed-top border-none">
							<div class="container">
								<router-link class="navbar-brand d-flex justify-content-start" to="/">
									<img v-if="!responsive" style="max-height: 50px; width: auto;" class="img-fluid" src="/static/assets/images/imagens/logonew.png" alt="">
									<img v-if="responsive" style="max-height: 25px !important; width: auto;" class="img-fluid logo-responsive" src="/static/assets/images/imagens/logo-responsive.png" alt="">
								</router-link>
								
								<a type="button" v-on:click="ativarMenuTotal()" class="waves-effect btn-floating btn-sm purple-gradient d-flex justify-content-end animated pulse infinite botao-mobile">
									<i class="fa fa-close" aria-hidden="true"></i>
								</a>
							</div>
						</nav>
					</div>
				</div>
					<div class="row pt-5">
						<div id="" class="col-md-12 text-center pt-5">
							<div v-on:click="ativarMenuTotalClickMenu()" class='pt-5'>
								<ul class="arrumaresponsiveul">
									<li v-if="this.$route.path != '/'" class="nav-menu p-3">
										<router-link to="/" class="">Home</router-link>
									</li>
								
									<li v-if="this.$route.path != '/sobre'" class="nav-menu p-3">
										<router-link to="/sobre" class="">Sobre</router-link>
									</li>
								
									<li v-if="this.$route.path != '/servicos'" class="nav-menu p-3">
										<router-link to="/servicos" class="">Serviços</router-link>
									</li>
								
									<li v-if="this.$route.path != '/portfolio'" class="nav-menu p-3">
										<router-link to="/portfolio" class="">Portfólio</router-link>
									</li>
								
									<li v-if="this.$route.path != '/contato'" class="nav-menu p-3">
										<router-link to="/contato" class="">Contato</router-link>
									</li>
								</ul>						
							</div>
						</div>	
					</div>
				</div>
		</transition>
	</div>
	
	<!--/.Navbar-->
</template>

<script>


export default {
name:'Menuhome',
    data: function () {
        return {
			menuAtivado: false,
			responsive: false
        }
	},
	methods:{
		ativarMenuTotal(){
			this.menuAtivado = !this.menuAtivado;
		},
		ativarMenuTotalClickMenu(){
			setTimeout(function(){
				this.menuAtivado = !this.menuAtivado;
			},300);
		}
	},
	created(){
		var windowWidth = window.innerWidth;
		var windowHeight = window.innerHeight;
		if(windowWidth < 768){
			this.responsive = true;
		}
		
	}
}
</script>

<style scoped>
    .menuTotal{
		position: fixed;
		z-index: 1099;
		top: 0;
		right: 0;
		left: 0;
		bottom: 0;
		background-position: center center;
		background-size: cover;	

	}
	
	.navbar{
		box-shadow: none !important;
	}
	.nav-menu{
		display: inline-block;
		text-transform: uppercase;
    	font-weight: 500;
    	letter-spacing: .1em;
		font-size: 20px;
	}
	.nav-menu a{
		color: #fff;
	}
	.nav-menu a:hover {
		border-bottom: 5px dotted #fff; 
	}
	.botao-mobile{
		display: inline-block;
		float: right;
		position: relative;
		
	}
	.logo-responsive{
		position: relative;
		top: 15px;
		left: 15px;
	}
   
   @media (max-width: 991px) { 
     .botao-mobile{
        position: fixed !important;
		top: 15px;
		right: 15px;
		bottom: 55px;
      }
	  .menuTotal{
		overflow-y: auto;
	  }
	  .arrumaresponsiveul li{
		  display: block;
	  }
    } 


</style>
