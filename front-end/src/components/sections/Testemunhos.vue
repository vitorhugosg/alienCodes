<template>

    <section class="testimonials py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center titulo">
                    <h2 class="background-title">O QUE AS PESSOAS FALAM SOBRE NÓS</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <!-- Carousel Wrapper -->
                    <div id="carousel-example-1" class="carousel no-flex testimonial-carousel slide carousel-fade" data-ride="carousel" data-interval="false">
                    
                        <div class="carousel-inner" role="listbox">
                    
                        <div class="carousel-item active">
                            <div class="testimonial">
                            
                            <div class="avatar mx-auto mb-4">
                                <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(30).jpg" class="rounded-circle img-fluid" alt="First sample avatar image">
                            </div>
                        
                            <p>
                                <i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod eos id officiis hic tenetur quae quaerat ad velit ab. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolore cum accusamus eveniet molestias voluptatum inventore laboriosam labore sit, aspernatur praesentium iste impedit quidem dolor veniam.
                            </p>
                            <h4 class="font-weight-bold">Anna Deynah</h4>
                            <h6 class="font-weight-bold my-3">Founder at ET Company</h6>
                            
                            <i class="fa fa-star blue-text"> </i>
                            <i class="fa fa-star blue-text"> </i>
                            <i class="fa fa-star blue-text"> </i>
                            <i class="fa fa-star blue-text"> </i>
                            <i class="fa fa-star-half-full blue-text"> </i>
                            </div>
                        </div>
                        
                        <div class="carousel-item">
                            <div class="testimonial">
                            
                            <div class="avatar mx-auto">
                                <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(31).jpg" class="rounded-circle img-fluid" alt="Second sample avatar image">
                            </div>
                            
                            <p>
                                <i class="fa fa-quote-left"></i> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore. </p>
                            <h4 class="font-weight-bold">Maria Kate</h4>
                            <h6 class="font-weight-bold my-3">Photographer at Studio LA</h6>
                            
                            <i class="fa fa-star blue-text"> </i>
                            <i class="fa fa-star blue-text"> </i>
                            <i class="fa fa-star blue-text"> </i>
                            <i class="fa fa-star blue-text"> </i>
                            <i class="fa fa-star blue-text"> </i>
                            </div>
                        </div>
                        
                        <div class="carousel-item">
                            <div class="testimonial">
                            
                            <div class="avatar mx-auto">
                                <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(3).jpg" class="rounded-circle img-fluid" alt="Third sample avatar image">
                            </div>
                            
                            <p>
                                <i class="fa fa-quote-left"></i> Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                            <h4 class="font-weight-bold">John Doe</h4>
                            <h6 class="font-weight-bold my-3">Front-end Developer in NY</h6>
                            
                            <i class="fa fa-star blue-text"> </i>
                            <i class="fa fa-star blue-text"> </i>
                            <i class="fa fa-star blue-text"> </i>
                            <i class="fa fa-star blue-text"> </i>
                            <i class="fa fa-star-o blue-text"> </i>
                            </div>
                        </div>
                        
                        </div>
                        
                        <a class="carousel-item-prev left carousel-control" href="#carousel-example-1" role="button" data-slide="prev">
                                        <span class="icon-prev" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                        <a class="carousel-item-next right carousel-control" href="#carousel-example-1" role="button" data-slide="next">
                                        <span class="icon-next" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                    
                    </div>

                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
  name: "Testemunhos"
};
</script>

<style>
.testimonials {
  background-image: url("/static/assets/images/testi.png");
  background-position: left center;
  background-repeat: no-repeat;
  padding-bottom: 90px;
}
</style>
