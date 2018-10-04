<template>
  
    <router-view class=" animated"></router-view>
  
  
</template>

<script>
export default {
  name: "app"
};
</script>

<style>

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
