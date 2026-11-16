<template>
  <q-page
    class="dificulty-page"
    :style="{
      backgroundImage: `url('${backgroundImage}')`,
    }"
  >
    <div class="difficulty-container">
      <DifficultyCard
        title="FACIL"
        :challenges="3"
        variant="easy"
        :icon="caveiraFacil"
        @challenge="handleChallenge"
      />

      <DifficultyCard
        title="NORMAL"
        :challenges="6"
        variant="normal"
        :icon="caveiraNormal"
        @challenge="handleChallenge"
      />

      <DifficultyCard
        title="DIFICIL"
        :challenges="9"
        variant="hard"
        :icon="caveiraDificil"
        @challenge="handleChallenge"
      />
    </div>
  </q-page>
</template>

<script setup>
import { QPage } from 'quasar'

import backgroundImage from '../assets/backgrounds/Dificuldade/BackgroundDificuldade.png'

import caveiraFacil from '../assets/icons/dificuldade/caveira_facil.png'
import caveiraNormal from '../assets/icons/dificuldade/caveira_normal.png'
import caveiraDificil from '../assets/icons/dificuldade/caveira_dificil.png'

import DifficultyCard from '../components/difficultyCard.vue'

function handleChallenge(difficulty) {
  console.log('Dificuldade selecionada:', difficulty)
}
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

.difficulty-container {
  width: 100%;
  max-width: 930px;

  display: flex;
  justify-content: center;
  align-items: center;
  gap: 40px;
}

@media (max-width: 950px) {
  .difficulty-container {
    gap: 20px;
    padding: 20px;
  }
}

@media (max-width: 700px) {
  .dificulty-page {
    padding: 25px 0;
  }

  .difficulty-container {
    flex-direction: column;
    gap: 25px;
  }
}
</style>
