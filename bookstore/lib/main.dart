import 'dart:ui';

import 'package:bookstore/Classes/Book.dart';
import 'package:bookstore/Screen/Detail.dart';
import 'package:bookstore/Screen/Home.dart';
import 'package:bookstore/Screen/Login.dart';
import 'package:bookstore/Screen/SignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}


class MyCustomScrollBehavior extends MaterialScrollBehavior {
  const MyCustomScrollBehavior();

  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}


List<Book> imagesProduct = [
  Book("Think Again", 4000000, "images/thinkagain.png"),
  Book("Think Again", 4000000, "images/thinkagain.png"),
  Book("Think Again", 4000000, "images/thinkagain.png"),
  Book("Think Again", 4000000, "images/thinkagain.png"),
  Book("Think Again", 4000000, "images/thinkagain.png"),
  Book("Think Again", 4000000, "images/thinkagain.png"),
  Book("Think Again", 4000000, "images/thinkagain.png"),
  Book("Think Again", 4000000, "images/thinkagain.png"),
  Book("Think Again", 4000000, "images/thinkagain.png"),
  Book("Think Again", 4000000, "images/thinkagain.png"),

];
// Class main
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MyCustomScrollBehavior(),
      // home: Home(imagesProduct: imagesProduct,)
      initialRoute: '/Login',
      routes: {
        '/Login': (context) => const Login(),
        '/SignUp': (context) => const SignUp(),
        '/Home': (context) => Home(imagesProduct: imagesProduct),
        '/Detail': (context) => const Detail(),
      },
    );
  }


}


