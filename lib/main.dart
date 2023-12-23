import 'package:flutter/material.dart';
import 'package:mp_tictactoe/screens/create_room_screen.dart';
import 'package:mp_tictactoe/screens/game_screen.dart';
import 'package:mp_tictactoe/screens/join_room_screen.dart';
import 'package:mp_tictactoe/screens/main_menu_screen.dart';
import 'package:mp_tictactoe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: bgColor,
          colorScheme: ColorScheme.fromSeed(
              seedColor: bgColor, brightness: Brightness.dark)),
      routes: {
        MainMenuScreen.routName: (context) => const MainMenuScreen(),
        CreateRoomScreen.routName: (context) => const CreateRoomScreen(),
        JoinRoomScreen.routName: (context) => const JoinRoomScreen(),
        GameScreen.rountName: (context) => const GameScreen()
      },
      initialRoute: MainMenuScreen.routName,
    );
  }
}
