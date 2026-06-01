require('dotenv').config();
const express = require('express');
const app = express();
const db = require('./configs');
const PORT = process.env.PORT;

app.use(express.json());

require('./routes')(app);

app.get('/', async (req, res) => {
  try {
    const sql = 'select version()';
    const result = await db.query(sql).then(response => response.rows);
    return res.status(200).json({
      status: 'ok',
      message: 'Conexão concluída',
      data: result
    })
  } catch (error) {
    return res.status(500).json({
      status: 'error',
      message: 'Ocorreu um erro ao conectar com o banco',
      error: error.message
    });
  }
});

app.listen(PORT, () => {
  console.log(`API Rodando na porta ${PORT}`)
});