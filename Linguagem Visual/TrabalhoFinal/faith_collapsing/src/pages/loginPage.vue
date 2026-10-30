<template>
  <q-page
    class="login-page"
    :style="{
      backgroundImage: `url('${backgroundImage}')`,
    }"
  >
    <LoginBox />
  </q-page>
</template>

<script setup>
import backgroundImage from '../assets/BackgroundLogin.png'
import LoginBox from '../components/loginBox.vue'
</script>

<style scoped>
.login-page {
  min-height: 100vh;
  width: 100%;

  display: flex;
  align-items: center;
  justify-content: center;

  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}
</style>
