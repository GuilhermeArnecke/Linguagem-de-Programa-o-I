const { response } = require("express");

function verificarIdade (req, res, next) {
  const idade = req.query.idade;
  if (!idade) {
    return response.status(400).send('Informe a idade via query')
  }

  next()
}

module.exports = {
  verificarIdade
}