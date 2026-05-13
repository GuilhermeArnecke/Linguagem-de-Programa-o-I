/* É a porta de entrada das rotas, responsável por reunir todas as rotas 
existente e exporta tudo de uma vez*/

const bebidasRouter = require('./bebidasRouter')

module.exports = (app) => {
  bebidasRouter(app)
}