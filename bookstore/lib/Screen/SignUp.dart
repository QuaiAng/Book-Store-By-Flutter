
import 'package:bookstore/Section/Button.dart';
import 'package:bookstore/Section/Input.dart';
import 'package:flutter/material.dart';


// Controller of TextField
final TextEditingController ctrlUsername = TextEditingController();
final TextEditingController ctrlPassword = TextEditingController();
final TextEditingController ctrlFullname = TextEditingController();
final TextEditingController ctrlCofirmPassword = TextEditingController();
final TextEditingController ctrlPhoneNum = TextEditingController();
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(30.0), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "SIGN UP",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 30),
              Input(hintText: "Your full name", txtController: ctrlFullname),
              const SizedBox(height: 15),
              Input(hintText: "Phone number", txtController: ctrlPhoneNum),
              const SizedBox(height: 15),
              Input(hintText: "User name", txtController: ctrlUsername),
              const SizedBox(height: 15),
              Input(hintText: "Password", txtController: ctrlPassword),
              const SizedBox(height: 15),
              Input(hintText: "Comfirm password", txtController: ctrlCofirmPassword),
              const SizedBox(height: 20),
              Button(onTapSignInButton: onTapSignUpButton, textOnButton: 'SIGN UP'),
              const SizedBox(height: 60),
              TextButton(
                    onPressed: (){
                        onTapSignInButton(context);
                    }, 
                    child: const Text("Sign up")
                  ),
            ],
          ),
        ),
    )
      );
    
  }

  void onTapSignUpButton() {
  }
  
  void onTapSignInButton(BuildContext context) {
    Navigator.pop(context);
  }
}