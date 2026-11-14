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

        <!-- Seleção de classe -->
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
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import { QInput, QBtn } from 'quasar'

const username = ref('')
const password = ref('')
const confirmPassword = ref('')

const selectedClass = ref(null)
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

  /* Fundo de madeira */
  background-image: url('../assets/BackgroundBox.png');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}

.register-content {
  width: 78%;
  display: flex;
  flex-direction: column;
  gap: 30px;
}

/* Campos de cadastro */

.register-input {
  width: 100%;
  font-size: 20px;
  font-weight: bold;
}

.register-input :deep(.q-field__control) {
  background-color: #fff4cf;
  border: 3px solid #695338;
  border-radius: 14px;
  height: 75px;
  padding: 0 12px;
}

.register-input :deep(.q-field__control:before),
.register-input :deep(.q-field__control:after) {
  display: none;
}

.register-input :deep(.q-field__native) {
  font-size: 25px;
  font-weight: bold;
  color: #8c8265;
}

.register-input :deep(.q-field__native::placeholder) {
  font-family: 'The Inquisition', serif !important;
  color: #9b947c;
  opacity: 1;
}

/* Campos de senha */

.password-input :deep(.q-field__native) {
  font-family: Arial, sans-serif !important;
  letter-spacing: 3px;
}

.password-input :deep(.q-field__native::placeholder) {
  font-family: 'The Inquisition', serif !important;
  letter-spacing: normal;
}

/* Seleção de classe */

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
  height: 110px;

  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 7px;

  background-color: #fff4cf;
  border: 2px solid #695338;
  border-radius: 12px;

  cursor: pointer;
  transition: 0.2s ease;
}

.class-button img {
  width: 58px;
  height: 58px;
  object-fit: contain;
  image-rendering: pixelated;
}

.class-button span {
  font-family: 'The Inquisition', serif;
  font-size: 14px;
  color: #8c8265;
}

/* Efeito ao passar o mouse */

.class-button:hover {
  transform: translateY(-3px);
  background-color: #fff9df;
}

/* Classe selecionada */

.class-button.selected {
  background-color: #d6c18d;
  border: 4px solid #747b4d;
  box-shadow: 0 0 8px rgba(65, 67, 40, 0.5);
  transform: translateY(-3px);
}

/* Botão cadastrar */

.register-button {
  width: 75%;
  height: 75px;
  align-self: center;

  background-color: #747b4d;
  border: 3px solid #4e5034;
  border-radius: 14px;

  color: white;
  font-size: 32px;
  font-weight: bold;
}

.register-button:hover {
  background-color: #858c59;
}

/* Responsividade */

@media (max-width: 700px) {
  .register-content {
    width: 85%;
    gap: 20px;
  }

  .register-input :deep(.q-field__control) {
    height: 60px;
  }

  .register-input :deep(.q-field__native) {
    font-size: 20px;
  }

  .class-button {
    height: 85px;
  }

  .class-button img {
    width: 42px;
    height: 42px;
  }

  .class-button span {
    font-size: 11px;
  }

  .register-button {
    width: 80%;
    height: 60px;
    font-size: 25px;
  }
}
</style>
