import 'dart:ui';

import 'package:bookstore/Classes/book.dart';
import 'package:bookstore/Provider/bookprovider.dart';
import 'package:bookstore/Screens/CartScreen.dart';
import 'package:bookstore/Screens/DetailScreen.dart';
import 'package:bookstore/Screens/HomeScreen.dart';
import 'package:bookstore/Screens/LoginScreen.dart';
import 'package:bookstore/Screens/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BookProvider()),
      ],
    child: const MainApp()
    )
  );
}


class MyCustomScrollBehavior extends MaterialScrollBehavior {
  const MyCustomScrollBehavior();

  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}


// Class main
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var books = Provider.of<BookProvider>(context, listen: false);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MyCustomScrollBehavior(),
      initialRoute: '/Login',
      routes: {
        '/Login': (context) => const Login(),
        '/SignUp': (context) => const SignUp(),
        '/Home': (context) => Home(products: books.booksInHome),
        '/Detail': (context) => const Detail(),
        '/Cart': (context) => const Cart(),
      },
    );
  }


}


