import 'package:bookstore/Classes/book.dart';
import 'package:bookstore/Classes/bookincart.dart';
import 'package:bookstore/Res/color.dart';
import 'package:bookstore/Section/ExpandableText.dart';
import 'package:bookstore/Section/NumericUpDown.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class Itemincart extends StatefulWidget {
  const Itemincart({super.key, required this.book});
  final BookInCart book;

  @override
  State<Itemincart> createState() => _ItemincartState();
}

class _ItemincartState extends State<Itemincart> {


  @override
  Widget build(BuildContext context) {
    var formatter = NumberFormat('#,###');
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Checkbox(
                  value: widget.book.isSelected,
                  onChanged: (bool? value) {
                    setState(() {
                      widget.book.isSelected = value!;
                    });
                  },
                  checkColor: Colors.white,
                  activeColor: colorAppBar,
                )),
            Expanded(
              flex: 3,
              child: SizedBox(
                height: 50,
                child: Image.asset(
                    widget.book.image),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExpandableText(
                    textToShow: widget.book.title,
                    trimLines: 2,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${formatter.format(widget.book.price)} đ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: colorAppBar),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Numericupdown(book: widget.book,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete_outline_outlined),
                          iconSize: 30,
                        ),
                      )
                    ],
                  )
                ],
              ), 
            ),
          ],
        ),
      );
  }
}
