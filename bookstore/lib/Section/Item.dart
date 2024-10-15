

import 'package:flutter/material.dart';

class Item extends StatelessWidget {

  const Item({super.key, required this.path, required this.bookTitle, required this.bookPrice, required this.onTap});

  final String path;
  final String bookTitle;
  final String bookPrice;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    
    return ListTile(
        leading: Image.asset(path),
        title: Text(bookTitle, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        subtitle: Text(bookPrice),
        onTap: onTap 
    );
  }
}