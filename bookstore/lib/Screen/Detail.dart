import 'package:bookstore/Section/CustomBottomAppbar.dart';
import 'package:bookstore/Section/LeftDrawer.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
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
              for (int i = 0; i < 150; i++)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("INDEX: $i", style: const TextStyle(fontSize: 20)),
                ),
            ],
          )
    );
  }
}