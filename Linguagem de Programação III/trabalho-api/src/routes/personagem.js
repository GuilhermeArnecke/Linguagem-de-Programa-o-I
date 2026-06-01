const personagemController = require('..controllers/personagem');

module.exports = (app) => {
  app.get('/personagem', personagemController.mostrarPersonagens);
}