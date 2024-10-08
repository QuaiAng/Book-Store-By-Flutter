import 'package:bookstore/Classes/Book.dart';
import 'package:bookstore/Section/Item.dart';

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
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Trang chủ"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Giới thiệu"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Tài khoản"),
                  ),
                ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                // DrawerHeader(
                //   decoration: BoxDecoration(color: Color.fromARGB(255, 0, 7, 73)),
                //   child: Text('Directory', style: TextStyle(color: Colors.white, fontSize: 20))
                // ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 0, 7, 73),
                  child: const ListTile(contentPadding: EdgeInsets.only(left: 50),title: Text("Directory", style: TextStyle(color: Colors.white),)),
                ),
                const ListTile(
                  title: Text("1"),
                ),
                const ListTile(
                  title: Text("2"),
                ),
                const ListTile(
                  title: Text("3"),
                ),
                const ListTile(
                  title: Text("4"),
                ),
                const ListTile(
                  title: Text("5"),
                ),
              ],
            ),
          ),
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

                // ListView.builder(
                //   itemCount: imagesProduct.length,
                //   itemBuilder: (context, index){
                //     return Item(path: imagesProduct[index].path, bookTitle: imagesProduct[index].title, bookPrice: imagesProduct[index].price.toString());
                //   }
                // )
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