const controller = require('../controllers/faturas')
const middAuth = require('../middlewares/auth')

module.exports = (app) => {
  app.get('/faturas',middAuth.verifyJWT, controller.getFaturas)
  app.post("/faturas", middAuth.verifyJWT, controller.createFatura);
  app.patch("/faturas/:id", middAuth.verifyJWT, controller.updateFatura);
  app.delete('/faturas/:id', middAuth.verifyJWT, controller.deleteFatura)
}