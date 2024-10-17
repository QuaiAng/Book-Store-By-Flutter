import 'package:bookstore/Res/color.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item(
      {super.key,
      required this.path,
      required this.bookTitle,
      required this.bookPrice,
      required this.onTap});

  final String path;
  final String bookTitle;
  final String bookPrice;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: colorTheme().backgroundColorProduct,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: InkWell(
          onTap: onTap, // Sự kiện tap
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  bookTitle,
                  style: TextStyle(
                      fontSize: (MediaQuery.sizeOf(context).width * 0.032), fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: Text(
                  bookPrice,
                  style: TextStyle(fontSize: (MediaQuery.sizeOf(context).width * 0.032)),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
