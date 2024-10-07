import 'package:bookstore/Screen/Login.dart';
import 'package:bookstore/Screen/SignUp.dart';
import 'package:bookstore/Screen/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}



// Class main
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login()
    );
  }

  

  void onTapSignInButton() {
  }
}


