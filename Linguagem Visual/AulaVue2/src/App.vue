<template>
  <div>
    <input placeholder="tarefas">
    <button>Criar tarefas</button>
    <hr>
    <ul>
      <li style="text-decoration: line-through;">usar v-for</li>
    </ul>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const inputTarefa = ref(null);
const tarefas = ref([])
</script>