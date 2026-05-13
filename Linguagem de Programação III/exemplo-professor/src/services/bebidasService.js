const bebidas = [
  { codigo: 1, nome: 'Chopp Brahma 500ml', preco: 15, alcoolico: true},
  { codigo: 2, nome: 'Água com Gás', preco: 5, alcoolico: false}
]

function mostrarCardapio () {
  return bebidas
}

function pedirBebida (codigo, idade) {
  const bebida = bebidas.find(bebida => bebida.codigo == codigo)
  if (!bebida) {
    return null
  }

  if (bebida.alcoolico && idade < 18) {
    return null
  }
}

module.exports = {
  mostrarCardapio,
  pedirBebida
}