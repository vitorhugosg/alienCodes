<template>
  
    <router-view class=" animated"></router-view>
  
  
</template>

<script>

export default {
  name: "app"
};
</script>



<style>

@import url('https://fonts.googleapis.com/css?family=Chakra+Petch:300,300i,400,400i,500,500i,600,600i,700,700i'); 

/* usar nos titulos font-family: 'Chakra Petch', sans-serif; */


body {

}


.background-title {
  font-size: 30px;
  background: -webkit-linear-gradient(
    left,
    #009069 0%,
    #4DF0D9 100%
  );
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  letter-spacing: 2.1px;
  font-weight: 500;
}
.titulo {

  background-repeat: no-repeat;
  color: #f93069;
  font-size: 2em;
  text-align: center;
  background-position: center;
  margin-bottom: 50px;
}
</style>
