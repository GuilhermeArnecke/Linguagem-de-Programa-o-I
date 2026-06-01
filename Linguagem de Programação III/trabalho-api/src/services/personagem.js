const db = require('../configs')

async function mostrarPersonagens(params) {
  const resposta = await db.query('select * from veiculos')
  return resposta.rows
}

module.exports = {
  mostrarPersonagens
}