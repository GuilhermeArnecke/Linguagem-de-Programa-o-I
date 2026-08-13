const swaggerAutogen = require('swagger-autogen')();

const doc = {
  info: {
    title: 'API Atividade 5o semestre',
    description: 'Essa faculdade vai acabar me matando'
  },
  host: 'localhost:3000'
};

const outputFile = './swagger-output.json';
const routes = [
  '../routers/auth.js', 
  '../routers/vendas.js',
  '../routers/faturas.js'
];

swaggerAutogen(outputFile, routes, doc);