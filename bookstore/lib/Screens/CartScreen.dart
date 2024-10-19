import 'package:bookstore/Provider/bookprovider.dart';
import 'package:bookstore/Section/CartBottomAppBar.dart';
import 'package:bookstore/Section/ItemInCart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {

    var books = Provider.of<BookProvider>(context); // Provider de quan ly trang thai

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text(
            "Giỏ hàng",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 2),
              child: IconButton(onPressed: (){Navigator.popAndPushNamed(context, '/Home');}, icon: const Icon(Icons.home_outlined, size: 35,)),
            )
          ],
        ),
        bottomNavigationBar: const Cartbottomappbar(),
        body: ListView.builder(
            itemCount: books.totalItems,
            itemBuilder: (context, index) {
              var book = books.booksInCart[index];
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Itemincart(book: book),
                    if(index < books.totalItems - 1)
                      const SizedBox(height: 10,)
                  ],
                ),
              );
            }));
  }
}
