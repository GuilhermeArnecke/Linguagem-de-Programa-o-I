<template>
  <div class="difficulty-card" :class="variant">
    <h2 class="difficulty-title">
      {{ title }}
    </h2>

    <img :src="icon" alt="Caveira" class="skull-icon" />

    <h3 class="challenge-count">{{ challenges }} DESAFIOS</h3>

    <q-btn
      label="DESAFIAR"
      class="challenge-button"
      unelevated
      no-caps
      @click="$emit('challenge', title)"
    />
  </div>
</template>

<script setup>
import { QBtn } from 'quasar'

defineProps({
  title: {
    type: String,
    required: true,
  },

  challenges: {
    type: Number,
    required: true,
  },

  variant: {
    type: String,
    default: 'normal',
  },

  icon: {
    type: String,
    required: true,
  },
})

defineEmits(['challenge'])
</script>

<style scoped>
.difficulty-card {
  width: 100%;
  max-width: 300px;
  height: 510px;

  display: flex;
  flex-direction: column;
  align-items: center;

  box-sizing: border-box;
  padding: 35px 20px;

  background-image: url('../assets/backgrounds/Dificuldade/BackgroundCards.png');
  background-size: 100% 100%;
  background-position: center;
  background-repeat: no-repeat;
}

.difficulty-title {
  font-family: 'The Inquisition', serif;
  font-size: 42px;
  font-weight: bold;
  margin: 0;
  text-align: center;
}

.easy .difficulty-title {
  color: #65c94c;
}

.normal .difficulty-title {
  color: #e2bd38;
}

.hard .difficulty-title {
  color: #c52d22;
}

.skull-icon {
  width: 75px;
  height: 75px;
  object-fit: contain;
  image-rendering: pixelated;
  margin-top: 35px;
}

.challenge-count {
  font-family: 'The Inquisition', serif;
  font-size: 25px;
  color: white;
  text-align: center;
  margin-top: 40px;
}

.challenge-button {
  width: 75%;
  height: 65px;
  margin-top: auto;
  margin-bottom: 8px;

  background-color: #747b4d;
  border: 2px solid #4e5034;
  border-radius: 12px;

  color: white;
  font-family: 'The Inquisition', serif;
  font-size: 25px;
}

.challenge-button:hover {
  background-color: #858c59;
}

@media (max-width: 700px) {
  .difficulty-card {
    max-width: 100%;
    height: 430px;
    padding: 25px 15px;
  }

  .difficulty-title {
    font-size: 34px;
  }

  .skull-icon {
    width: 65px;
    height: 65px;
    margin-top: 25px;
  }

  .challenge-count {
    font-size: 22px;
    margin-top: 30px;
  }

  .challenge-button {
    height: 55px;
    font-size: 21px;
  }
}
</style>
