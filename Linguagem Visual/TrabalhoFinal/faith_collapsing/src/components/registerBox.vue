<template>
  <div class="register-container">
    <div class="register-box">
      <div class="register-content">
        <q-input
          v-model="username"
          placeholder="NOME DE USUARIO..."
          outlined
          dense
          hide-bottom-space
          class="register-input"
        />

        <q-input
          v-model="password"
          placeholder="SENHA..."
          outlined
          dense
          hide-bottom-space
          class="register-input password-input"
        />

        <q-input
          v-model="password"
          placeholder="CONFIRME A SENHA..."
          outlined
          dense
          hide-bottom-space
          class="register-input password-input"
        />
      </div>
    </div>
  </div>
</template>

<script setup>
// import backgroundImage from '../assets/BackgroundCadastro.png'
</script>

<style scoped></style>
