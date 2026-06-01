const controller = require('../controllers/vendas')
const middAuth = require('../middlewares/auth')

module.exports = (app) => {
  app.get('/vendas', middAuth.verifyJWT, controller.getVendas)
  app.post('/vendas', middAuth.verifyJWT, controller.createVenda)
  app.patch('/vendas/:id', middAuth.verifyJWT, controller.updateVenda)
  app.delete('/vendas/:id', middAuth.verifyJWT, controller.deleteVenda)
}