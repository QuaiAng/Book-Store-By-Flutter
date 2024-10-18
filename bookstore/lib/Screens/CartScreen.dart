import 'package:bookstore/Classes/book.dart';
import 'package:bookstore/Classes/bookincart.dart';
import 'package:bookstore/Section/ItemInCart.dart';
import 'package:flutter/material.dart';



class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BookInCart> books =
        ModalRoute.of(context)!.settings.arguments as List<BookInCart>;
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
        body: ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    Itemincart(book: books[index]),
                    if(index < books.length - 1)
                      const SizedBox(height: 10,)
                  ],
                ),
              );
            }));
  }
}
