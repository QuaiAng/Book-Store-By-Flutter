import 'dart:ui';

import 'package:bookstore/Classes/book.dart';
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

List<Book> products = [
  Book(id: "H1", title: "Think Again", price: 4500000, path: "images/thinkagain.png"),
  Book(id: "H2", title: "Think Again", price: 4500000, path: "images/thinkagain.png"),
  Book(id: "H3", title: "Think Again", price: 4500000, path: "images/thinkagain.png"),
  Book(id: "H4", title: "Think Again", price: 4500000, path: "images/thinkagain.png"),
  Book(id: "H5", title: "Think Again", price: 4500000, path: "images/thinkagain.png"),
  Book(id: "H6", title: "Think Again", price: 4500000, path: "images/thinkagain.png"),
  Book(id: "H7", title: "Think Again", price: 4500000, path: "images/thinkagain.png"),
  Book(id: "H8", title: "Think Again", price: 4500000, path: "images/thinkagain.png"),
  Book(id: "H9", title: "Think Again", price: 4500000, path: "images/thinkagain.png"),
  Book(id: "H0", title: "Think Again", price: 4500000, path: "images/thinkagain.png"),  
  
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
        '/Home': (context) => Home(products: products),
        '/Detail': (context) => const Detail(),
      },
    );
  }


}


