<template>
  <div>
    <label for="tituloTarefa">Título</label>
    <input 
      id="tituloTarefa" 
      v-model="novoTitulo" 
      placeholder="Insira um título" 
      type="text" 
    />

    <label for="descricaoTarefa">Descrição</label>
    <input
      id="descricaoTarefa"
      v-model="novaDescricao"
      placeholder="Insira uma descrição"
      type="text"
    />

    <label for="prazoTarefa">Prazo</label>
    <input 
      id="prazoTarefa"
      v-model="novoPrazo"
      placeholder="Insira um prazo" 
      type="text" 
    />

    <button id="salvar" @click="postTarefas">Adicionar Tarefa</button>
  </div>

  <table>
    <thead>
      <tr>
        <th>Título</th>
        <th>Descrição</th>
        <th>Status</th>
        <th>Prazo</th>
        <th>Opções</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="tarefa in conteudos" :key="tarefa.id">
        <td>{{ tarefa.titulo }}</td>
        <td>{{ tarefa.descricao }}</td>
        <td>{{ tarefa.status }}</td>
        <td>{{ tarefa.prazo }}</td>
        <td>
          <button @click="patchTarefas">Editar</button>
          <button @click="deleteTarefas">Excluir</button>
        </td>
      </tr>
    </tbody>
  </table>
</template>

<script setup>
import { onMounted, ref } from "vue";
import axios from "axios";

const conteudos = ref([]);

const novoTitulo = ref('');
const novaDescricao = ref('');
const novoPrazo = ref('');

onMounted(() => {
  getTarefas();
});

async function getTarefas() {
  try {
    const resposta = await axios.get('https://api-lpv.onrender.com/tarefas');
    conteudos.value = resposta.data.data;
  } catch (erro) {
    console.error("Erro ao buscar tarefas:", erro);
  }
}

async function postTarefas() {
  try {
    await axios.post('https://api-lpv.onrender.com/tarefas', {
      titulo: novoTitulo.value,
      descricao: novaDescricao.value,
      status: "pendente",
      prazo: novoPrazo.value 
    });

    novoTitulo.value = '';
    novaDescricao.value = '';
    novoPrazo.value = '';

    await getTarefas();
  } catch (erro) {
    console.error("Erro ao salvar tarefa:", erro);
  }
}

async function patchTarefas() {
  return
}

async function deleteTarefas() {
  return
}

</script>