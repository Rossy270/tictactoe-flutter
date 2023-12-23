import 'package:flutter/material.dart';
import 'package:mp_tictactoe/screens/game_screen.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:mp_tictactoe/resource/socket_client.dart';

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;

  Socket get socketClient => _socketClient;

  void createRoom(String nickname) {
    if (nickname.isNotEmpty) {
      _socketClient.emit('createRoom', {'nickname': nickname});
    }
  }

  //Listernes
  void createRoomSuccesListener(BuildContext context) {
    _socketClient.on('createRoomSucess', (room) {
      Navigator.pushNamed(context, GameScreen.rountName);
    });
  }
}
