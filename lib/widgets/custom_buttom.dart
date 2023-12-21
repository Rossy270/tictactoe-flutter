import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CustomButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 1,
            spreadRadius: 0
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
            width,
            50
          ),
          backgroundColor: Colors.blueAccent
        ),
        child: Text(text, style: const TextStyle(fontSize: 16, color: Colors.white),),
      ),
    );
  }
}