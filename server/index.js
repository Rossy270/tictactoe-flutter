const express = require('express')
const http = require('http')
const mongoose = require('mongoose')

const app = express()
const port = process.env.PORT || 3000
var server = http.createServer(app)
const Room = require('./models/room')

var io = require('socket.io')(server)

app.use(express.json())

const DB =
  'mongodb+srv://lucasrossy:32821361@cluster0.n3fbtfo.mongodb.net/?retryWrites=true&w=majority'

io.on('connection', socket => {
  console.log('o socket foi conectado')
  socket.on('createRoom', async ({ nickname }) => {
    console.log(nickname)
    try {
      //Criando a sala
      let room = new Room()
      let player = {
        socketID: socket.id,
        nickname,
        playerType: 'X'
      }
      room.player.push(player)
      room.turn = player
      room = await room.save()
      console.log(room)
      const roomID = room._id.toString()
      socket.join(roomID)
      //io -> vai enviar dados para todo mundo
      //socket -> apenas enviar pra tu
      io.to(roomID).emit('createRoomSucess', room)
    } catch (e) {
      console.log(e)
    }
  })
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
