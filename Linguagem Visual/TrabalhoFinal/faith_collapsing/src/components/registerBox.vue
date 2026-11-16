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
          v-model="email"
          placeholder="E-MAIL..."
          type="email"
          outlined
          dense
          hide-bottom-space
          class="register-input"
        />

        <q-input
          v-model="password"
          placeholder="SENHA..."
          type="password"
          outlined
          dense
          hide-bottom-space
          class="register-input password-input"
        />

        <q-input
          v-model="confirmPassword"
          placeholder="CONFIRME A SENHA..."
          type="password"
          outlined
          dense
          hide-bottom-space
          class="register-input password-input"
        />

        <div class="class-selection">
          <button
            type="button"
            class="class-button"
            :class="{ selected: selectedClass === 'guerreiro' }"
            :aria-pressed="selectedClass === 'guerreiro'"
            @click="selectedClass = 'guerreiro'"
          >
            <img src="../assets/icons/guerreiro.png" alt="Guerreiro" />
            <span>GUERREIRO</span>
          </button>

          <button
            type="button"
            class="class-button"
            :class="{ selected: selectedClass === 'mago' }"
            :aria-pressed="selectedClass === 'mago'"
            @click="selectedClass = 'mago'"
          >
            <img src="../assets/icons/mago.png" alt="Mago" />
            <span> MAGO </span>
          </button>

          <button
            type="button"
            class="class-button"
            :class="{ selected: selectedClass === 'bandido' }"
            :aria-pressed="selectedClass === 'bandido'"
            @click="selectedClass = 'bandido'"
          >
            <img src="../assets/icons/bandido.png" alt="Bandido" />
            <span>BANDIDO</span>
          </button>
        </div>

        <q-btn label="CADASTRAR" class="register-button" unelevated no-caps />

        <q-btn
          label="JA TEM UMA CONTA?"
          flat
          no-caps
          :ripple="false"
          class="login-link"
          @click="irParaLogin"
        />
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import { QInput, QBtn } from 'quasar'

const username = ref('')
const email = ref('')
const password = ref('')
const confirmPassword = ref('')

const selectedClass = ref(null)

const irParaLogin = () => {
  console.log('Ir para o login')
}
</script>

<style scoped>
.register-container {
  width: 100%;
  height: 100%;
  min-height: 100%;
}

.register-box {
  width: 100%;
  height: 100%;
  min-height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  box-sizing: border-box;

  background-image: url('../assets/backgrounds/Cadastro/BackgroundBox.png');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}

.register-content {
  width: 78%;
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.register-input {
  width: 100%;
  font-size: 20px;
  font-weight: bold;
}

.register-input :deep(.q-field__control) {
  background-color: #fff4cf;
  border: 3px solid #695338;
  border-radius: 12px;
  height: 58px;
  padding: 0 12px;
}

.register-input :deep(.q-field__control:before),
.register-input :deep(.q-field__control:after) {
  display: none;
}

.register-input :deep(.q-field__native) {
  font-size: 20px;
  font-weight: bold;
  color: #8c8265;
}

.register-input :deep(.q-field__native::placeholder) {
  font-family: 'The Inquisition', serif !important;
  color: #9b947c;
  opacity: 1;
}

.password-input :deep(.q-field__native) {
  font-family: Arial, sans-serif !important;
  letter-spacing: 3px;
}

.password-input :deep(.q-field__native::placeholder) {
  font-family: 'The Inquisition', serif !important;
  letter-spacing: normal;
}

.class-selection {
  display: flex;
  justify-content: space-between;
  align-items: center;
  gap: 18px;
  width: 100%;
}

.class-button {
  width: 100%;
  max-width: 120px;
  height: 92px;

  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 5px;

  background-color: #fff4cf;
  border: 2px solid #695338;
  border-radius: 12px;

  cursor: pointer;
  transition: 0.2s ease;
}

.class-button img {
  width: 48px;
  height: 48px;
  object-fit: contain;
  image-rendering: pixelated;
}

.class-button span {
  font-family: 'The Inquisition', serif;
  font-size: 13px;
  color: #8c8265;
}

.class-button:hover {
  transform: translateY(-3px);
  background-color: #fff9df;
}

.class-button.selected {
  background-color: #d6c18d;
  border: 4px solid #747b4d;
  box-shadow: 0 0 8px rgba(65, 67, 40, 0.5);
  transform: translateY(-3px);
}

.register-button {
  width: 75%;
  height: 60px;
  align-self: center;

  background-color: #747b4d;
  border: 3px solid #4e5034;
  border-radius: 12px;

  color: white;
  font-size: 26px;
  font-weight: bold;
}

.register-button:hover {
  background-color: #858c59;
}

.login-link {
  align-self: center;
  padding: 0;
  min-height: auto;

  font-family: 'The Inquisition', serif;
  font-size: 16px;
  font-weight: bold;
  letter-spacing: 1px;

  color: #695338;
  text-shadow: 1px 1px 0 rgba(255, 244, 207, 0.45);
}

.login-link :deep(.q-focus-helper) {
  display: none;
}

.login-link:hover {
  opacity: 0.8;
}

@media (max-width: 700px) {
  .register-content {
    width: 85%;
    gap: 14px;
  }

  .register-input :deep(.q-field__control) {
    height: 50px;
  }

  .register-input :deep(.q-field__native) {
    font-size: 17px;
  }

  .class-button {
    height: 78px;
  }

  .class-button img {
    width: 38px;
    height: 38px;
  }

  .class-button span {
    font-size: 11px;
  }

  .register-button {
    width: 80%;
    height: 52px;
    font-size: 22px;
  }

  .login-link {
    font-size: 14px;
  }
}
</style>
