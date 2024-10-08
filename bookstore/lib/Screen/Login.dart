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
      );
   
  }

  void onTapSignInButton(BuildContext context) {
    if(ctrlUsername.text.toString().isNotEmpty && ctrlPassword.text.toString().isNotEmpty){
        Navigator.pop(context);
        Navigator.pushNamed(context, '/Home');
    }
    else{
      
      setState(() {
        content = "Username or password is incorrect";
      });
    }
   
  }
  
  void onTapSignUpButton(BuildContext context) {
    Navigator.pushNamed(context, '/SignUp');
  }
  
  void onTapForgotPasswordButton(BuildContext context) {
    Navigator.pushNamed(context, '/');
  }

}