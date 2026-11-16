<template>
  <div class="register-container">
    <q-page class="register-page">
      <div class="register-card">
        <div class="register-scene">
          <img src="../assets/Logo.png" class="game-logo" alt="Faith Collapsing" />
        </div>

        <RegisterBox />
      </div>
    </q-page>
  </div>
</template>

<script setup>
import RegisterBox from '../components/registerBox.vue'
</script>

<style scoped>
.register-container {
  width: 100%;
  min-height: 100vh;

  display: flex;
  align-items: center;
  justify-content: center;

  background-color: #202020;
}

.register-page {
  width: 100%;
  min-height: 100vh;

  display: flex;
  align-items: center;
  justify-content: center;

  padding: 0;
}

.register-card {
  display: grid;

  grid-template-columns: 60% 40%;

  width: 100%;
  min-height: 100vh;

  overflow: hidden;
}

.register-scene {
  position: relative;

  width: 100%;
  height: 100%;

  min-width: 0;

  background-image: url('../assets/backgrounds/Cadastro/BackgroundCadastro.png');

  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}

.game-logo {
  position: absolute;

  width: 75%;
  max-width: 450px;

  height: auto;

  top: 3%;
  left: 50%;

  transform: translateX(-50%);

  object-fit: contain;
}

@media (max-width: 700px) {
  .register-card {
    grid-template-columns: 1fr;
    grid-template-rows: 220px auto;
  }

  .register-scene {
    min-height: 220px;
  }

  .game-logo {
    width: 60%;
  }
}
</style>
