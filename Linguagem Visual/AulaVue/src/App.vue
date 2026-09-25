<template>
  <div style="display: flex; justify-content: center;">
    <h1 style="position: absolute; font-family: sans-serif;">Porcaria de calculadora</h1>
    <div id="calculadora" style="border: 4px black solid; border-radius: 10px; width: 200px; height: 350px; margin-top: 150px;">
      <div id="tela" style="border: 2px blue solid; border-radius: 10px; margin: 10px 5px 20px 5px; height: 30px; display: flex; justify-content: center; align-items: center; background-color: lightblue;">
        {{ tela }}
      </div>
      <div id="numeros" style="display: flex; justify-content: center; flex-direction: column;">
        <div id="numeros123" style="display: flex; gap: 5px; margin: 5px 20px 5px 20px;">
          <button @click=captura style="border-radius: 10px; width: 50px; height: 50px;"><strong>1</strong></button>
          <button @click=captura style="border-radius: 10px; width: 50px; height: 50px;"><strong>3</strong></button>
          <button @click=captura style="border-radius: 10px; width: 50px; height: 50px;"><strong>3</strong></button>
        </div>
        <div id="numeros456" style="display: flex; gap: 5px; margin: 5px 20px 5px 20px;">
          <button @click=captura style="border-radius: 10px; width: 50px; height: 50px;"><strong>4</strong></button>
          <button @click=captura style="border-radius: 10px; width: 50px; height: 50px;"><strong>5</strong></button>
          <button @click=captura style="border-radius: 10px; width: 50px; height: 50px;"><strong>6</strong></button>
        </div>
        <div id="numeros789" style="display: flex; gap: 5px; margin: 5px 20px 5px 20px;">
          <button @click=captura style="border-radius: 10px; width: 50px; height: 50px;"><strong>7</strong></button>
          <button @click=captura style="border-radius: 10px; width: 50px; height: 50px;"><strong>8</strong></button>
          <button @click=captura style="border-radius: 10px; width: 50px; height: 50px;"><strong>9</strong></button>
        </div>
        <div id="zeromaismenos" style="border-radius: 10px; display: flex; gap: 5px; margin: 5px 20px 5px 20px;">
          <button @click=captura style="border-radius: 10px; width: 50px; height: 50px;"><strong>0</strong></button>
          <button @click=soma style="border-radius: 10px; width: 50px; height: 50px;"><strong>+</strong></button>
          <button @click=diminui style="border-radius: 10px; width: 50px; height: 50px;"><strong>-</strong></button>
        </div>
        <div id="enter" style="border-radius: 10px; display: flex; gap: 5px; margin: 5px 20px 5px 20px;">
          <button @click=calcular style="width: 180px; height: 25px;"><strong>CALCULAR</strong></button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
  import { computed, ref } from 'vue';

  const valores = ref('')
  const todosValores = []
  const sinals = []
  let contador = 0
  let total
  

  const tela = computed (() => {
    return valores.value;
  })

  function captura(button) {
    valores.value += button.target.innerText
  }

  function soma() {
    todosValores[contador].push(Number(valores.value))
    sinals[contador].push("+")
    contador++
    valores.value = ''
  }

  function diminui() {
    todosValores[contador].push(Number(valores.value))
    sinals[contador].push("-")
    contador++
    valores.value = ''
  }

  function calcular() {
    todosValores.push(Number(valores.value))

    total = todosValores[0]
    
    for (let i = 0; i < contador; i++) {
      if (sinals[i] === "+") {
        total += todosValores[i + 1]
      } else if (sinals[i] === "-") {
        total -= todosValores[i + 1]
      }
    }
    valores.value = total
  }
  

</script>