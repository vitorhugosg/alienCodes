<template>
    <section id="" class="sectionSkills py-5 cor-section">
        <div class="container">
            <div class="row">
                <div class="col-md-3 text-center">
                    <div class="skillsValue d-flex justify-content-center">
                        
                    </div>
                    <h5 class="py-4 space-text"><strong> MARKETING SOCIAL</strong></h5>
                </div>
                <div class="col-md-3 text-center">
                    <div class="skillsValue d-flex justify-content-center">
                        
                    </div>
                    <h5 class="py-4 space-text"><strong>WEB DESIGN</strong></h5>
                </div>
                <div class="col-md-3 text-center">
                    <div class="skillsValue d-flex justify-content-center">
                        
                    </div>
                    <h5 class="py-4 space-text"><strong> UI/UX DESIGN</strong></h5>
                </div>
                <div class="col-md-3 text-center">
                    <div class="skillsValue d-flex justify-content-center">
                        
                    </div>
                    <h5 class="py-4 space-text"><strong>DESENVOLVIMENTO WEB/APP</strong> </h5>
                </div>
            </div>
        </div>
    </section>
</template>

<script>

import ProgressBar from 'progressbar.js'

export default {
  name: 'Skills',
  mounted(){
        
    var divs = document.querySelectorAll('.skillsValue');
    
    for (var i = 0; i < divs.length; ++i) {
        var numberRound = '';
        if (i == 0) {
            numberRound = 81;
        }else if(i == 1) {
            numberRound = 87;
        }else if(i == 2) {
            numberRound = 93;
        }else{
            numberRound = 99;
        }
        numberRound = '0.' + numberRound;
        var bar = new ProgressBar.Circle(divs[i], {
            color: '#4DF0D9',
            trailColor: '#eee',
            trailWidth: 1,
            duration: 1400,
            easing: 'bounce',
            strokeWidth: 6,
            from: {color: '#4DF0D9', a:0},
            to: {color: '#009069', a:1},
            // Set default step function for all animate calls
            step: function(state, circle) {
                circle.path.setAttribute('stroke', state.color);
            }
        });
        bar.animate(numberRound);
    }
  }
}
</script>

<style scoped>
.skillsValue{
    height: auto;
    width: 100%;
}
.sectionSkills{
    background-image: url(/static/assets/images/skill3.png) !important;
    background-repeat: no-repeat;
    background-position: center ;
    /* background-color: #F7F7F7; */
    /* padding: 155px 0 67px; */
}

.cor-section {
    background-color:#1B1D20;
    color:white;
}

.space-text {
    letter-spacing: 1px;;
}
</style>
