import 'package:flutter/material.dart';
import 'package:mp_tictactoe/responsive/responsive.dart';
import 'package:mp_tictactoe/screens/create_room_screen.dart';
import 'package:mp_tictactoe/screens/join_room_screen.dart';
import 'package:mp_tictactoe/widgets/custom_buttom.dart';

class MainMenuScreen extends StatelessWidget {
  static String routName = '/main-menu';
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void createRoom(BuildContext context) {
      Navigator.pushNamed(context, CreateRoomScreen.routName);
    }

    void joinRoom(BuildContext context) {
      Navigator.pushNamed(context, JoinRoomScreen.routName);
    }

    return Scaffold(
      body: Responsive(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(onTap: () => createRoom(context), text: "Create Room",),
              const SizedBox(height: 20,),
              CustomButton(onTap: () => joinRoom(context), text: "Join in Room",)
            ],
          ),
        ),
      ),
    );
  }
}

