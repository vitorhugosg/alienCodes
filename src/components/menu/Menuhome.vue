<template>
	<!--Navbar-->
	<div>
		<nav class="navbar navbar-expand-lg fixed-top scrolling-navbar">
			<div class="container">
				<a class="navbar-brand d-flex justify-content-start" href="#">
					<img style="max-height: 50px; width: auto;" class="img-fluid" src="/static/assets/images/imagens/logonew.png" alt="">
				</a>
				<div class="collapse navbar-collapse" id="navbarText">
					<ul class="navbar-nav mr-auto">
					</ul>
					<a type="button" v-on:click="ativarMenuTotal()" class="waves-effect btn-floating btn-sm purple-gradient d-flex justify-content-end animated pulse infinite">
						<i class="fa fa-bars" aria-hidden="true"></i>
					</a>
				</div>
			</div>
		</nav>
		<transition v-if="this.menuAtivado"
			name="custom-classes-transition"
			enter-active-class="animated fadeIn"
			leave-active-class="animated fadeOut"
		>
			<div class="menuTotal animated fadeIn" style="background-image: url('/static/assets/images/imagens/BANNERS-MENU.jpg')">
				<div class="container">
					<div class="row">
						<nav class="navbar navbar-expand-lg fixed-top scrolling-navbar">
							<div class="container">
								<a class="navbar-brand d-flex justify-content-start" href="#">
									<img style="max-height: 50px; width: auto;" class="img-fluid" src="/static/assets/images/imagens/logonew.png" alt="">
								</a>
								<div class="collapse navbar-collapse" id="navbarText">
									<ul class="navbar-nav mr-auto">
									</ul>
									<a type="button" v-on:click="ativarMenuTotal()" class="waves-effect btn-floating btn-sm purple-gradient d-flex justify-content-end animated pulse infinite">
										<i class="fa fa-close" aria-hidden="true"></i>
									</a>
								</div>
							</div>
						</nav>
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
            menuAtivado: false
        }
	},
	methods:{
		ativarMenuTotal(){
			this.menuAtivado = !this.menuAtivado;
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
	
   
</style>
