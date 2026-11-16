<template>
  <q-page
    :style="{ backgroundImage: `url(${bgForest})` }"
    class="game-background flex column justify-between"
  >
    <div class="q-pa-md progress-container q-pt-xl">
      <q-linear-progress
        :value="progressoDecimal"
        color="green-6"
        track-color="green-10"
        size="24px"
        rounded
        stripe
      />
    </div>

    <div class="battle-area row justify-around items-end">
      <div class="character-container flex column items-center">
        <q-img src="../assets/jogo/dado20.png" class="dice-img" fit="contain" />
        <q-img src="../assets/jogo/sprites/Guerreiro.png" class="sprite-img" fit="contain" />
      </div>

      <div class="character-container flex column items-center">
        <q-img src="../assets/jogo/dado20.png" class="dice-img" fit="contain" />
        <q-img src="../assets/jogo/sprites/Bruxo.png" class="sprite-img" fit="contain" />
      </div>
    </div>

    <div class="actions-container row justify-center q-pb-lg q-gutter-md">
      <q-btn
        color="red-10"
        label="ATACAR"
        push
        class="game-btn text-weight-bolder text-h6"
        @click="atacar"
      />

      <q-btn
        color="deep-purple-10"
        label="FUGIR"
        icon="directions_run"
        push
        class="game-btn text-weight-bolder text-h6"
        @click="fugir"
      />
    </div>
  </q-page>
</template>

<script setup>
import { ref, computed } from 'vue'
import bgForest from '../assets/backgrounds/jogo/Church.png'

const etapaAtual = ref(1)
const progressoDecimal = computed(() => etapaAtual.value / 9)

const atacar = () => {
  console.log('Ação: Atacar!')
}

const fugir = () => {
  console.log('Ação: Fugir!')
}
</script>

<style scoped>
.game-background {
  background-color: #202020;
  background-size: cover;
  background-position: center bottom;
  position: relative;
  overflow: hidden;
}

.progress-container {
  width: 100%;
  max-width: 600px;
  margin: 0 auto;
}

.battle-area {
  flex-grow: 1;
  padding-bottom: 0;
  padding-inline: 4%;
  position: relative;
  top: 70px;
}

.character-container {
  width: 200px;
}

.dice-img {
  width: 85px;
  height: 85px;
  margin-bottom: 25px;
  image-rendering: pixelated;
}

.sprite-img {
  width: 100%;
  height: 250px;
  image-rendering: pixelated;
}

.actions-container {
  width: 100%;
  padding-bottom: 30px;
}

.game-btn {
  width: 160px;
  height: 55px;
  border-radius: 8px;
  letter-spacing: 2px;
}
</style>
