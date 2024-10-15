import 'package:bookstore/Section/Button.dart';
import 'package:bookstore/Section/Input.dart';
import 'package:flutter/material.dart';


// Controller of TextField
final TextEditingController ctrlUsername = TextEditingController();
final TextEditingController ctrlPassword = TextEditingController();
String content = "";



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login>{
  final _formKey = GlobalKey<FormState>();
 @override
  Widget build(BuildContext context) {

      return Form(
        key: _formKey,
        child: Scaffold(
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
              Input(hintText: "User name", txtController: ctrlUsername, errorText: 'Please enter your user name', isPassword: false,),
              const SizedBox(height: 15),
              Input(hintText: "Password", txtController: ctrlPassword, errorText: 'Please enter your password', isPassword: true,),
              const SizedBox(height: 20),
              Button(onTapSignInButton: (){onTapSignInButton(context);}, textOnButton: 'LOGIN'),
              const SizedBox(height: 30),
              Text(content, style: const TextStyle(color: Colors.red, fontSize: 14),),
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  TextButton(
                    onPressed: (){
                        onTapSignUpButton(context);
                    },
                    child: const Text("Sign up")
                  ),
                  const SizedBox(width: 20),
                  TextButton(
                      onPressed: (){
                          onTapForgotPasswordButton(context);
                      },
                      child: const Text("Forgot password")
                    ),
                ],
              ),

            ],
          ),
        )
      )
    );
   
  }

  void onTapSignInButton(BuildContext context) {

    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, '/Home');
    }
   
  }
  
  void onTapSignUpButton(BuildContext context) {
    Navigator.pushNamed(context, '/SignUp');
  }
  
  void onTapForgotPasswordButton(BuildContext context) {
    Navigator.pushNamed(context, '/');
  }

}