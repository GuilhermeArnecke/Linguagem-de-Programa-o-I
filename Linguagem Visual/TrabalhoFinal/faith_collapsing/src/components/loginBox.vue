<template>
  <div class="login-container">
    <div class="login-box">
      <div class="login-content">
        <q-input
          v-model="username"
          placeholder="USUARIO..."
          outlined
          dense
          hide-bottom-space
          class="login-input"
        />

        <q-input
          v-model="password"
          placeholder="SENHA..."
          type="password"
          outlined
          dense
          hide-bottom-space
          class="login-input password-input"
        />

        <div class="login-actions">
          <button class="register-button">
            NAO TEM UMA<br />
            CONTA?
          </button>

          <q-btn label="LOGIN" class="login-button" unelevated no-caps />
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import { QInput, QBtn } from 'quasar'

const username = ref('')
const password = ref('')
</script>

<style scoped>
@font-face {
  font-family: 'The Inquisition';
  src: url('/src/assets/fonts/the_inquisition.ttf') format('truetype');
}

.login-container {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
}

.login-box {
  position: relative;

  width: 583px;
  height: 508px;

  background-color: #ac7f5e;
  border: 10px solid #654321;
  box-sizing: border-box;

  display: flex;
  justify-content: center;
  align-items: center;

  overflow: hidden;
}

.login-box::before {
  content: '';
  position: absolute;
  inset: 0;

  background-image: url('/src/assets/textura-madeira.png');
  background-size: cover;
  background-position: center;

  opacity: 80%;

  pointer-events: none;
}

.login-content {
  position: relative;
  z-index: 1;

  width: 70%;

  display: flex;
  flex-direction: column;
  gap: 50px;
}

.login-input {
  width: 100%;

  font-family: 'The Inquisition', serif;
  font-size: 18px;
  font-weight: bold;
}

.login-input :deep(.q-field__control) {
  background-color: #fff4cf;

  border: 3px solid #695338;
  border-radius: 14px;

  height: 70px;
  padding: 0 10px;
}

.login-input :deep(.q-field__control:before),
.login-input :deep(.q-field__control:after) {
  display: none;
}

.login-input :deep(.q-field__native) {
  font-family: 'The Inquisition', serif;
  font-size: 30px;
  font-weight: bold;

  color: #8c8265;
}

.login-input :deep(.q-field__native::placeholder) {
  color: #9b947c;
  opacity: 1;
}

.password-input :deep(.q-field__native) {
  font-family: Arial, sans-serif !important;
  letter-spacing: 3px;
  color: #8c8265;
}

.password-input :deep(.q-field__native::placeholder) {
  font-family: 'The Inquisition', serif;
  letter-spacing: normal;
  color: #9b947c;
  opacity: 1;
}

.login-actions {
  display: flex;
  align-items: center;
  justify-content: space-between;

  gap: 30px;
  margin-top: 10px;
}

.register-button {
  background: transparent;
  border: none;
  padding: 0;

  font-family: 'The Inquisition', serif;
  font-size: 22px;
  font-weight: bold;

  color: #594632;

  cursor: pointer;
  text-align: center;
}

.login-button {
  flex: 1;
  height: 68px;

  background-color: #747b4d;
  border: 3px solid #4e5034;
  border-radius: 14px;

  color: white;

  font-family: 'The Inquisition', serif;
  font-size: 30px;
  font-weight: bold;
}

.login-button:hover {
  background-color: #858c59;
}

@media (max-width: 450px) {
  .login-box {
    width: 92%;
    height: 320px;
  }

  .login-content {
    width: 78%;
  }
}
</style>
