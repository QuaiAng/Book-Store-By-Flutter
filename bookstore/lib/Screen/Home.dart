import 'package:bookstore/Classes/Book.dart';
import 'package:bookstore/Section/CustomBottomAppbar.dart';
import 'package:bookstore/Section/Item.dart';
import 'package:bookstore/Section/LeftDrawer.dart';

import 'package:flutter/material.dart';


  class Home extends StatelessWidget {
    const Home({super.key, required this.imagesProduct});
    final List<Book> imagesProduct;

    @override
    Widget build(BuildContext context) {

      const List<String> imagePaths = [
      'images/bn1.png',
      'images/bn2.png',
      'images/bn3.png',
      'images/bn4.png',
      'images/bn5.png',
      'images/bn6.png',
      'images/bn7.png',
      ];


      return Scaffold(
          appBar: AppBar(
            title: const Text("HOME"),
            backgroundColor: const Color.fromARGB(255, 0, 7, 73),
            foregroundColor: Colors.white,
          ),
          bottomNavigationBar: const Custombottomappbar(),
          drawer: const Leftdrawer(),
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 240,
                  child: CarouselView(
                    itemExtent: MediaQuery.sizeOf(context).width - 32,
                    itemSnapping: true,
                    elevation: 4,
                    padding: const EdgeInsets.all(8),
                    children: List.generate(imagePaths.length, (int index){
                        return Image.asset(
                        imagePaths[index],  // Trả về từng ảnh
                        fit: BoxFit.cover,);
                      })
                    ),
                ),
              Expanded(
              child: ListView.builder(
                itemCount: imagesProduct.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Item(
                        path: imagesProduct[index].path, 
                        bookTitle: imagesProduct[index].title, 
                        bookPrice: "${imagesProduct[index].price} VND",
                      ),
                      if (index < imagesProduct.length - 1) const Divider(), // Thêm Divider
                    ],
                  );
                  
                },
              ),
            )
              ],
            )
            )
        );
    }
  }