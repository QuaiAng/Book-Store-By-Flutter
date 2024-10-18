import 'dart:ui';

import 'package:bookstore/Classes/book.dart';
import 'package:bookstore/Screens/Detail.dart';
import 'package:bookstore/Screens/Home.dart';
import 'package:bookstore/Screens/Login.dart';
import 'package:bookstore/Screens/SignUp.dart';
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
  Book(id: "H1", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H2", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H3", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H4", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H5", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H6", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H7", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H8", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H9", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H0", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),  
  
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


