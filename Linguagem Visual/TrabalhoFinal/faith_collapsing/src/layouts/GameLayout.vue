<template>
  <q-layout view="hHh lpR fFf" class="game-layout">
    <q-header class="game-header" :style="bgStyle(bgTopo)">
      <div class="xp-icon">
        <img src="../assets/icons/gamelayout/xpIcon.png" alt="Experiência" />
      </div>

      <div class="xp-container">
        <q-linear-progress
          :value="xpAtual / xpNecessario"
          color="green-6"
          track-color="grey-4"
          rounded
          size="24px"
          class="xp-progress"
        />
        <span class="xp-text">{{ xpAtual }} XP</span>
      </div>
    </q-header>

    <q-drawer show-if-above side="left" :width="240" :breakpoint="0" :style="bgStyle(bgEsquerda)">
      <div class="panel-inner">
        <div class="player-info">
          <div class="player-identity q-mb-md">
            <img src="../assets/icons/guerreiro.png" alt="Classe" class="class-icon" />
            <span class="player-name">{{ player.name }}</span>
          </div>

          <div class="status-row q-mb-sm">
            <img src="../assets/icons/gamelayout/vidaIcon.png" alt="Vida" class="status-icon" />
            <div class="status-value health">{{ player.hp }}/{{ player.maxHp }}</div>
          </div>

          <div class="status-row q-mb-sm">
            <img src="../assets/icons/gamelayout/defesaIcon.png" alt="Defesa" class="status-icon" />
            <div class="status-value defense">{{ player.defense }}</div>
          </div>

          <div class="status-row">
            <img src="../assets/icons/gamelayout/lvlIcon.png" alt="Nível" class="status-icon" />
            <span class="player-level">LVL {{ player.level }}</span>
          </div>
        </div>

        <img src="../assets/Logo.png" alt="Faith Collapsing" class="game-logo" />
      </div>
    </q-drawer>

    <q-drawer show-if-above side="right" :width="56" :breakpoint="0" :style="bgStyle(bgDireita)">
      <div class="social-inner">
        <a
          href="https://www.instagram.com/"
          target="_blank"
          rel="noopener noreferrer"
          class="social-link"
        >
          <img src="../assets/icons/gamelayout/instagramIcon.png" alt="Instagram" />
        </a>
        <a href="https://github.com/" target="_blank" rel="noopener noreferrer" class="social-link">
          <img src="../assets/icons/gamelayout/githubIcon.png" alt="GitHub" />
        </a>
      </div>
    </q-drawer>

    <q-page-container class="game-content">
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script setup>
import { ref } from 'vue'
import bgTopo from '../assets/backgrounds/GameLayout/BackTopo.png'
import bgEsquerda from '../assets/backgrounds/GameLayout/BackEsquerda.png'
import bgDireita from '../assets/backgrounds/GameLayout/BackDireita.png'

const bgStyle = (img) => ({
  backgroundColor: '#1d1d1d',
  backgroundImage: `url(${img})`,
  backgroundSize: '100% 100%',
  backgroundPosition: 'center',
  backgroundRepeat: 'no-repeat',
  boxShadow: 'none',
})

const player = ref({
  name: 'ARNECKE',
  hp: 15,
  maxHp: 20,
  defense: 18,
  level: 6,
})

const xpAtual = ref(900)
const xpNecessario = ref(2000)
</script>

<style scoped>
.game-layout {
  background-color: #202020;
  height: 100vh;
  min-height: 100vh;
  overflow: hidden;
}

.game-header {
  height: 60px;
  display: flex;
  align-items: center;
  gap: 15px;
  padding: 5px 25px;
  box-sizing: border-box;
}

.xp-icon {
  width: 35px;
  height: 35px;
  flex-shrink: 0;
}

.xp-icon img {
  width: 100%;
  height: 100%;
  object-fit: contain;
}

.xp-container {
  position: relative;
  flex: 1;
  height: 24px;
}

.xp-progress {
  width: 100%;
  height: 100%;
  border: 2px solid #292929;
  border-radius: 20px;
  overflow: hidden;
}

.xp-text {
  position: absolute;
  inset: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  font-family: 'The Inquisition', serif;
  font-size: 16px;
  font-weight: bold;
  pointer-events: none;
  text-shadow: 1px 1px 2px black;
}

.panel-inner {
  height: 100%;
  box-sizing: border-box;
  padding: 30px 28px 20px 24px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.player-info {
  display: flex;
  flex-direction: column;
}

.player-identity {
  display: flex;
  align-items: center;
  gap: 12px;
}

.class-icon,
.status-icon {
  width: 40px;
  height: 40px;
  flex-shrink: 0;
  object-fit: contain;
}

.player-name {
  color: white;
  font-family: 'The Inquisition', serif;
  font-size: 20px;
  font-weight: bold;
}

.status-row {
  display: flex;
  align-items: center;
  gap: 10px;
}

.status-value {
  flex: 1;
  min-width: 0;
  height: 40px;
  display: flex;
  justify-content: center;
  align-items: center;
  border: 2px solid #292929;
  border-radius: 11px;
  color: white;
  font-family: 'The Inquisition', serif;
  font-size: 19px;
  font-weight: bold;
}

.health {
  background-color: #a83d32;
}

.defense {
  background-color: #818991;
}

.player-level {
  flex: 1;
  text-align: center;
  color: white;
  font-family: 'The Inquisition', serif;
  font-size: 20px;
  font-weight: bold;
}

.game-logo {
  width: 100%;
  max-width: 170px;
  align-self: center;
  object-fit: contain;
}

.social-inner {
  height: 100%;
  box-sizing: border-box;
  padding-bottom: 20px;
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  align-items: center;
  gap: 10px;
}

.social-link {
  width: 30px;
  height: 30px;
  transition: transform 0.2s;
}

.social-link img {
  width: 100%;
  height: 100%;
  object-fit: contain;
}

.social-link:hover {
  transform: scale(1.15);
}

.game-content {
  background-color: #202020;
}
</style>
