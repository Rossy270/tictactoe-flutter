const mongoose = require('mongoose')
const playerSchema = require('./player')

const roomScema = new mongoose.Schema({
  occupancy: {
    type: Number,
    default: 2
  },
  maxRounds: {
    type: Number,
    default: 6
  },
  currentRound: {
    type: Number,
    default: 1
  },
  player: [playerSchema],
  isJoin: {
    type: Boolean,
    default: true
  },
  turn: playerSchema,
  turnIndex: {
    type: Number,
    default: 0
  }
})

const roomModel = mongoose.model('Room', roomScema)
module.exports = roomModel
