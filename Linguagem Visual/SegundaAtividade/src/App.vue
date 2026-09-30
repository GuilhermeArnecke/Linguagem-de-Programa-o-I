<template>
  <div
    class="pagina"
    :style="{ backgroundImage: `url(${fundo})` }"
  >
    <div class="area-edicao">
      <h1>Gerenciador de Tarefas</h1>

      <div class="formulario">
        <div class="campo">

          <label for="tituloTarefa">
            Título
          </label>

          <input
            id="tituloTarefa"
            v-model="novoTitulo"
            placeholder="Insira um título"
            type="text"
          />
        </div>


        <div class="campo">
          <label for="descricaoTarefa">
            Descrição
          </label>

          <input
            id="descricaoTarefa"
            v-model="novaDescricao"
            placeholder="Insira uma descrição"
            type="text"
          />
        </div>

        <div class="campo">
          <label for="statusTarefa">
            Status
          </label>

          <input
            id="statusTarefa"
            v-model="novoStatus"
            placeholder="Insira o status"
            type="text"
          />
        </div>
        
        <div class="campo">
          <label for="prazoTarefa">
            Prazo
          </label>

          <input
            id="prazoTarefa"
            v-model="novoPrazo"
            placeholder="Insira um prazo"
            type="text"
          />
        </div>

        <button
          id="salvar"
          @click="tarefaEditando ? patchTarefas() : postTarefas()"
        >
          {{ tarefaEditando ? 'Salvar Alteração' : 'Adicionar Tarefa' }}
        </button>
      </div>
    </div>

    <hr class="divisao">

    <div
      class="area-tabela"
      :style="{ backgroundImage: `url(${fundoTabela})` }"
    >

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
          <tr
            v-for="tarefa in conteudos"
            :key="tarefa.id"
          >
            <td
              class="texto-limitado"
              :title="tarefa.titulo"
            >
              {{ tarefa.titulo }}
            </td>

            <td
              class="texto-limitado"
              :title="tarefa.descricao"
            >
              {{ tarefa.descricao }}
            </td>

            <td
              class="texto-limitado"
              :title="tarefa.status"
            >
              {{ tarefa.status }}
            </td>

            <td
              class="texto-limitado"
              :title="tarefa.prazo"
            >
              {{ tarefa.prazo }}
            </td>

            <td>
              <button
                @click="editarTarefa(tarefa)"
              >
                Editar
              </button>

              <button
                @click="deleteTarefas(tarefa.id)"
              >
                Excluir
              </button>
            </td>
          </tr>

        </tbody>
      </table>
    </div>
  </div>
</template>


<script setup>

import { onMounted, ref } from "vue";
import axios from "axios";

import fundo from "./assets/fundo.jpg";
import fundoTabela from "./assets/fundo-tabela.jpg";


const conteudos = ref([]);

const novoTitulo = ref("");
const novaDescricao = ref("");
const novoPrazo = ref("");
const novoStatus = ref("");

const tarefaEditando = ref(null);


onMounted(() => {
  getTarefas();
});


async function getTarefas() {
  try {
    const resposta = await axios.get(
      "https://api-lpv.onrender.com/tarefas"
    );

    conteudos.value = resposta.data.data;
  } catch (erro) {
    console.error(
      "Erro ao buscar tarefas:",
      erro
    );
  }
}


async function postTarefas() {
  try {
    await axios.post(
      "https://api-lpv.onrender.com/tarefas",
      {
        titulo: novoTitulo.value,
        descricao: novaDescricao.value,
        status: novoStatus.value,
        prazo: novoPrazo.value
      }
    );

    novoTitulo.value = "";
    novaDescricao.value = "";
    novoPrazo.value = "";
    novoStatus.value = "";

    await getTarefas();
  } catch (erro) {
    console.error(
      "Erro ao salvar tarefa:",
      erro
    );
  }
}


function editarTarefa(tarefa) {
  tarefaEditando.value = tarefa.id;

  novoTitulo.value = tarefa.titulo;
  novaDescricao.value = tarefa.descricao;
  novoPrazo.value = tarefa.prazo;
  novoStatus.value = tarefa.status;
}


async function patchTarefas() {
  try {
    await axios.patch(
      `https://api-lpv.onrender.com/tarefas/${tarefaEditando.value}`,
      {
        titulo: novoTitulo.value,
        descricao: novaDescricao.value,
        status: novoStatus.value,
        prazo: novoPrazo.value
      }
    );

    novoTitulo.value = "";
    novaDescricao.value = "";
    novoPrazo.value = "";
    novoStatus.value = "";

    tarefaEditando.value = null;

    await getTarefas();

  } catch (erro) {

    console.error(
      "Erro ao editar tarefa:",
      erro
    );
  }
}


async function deleteTarefas(id) {
  try {
    await axios.delete(
      `https://api-lpv.onrender.com/tarefas/${id}`
    );

    await getTarefas();
  } catch (erro) {
    console.error(
      "Erro ao excluir tarefa:",
      erro
    );
  }

}
</script>


<style scoped>
:global(html) {
  margin: 0;
  padding: 0;

  width: 100%;
  min-height: 100%;
}

:global(body) {
  margin: 0;
  padding: 0;

  width: 100%;
  min-height: 100vh;
}


:global(#app) {
  margin: 0;
  padding: 0;

  width: 100%;
  min-height: 100vh;
}


:global(*) {
  box-sizing: border-box;
}

.pagina {
  min-height: 100vh;
  width: 100%;

  padding: 40px 20px;

  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;

  display: flex;
  flex-direction: column;
  align-items: center;

  font-family: "Trebuchet MS", Arial, sans-serif;
}

.area-edicao {
  width: 100%;
  max-width: 800px;

  display: flex;
  flex-direction: column;
  align-items: center;
}

.area-edicao h1 {
  margin-top: 20px;
  margin-bottom: 35px;

  font-size: 40px;

  font-weight: 600;

  text-align: center;

  color: white;

  text-shadow:
    1px 1px 2px rgba(0, 0, 0, 0.7),
    -1px -1px 2px rgba(0, 0, 0, 0.7),
    0 2px 4px rgba(0, 0, 0, 0.4);
}

.formulario {
  width: 100%;

  display: flex;
  flex-direction: column;

  gap: 20px;
}

.campo {
  width: 100%;

  display: flex;
  flex-direction: column;

  gap: 8px;
}

.campo label {
  font-size: 18px;

  font-weight: 600;

  color: white;

  text-shadow:
    1px 1px 2px rgba(0, 0, 0, 0.7),
    -1px -1px 2px rgba(0, 0, 0, 0.7);
}

.campo input {
  width: 100%;

  padding: 14px;

  background-color: white;

  border: 1px solid rgba(0, 0, 0, 0.15);

  border-radius: 8px;

  font-family: inherit;

  font-size: 17px;

  font-weight: 400;

  color: #222;

  outline: none;

  transition: 0.2s;
}

.campo input::placeholder {
  color: #777;
}

.campo input:focus {
  border-color: rgba(0, 0, 0, 0.4);

  box-shadow: 0 0 5px rgba(255, 255, 255, 0.7);
}

#salvar {
  align-self: center;

  margin-top: 10px;

  padding: 13px 28px;

  background-color: rgba(255, 255, 255, 0.95);

  border: 1px solid rgba(0, 0, 0, 0.25);

  border-radius: 8px;

  font-family: inherit;

  font-size: 17px;

  font-weight: 400;

  color: #222;

  cursor: pointer;

  transition: 0.2s;
}


#salvar:hover {
  transform: scale(1.05);

  background-color: white;

  border-color: rgba(0, 0, 0, 0.45);
}

.divisao {
  width: 90%;
  max-width: 1400px;

  margin: 55px 0;

  border: none;

  border-top: 2px solid rgba(255, 255, 255, 0.8);
}

.area-tabela {
  width: 90%;
  max-width: 1400px;

  padding: 30px;

  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;

  border-radius: 18px;

  overflow-x: auto;
}

table {
  width: 100%;

  background-color: transparent;

  border-collapse: collapse;
}

th,
td {
  padding: 15px;

  text-align: left;

  border-bottom: 1px solid rgba(0, 0, 0, 0.25);

  font-family: inherit;

  color: #111;
}

th {
  font-size: 17px;

  font-weight: 600;

  text-shadow:
    1px 1px 2px rgba(255, 255, 255, 0.8);
}

td {
  font-size: 16px;

  font-weight: 400;

  text-shadow:
    1px 1px 2px rgba(255, 255, 255, 0.8);
}

td button {
  padding: 8px 14px;

  margin-right: 6px;

  background-color: rgba(255, 255, 255, 0.75);

  border: 1px solid rgba(0, 0, 0, 0.3);

  border-radius: 6px;

  font-family: inherit;

  font-size: 14px;

  font-weight: 400;

  color: #222;

  cursor: pointer;

  transition: 0.2s;
}

td button:hover {
  transform: scale(1.05);

  background-color: rgba(255, 255, 255, 0.95);

  border-color: rgba(0, 0, 0, 0.5);
}

@media (max-width: 700px) {
  .pagina {

    padding: 25px 10px;

  }


  .area-edicao {

    width: 95%;

  }

  .area-edicao h1 {

    font-size: 30px;

  }

  .area-tabela {

    width: 95%;

    padding: 15px;

  }
}

.texto-limitado {
  max-width: 250px;

  white-space: nowrap;

  overflow: hidden;

  text-overflow: ellipsis;
}

</style>