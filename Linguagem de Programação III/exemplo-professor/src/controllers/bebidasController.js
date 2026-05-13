const bebidasService = require('../services/bebidasService')

function mostrarCardapio (req, res) {
  const cardapio = bebidasService.mostrarCardapio()
  return res.status(200).json(cardapio)
}

function pedirBebida (req, res) {
  const bebida = bebidasService.pedirBebida(req.params.codigo, req.query.idade)
  if (!bebida) {
    return res.status(400).send('Bebida não encontrada')
  }
  return res.status(200).json(bebida)
}

module.exports = {
  mostrarCardapio,
  pedirBebida
}