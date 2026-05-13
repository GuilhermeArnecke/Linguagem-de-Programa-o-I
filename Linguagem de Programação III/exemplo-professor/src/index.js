const express = require('express')
const app = express()

require('./routers')(app)

app.listen(3000, () => {
  console.log('exemplo-professor rodando na porta 3000')
})