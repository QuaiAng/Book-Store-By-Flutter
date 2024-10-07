import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key, required this.hintText, required this.txtController}); 
    
  final String hintText;
  final TextEditingController txtController;

  @override
  Widget build(BuildContext context) {
    return TextField(
              decoration: InputDecoration(
              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
              labelText: hintText
              ),
              minLines: 1,
              controller: txtController,
    );
  }
}