const servicePersonagem = require('../services/personagem')

async function mostrarPersonagens (req, res) {
  const personagens = await servicePersonagem.mostrarPersonagens()
  return res.status(200).json({
    status: 'ok',
    data: personagens
  })
}

module.exports = {
  mostrarPersonagens
}