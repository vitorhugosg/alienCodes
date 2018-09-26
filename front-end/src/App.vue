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
  font-size: 24px;
  background: -webkit-linear-gradient(
    left,
    #f93069 0,
    #f93051 49%,
    #ec471a 50%,
    #ec471a 100%
  );
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  letter-spacing: 3.1px;
  font-weight: 500;
}
.titulo {

  background-repeat: no-repeat;
  color: #f93069;
  font-size: 24px;
  text-align: center;
  background-position: center;
  margin: 69px 0;
}
</style>
