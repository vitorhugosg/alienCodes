<template>
    <div>
        <Menuhome>

        </Menuhome>
        <login-section>

        </login-section>
        <Footer>

        </Footer>

    </div>
</template>

<script>
import LoginSection from '@/components/login/login'
import Menuhome from '@/components/menu/Menuhome'
import Footer from '@/components/menu/Footer'
export default {
  name: "Login",
  components:{
      LoginSection,
      Menuhome,
      Footer
  }
};
</script>

<style>

</style>
