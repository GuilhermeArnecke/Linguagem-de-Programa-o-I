require('dotenv').config();
const express = require('express');
const app = express();
const db = require('./configs');
const PORT = process.env.PORT;

const { teste } = require('./middlewares/test');

app.use(express.json());

require('./routers')(app);

app.get('/teste_validar',teste, async (req, res) => {
  try {
    const sql = 'select version()';
    const result = await db.query(sql).then(response => response.rows);
    return res.status(200).json({
      status: 'ok',
      message: 'Conexão com o banco de dados realizada com sucesso',
      data: result
    })
  } catch (error) {
    return res.status(500).json({
      status: 'error',
      message: 'Erro ao conectar ao banco de dados',
      error: error.message
    });
  }
});

app.listen(PORT, () => {
  console.log(`API Rodando na porta ${PORT}`)
});