import 'package:flutter/material.dart';
import 'package:mp_tictactoe/responsive/responsive.dart';
import 'package:mp_tictactoe/widgets/custom_buttom.dart';

class MainMenuScreen extends StatelessWidget {
  static String rountName = '/main_menu';
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(onTap: () {}, text: "Create Room",),
                SizedBox(height: 20,),
                CustomButton(onTap: () {}, text: "Join in Room",)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

