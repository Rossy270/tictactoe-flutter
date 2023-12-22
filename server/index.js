const express = require('express')
const http = require('http')
const mongoose = require('mongoose')

const app = express()
const port = process.env.PORT || 3000
var server = http.createServer(app)

var io = require('socket.io')(server)

app.use(express.json())

const DB =
  'mongodb+srv://lucasrossy:32821361@cluster0.n3fbtfo.mongodb.net/?retryWrites=true&w=majority'

io.on('conection', socket => {
  console.log('o socket foi conectado')
})

mongoose
  .connect(DB)
  .then(() => {
    console.log('O banco de dados foi conectado')
  })
  .catch(e => console.log(e))

server.listen(port, () => {
  console.log('O serve esta funfanfo nessa porta ' + port)
})
