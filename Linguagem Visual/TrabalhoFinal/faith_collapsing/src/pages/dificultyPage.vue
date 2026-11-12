<template>
  <q-page
    class="dificulty-page"
    :style="{
      backgroundImage: `url('${backgroundImage}')`,
    }"
  >
  </q-page>
</template>

<script setup>
import backgroundImage from '../assets/BackgroundLogin.png'
</script>

<style scoped>
.dificulty-page {
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
