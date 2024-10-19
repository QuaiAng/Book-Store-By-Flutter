import 'package:bookstore/Classes/book.dart';
import 'package:bookstore/Classes/bookincart.dart';
import 'package:bookstore/Provider/bookprovider.dart';
import 'package:bookstore/Res/color.dart';
import 'package:bookstore/Screens/CartScreen.dart';
import 'package:bookstore/Screens/DetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detailbottomappbar extends StatelessWidget {
  const Detailbottomappbar({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.3,
              height: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    BookInCart bookIsAdded = BookInCart(
                        title: book.title,
                        price: book.price,
                        isSelected: false,
                        image: book.path,
                        status: true,
                        id: "1");
                    var bookProvider =
                        Provider.of<BookProvider>(context, listen: false);
                    bookProvider.addBook(bookIsAdded);
                    print(bookProvider
                        .totalItems); // Provider de quan ly trang thai);
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Thêm vào giỏ hàng",
                    style: TextStyle(
                        color: colorAppBar,
                        fontSize: MediaQuery.sizeOf(context).width * 0.032),
                    textAlign: TextAlign.center,
                    softWrap: true,
                  ))),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: double.infinity,
            width: MediaQuery.sizeOf(context).width * 0.3,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: colorAppBar,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              child: Text(
                "Mua ngay",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.sizeOf(context).width * 0.032),
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
