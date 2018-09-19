<template>
    <div>
        <div class="ip-header">        
			<div class="ip-loader">
				<div class="progress-count"><span id="progrss-cnt">0</span>%</div>
				<svg class="ip-inner" width="220px" height="220px" viewBox="0 0 80 80">
					<path class="ip-loader-circlebg" d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z"/>
					<path id="ip-loader-circle" class="ip-loader-circle" d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z"/>
				</svg>
			</div>
		</div>
		<div class="wrapper ip-main">
			<!-- header start here -->
		 <header>
            <div class="navigation clearfix">
              <div class="logo">
                <a href="index.html"><img src="images/imagens/logonew.png" class="img-responsive" alt="AlienCodes" style="max-width: 150px;"></a>
              </div>
              <div class="sidebar-menu">
                <button class="menu-btn">
                  <span>&nbsp;</span>
                  <span>&nbsp;</span>
                  <span>&nbsp;</span>
                </button>
                <div class="nav-box" style="background-image: url('images/BANNERS-MENU.jpg') !important;">
              <ul class="menu">
                <li>
                  <a href="index.html">Home</a>
                </li>
                <li>
                  <a href="about2.html">Sobre</a>
                </li>
                <li>
                  <a href="services3.html">Serviços</a>
                </li>
                <li class="menu-item-has-children">
                      <span>Projetos <i class="fa fa-angle-down"></i></span>
                      <ul class="sub-menu">
                        <li><a href="portfolio.html">Portfólio</a></li>
                        <li><a href="portfolio3.html">Portfólio Single</a></li>
                      </ul>
                    </li>
                <li><a href="contact.html">Contato</a></li>
              </ul>
            </div>
              </div>
            </div>
          </header>
		</div>
        
    </div>
</template>

<script>


export default {
name:'Menuhome',
    data: function () {
        return {
            menuAtivado: false
        }
    }
}
</script>

<style scoped>
    
   
</style>
