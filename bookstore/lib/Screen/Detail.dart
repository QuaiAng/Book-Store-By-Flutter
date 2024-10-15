import 'package:bookstore/Classes/book.dart';
import 'package:bookstore/Section/CustomBottomAppbar.dart';
import 'package:bookstore/Section/LeftDrawer.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});


  @override
  Widget build(BuildContext context) {
    
    final Book book = ModalRoute.of(context)!.settings.arguments as Book;
    
    return Scaffold(
        appBar: AppBar(
            title: const Text("DETAIL PRODUCT"),
            backgroundColor: const Color.fromARGB(255, 0, 7, 73),
            foregroundColor: Colors.white,
          ),
          drawer: const Leftdrawer(),
          bottomNavigationBar: const Custombottomappbar(),
          body: ListView(
            children: [
              Text(book.title)
            ],
          )
    );
  }
}