<template>
    <section id="sectionSkills" class=" py-5 ">
        <div class="container">
            <div class="row">
                <div class="col-md-3 text-center">
                    <div class="skillsValue d-flex justify-content-center">
                        
                    </div>
                    <h5 class="py-4">MARKETING SOCIAL</h5>
                </div>
                <div class="col-md-3 text-center">
                    <div class="skillsValue d-flex justify-content-center">
                        
                    </div>
                    <h5 class="py-4">WEB DESIGN</h5>
                </div>
                <div class="col-md-3 text-center">
                    <div class="skillsValue d-flex justify-content-center">
                        
                    </div>
                    <h5 class="py-4">UI/UX DESIGN</h5>
                </div>
                <div class="col-md-3 text-center">
                    <div class="skillsValue d-flex justify-content-center">
                        
                    </div>
                    <h5 class="py-4">DESENVOLVIMENTO WEB</h5>
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
        var numberRound = Math.floor(Math.random() * 101);
        numberRound = '0.' + numberRound;
        var bar = new ProgressBar.Circle(divs[i], {
            color: '#FFEA82',
            trailColor: '#eee',
            trailWidth: 1,
            duration: 1400,
            easing: 'bounce',
            strokeWidth: 6,
            from: {color: '#FFEA82', a:0},
            to: {color: '#ED6A5A', a:1},
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

<style>
.skillsValue{
    height: auto;
    width: 100%;
}
#sectionSkills{
    background-image: url(/static/assets/images/skill2.png);
    background-repeat: no-repeat;
    background-position: center top;
    background-color: #F7F7F7;
    padding: 155px 0 67px;
}
</style>
