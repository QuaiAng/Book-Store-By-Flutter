import 'package:bookstore/Section/Button.dart';
import 'package:bookstore/Section/Input.dart';
import 'package:flutter/material.dart';


// Controller of TextField
final TextEditingController ctrlUsername = TextEditingController();
final TextEditingController ctrlPassword = TextEditingController();

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "WELCOME TO BOOK STORE CKC !",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 30),
              Input(hintText: "User name", txtController: ctrlUsername),
              const SizedBox(height: 15),
              Input(hintText: "Password", txtController: ctrlPassword),
              const SizedBox(height: 20),
              Button(onTapSignInButton: onTapSignInButton, textOnButton: 'LOGIN'),
              const SizedBox(height: 80),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Text(
                "SIGN UP",
                style: TextStyle(
                  fontSize: 13,
                  decoration: TextDecoration.underline,
                  color: Color.fromARGB(255, 1, 45, 121)
                ),
              ),
                SizedBox(width: 20),
                Text(
                   "I FORGOT PASSWORD !",
                    style: TextStyle(
                    fontSize: 13,
                    decoration: TextDecoration.underline,
                    color: Color.fromARGB(255, 1, 45, 121)
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        )
      );
   
  }

  void onTapSignInButton() {
  }
}