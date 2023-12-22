import 'package:flutter/material.dart';

import '../responsive/responsive.dart';
import '../widgets/custom_buttom.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textfield.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routName = '/join-room-screen';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameControler = TextEditingController();
  final TextEditingController _gameIDControler = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameControler.dispose();
    _gameIDControler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                shadows: [Shadow(color: Colors.blue, blurRadius: 40.0)],
                text: "Join Room",
                fontSize: 70.0,
              ),
              SizedBox(height: size.height * 0.08),
              CustomTextField(
                controller: _nameControler,
                hintText: "Enter your nickname",
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: _gameIDControler,
                hintText: "Enter your Gamer ID",
              ),
              SizedBox(
                height: size.height * 0.045,
              ),
              CustomButton(onTap: () {}, text: "Create")
            ],
          ),
        ),
      ),
    );
  }
}
