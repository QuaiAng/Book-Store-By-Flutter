import 'package:bookstore/Classes/book.dart';
import 'package:bookstore/Section/CustomBottomAppbar.dart';
import 'package:bookstore/Section/LeftDrawer.dart';
import 'package:bookstore/main.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    final Book book = ModalRoute.of(context)!.settings.arguments as Book;
    var formatter = NumberFormat('#,###');

    return Scaffold(
        appBar: AppBar(
          title: const Text("DETAIL PRODUCT"),
          backgroundColor: const Color.fromARGB(255, 0, 7, 73),
          foregroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {
                  //Xử lý khi nhấn nút
                },
              ),
            ),
          ],
        ),
        drawer: const Leftdrawer(),
        bottomNavigationBar: const Custombottomappbar(),
        body: ListView(children: [
          Expanded(
            child: Image.asset(
              book.path,
              fit: BoxFit.contain, // Đảm bảo ảnh không bị méo hoặc tràn
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${formatter.format(book.price)}đ",
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  book.title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 245, 221, 8),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("4.6"), // Sau có thể chỉnh sửa tùy theo lượt đánh giá
                    Text(" / 5 "),
                    Text(
                      "(30)",
                      style: TextStyle(color: Colors.blueGrey),
                    ) // Sau có thể chỉnh sửa tùy theo lượt đánh giá
                  ],
                )
              ],
            ),
          )
        ]));
  }
}
