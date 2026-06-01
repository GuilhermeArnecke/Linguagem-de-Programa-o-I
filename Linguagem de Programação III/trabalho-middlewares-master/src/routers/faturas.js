const controller = require('../controllers/faturas')
const middAuth = require('../middlewares/auth')

module.exports = (app) => {
  app.get('/faturas', controller.getFaturas)
  app.post('/faturas', controller.createFatura)
  app.patch('/faturas/:id', controller.updateFatura)
  app.delete('/faturas/:id', middAuth.verifyJWT, controller.deleteFatura)
}