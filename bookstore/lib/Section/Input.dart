import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key, required this.hintText, required this.txtController, required this.errorText, required this.isPassword, required this.icon}); 
  final bool isPassword;
  final String hintText;
  final String errorText;
  final TextEditingController txtController;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              decoration: InputDecoration(
              border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
              labelText: hintText,
              suffixIcon: icon
              ),
              minLines: 1,
              obscureText: isPassword,
              controller: txtController,
              validator: (value) {
                 if (value == null || value.isEmpty) {
                    return errorText;
                  }
                  return null;
                },
    );
  }
}