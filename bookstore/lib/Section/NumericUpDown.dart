import 'package:bookstore/Classes/bookincart.dart';
import 'package:bookstore/Res/color.dart';
import 'package:flutter/material.dart';


class Numericupdown extends StatefulWidget {
  const Numericupdown({super.key, required this.book});
  final BookInCart book;

  @override
  State<Numericupdown> createState() => _NumericupdownState();
}

class _NumericupdownState extends State<Numericupdown> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 233, 233, 233)
      ),
      child: Row(
        children: [
          IconButton(onPressed: (){
            setState(() {
              widget.book.quantity--;
            });
          }, icon: const Icon(Icons.remove, color: Colors.black,)),
          
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.white),
            child: Text(widget.book.quantity.toString()),
          ),
          IconButton(onPressed: (){
            setState(() {
              widget.book.quantity++;
            });
          }, icon: const Icon(Icons.add, color: Colors.black,)),
        ],
      ),
    );
  }
}