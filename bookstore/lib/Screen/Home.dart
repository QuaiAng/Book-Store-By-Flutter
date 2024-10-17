import 'package:bookstore/Classes/book.dart';
import 'package:bookstore/Section/CustomBottomAppbar.dart';
import 'package:bookstore/Section/Item.dart';
import 'package:bookstore/Section/LeftDrawer.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.products});
  final List<Book> products;

  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat('#,###');

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
            child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.25,
                
                child: CarouselView(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    itemExtent: MediaQuery.sizeOf(context).width,
                    itemSnapping: true,
                    elevation: 20,
                    padding: const EdgeInsets.all(10),
                    children: List.generate(imagePaths.length, (int index) {
                      return Expanded(
                          child: Image.asset(
                        imagePaths[index], // Trả về từng ảnh
                        fit: BoxFit.fill,
                      ));
                    })),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Số cột
                  childAspectRatio: 1, // Tỉ lệ chiều rộng/chiều cao của mỗi ô
                  crossAxisSpacing: 20, // Khoảng cách giữa các cột
                  mainAxisSpacing: 20, // Khoảng cách giữa các hàng
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Item(
                    path: products[index].path,
                    bookTitle: products[index].title,
                    bookPrice: "${formatter.format(products[index].price)} VND",
                    onTap: () {
                      Navigator.pushNamed(context, '/Detail',
                          arguments: products[index]);
                    },
                  );
                },
              ))
            ],
          ),
        )));
  }
}
