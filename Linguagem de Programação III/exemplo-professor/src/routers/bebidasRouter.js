const bebidasController = require('../controllers/bebidasController')
const bebidasMiddleware = require('../middlewares/bebidasMiddleware')

module.exports = (app) => {
  app.get('/bebidas', bebidasController.mostrarCardapio)
  app.get('/bebidas/:codigo', verificarIdade, bebidasController.pedirBebida)
}