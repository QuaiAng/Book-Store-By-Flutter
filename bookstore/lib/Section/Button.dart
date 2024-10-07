import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onTapSignInButton;
  final String textOnButton;
  const Button({super.key, required this.onTapSignInButton, required this.textOnButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
      
      onPressed: onTapSignInButton,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
        ),
        backgroundColor: const Color.fromARGB(255, 0, 7, 73),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20)
      ),
      child: Text(textOnButton),

      ),
    );
   
  }
}