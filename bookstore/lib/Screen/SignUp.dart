
import 'package:bookstore/Section/Button.dart';
import 'package:bookstore/Section/Input.dart';
import 'package:flutter/material.dart';


// Controller of TextField
final TextEditingController ctrlUsername = TextEditingController();
final TextEditingController ctrlPassword = TextEditingController();
final TextEditingController ctrlFullname = TextEditingController();
final TextEditingController ctrlCofirmPassword = TextEditingController();
final TextEditingController ctrlPhoneNum = TextEditingController();

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }

}
class SignUpState extends State<SignUp>{
  
  final _formKey = GlobalKey<FormState>();

   @override
  Widget build(BuildContext context) {
    

    return Form(
      key: _formKey,
      child: Scaffold(
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
              Input(hintText: "Your full name", txtController: ctrlFullname, errorText: 'Please enter your full name', isPassword: false,),
              const SizedBox(height: 15),
              Input(hintText: "Phone number", txtController: ctrlPhoneNum, errorText: 'Please enter your phone number', isPassword: false,),
              const SizedBox(height: 15),
              Input(hintText: "User name", txtController: ctrlUsername, errorText: 'Please enter your user name', isPassword: false,),
              const SizedBox(height: 15),
              Input(hintText: "Password", txtController: ctrlPassword, errorText: 'Please enter your password', isPassword: true,),
              const SizedBox(height: 15),
              Input(hintText: "Comfirm password", txtController: ctrlCofirmPassword, errorText: 'Please enter your confirm password', isPassword: true,),
              const SizedBox(height: 20),
              Button(onTapSignInButton: onTapSignUpButton, textOnButton: 'SIGN UP'),
              const SizedBox(height: 60),
              TextButton(
                    onPressed: (){
                        onTapSignInButton(context);
                    }, 
                    child: const Text("Login")
                  ),
            ],
          ),
        ),
    )
      ) 
    );
    
  }

  void onTapSignUpButton() {
    if (_formKey.currentState!.validate()) {
      Navigator.pop(context);
    }
  }
  
  void onTapSignInButton(BuildContext context) {
    Navigator.pop(context);
  }

}
