import 'package:flutter/material.dart';
import 'package:mp_tictactoe/responsive/responsive.dart';
import 'package:mp_tictactoe/widgets/custom_buttom.dart';
import 'package:mp_tictactoe/widgets/custom_text.dart';
import 'package:mp_tictactoe/widgets/custom_textfield.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routName = '/create-room-screen';
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameControler = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameControler.dispose();
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
                text: "Create Room",
                fontSize: 70.0,
              ),
              SizedBox(height: size.height * 0.08),
              CustomTextField(
                controller: _nameControler,
                hintText: "Enter your nickname",
              ),
              SizedBox(height: size.height * 0.045,),
              CustomButton(onTap: () {}, text: "Create")
            ],
          ),
        ),
      ),
    );
  }
}
