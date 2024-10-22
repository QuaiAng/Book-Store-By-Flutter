import 'package:bookstore/Classes/book.dart';
import 'package:bookstore/Classes/bookincart.dart';
import 'package:flutter/material.dart';

class BookProvider with ChangeNotifier
{

  //Quan ly sach trong gio hang
  List<BookInCart> booksAreAddedToCart = [];
  List<BookInCart> get booksInCart => booksAreAddedToCart;

  //Quan ly sach hien thi o man hinh chinh
  List<Book> books = [
  Book(id: "H1", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H2", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H3", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H4", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H5", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H6", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H7", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H8", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H9", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),
  Book(id: "H0", title: "Dám Nghĩ Lại (Think Again)", price: 150000, path: "images/thinkagain.png"),  
  
];
   List<Book> get booksInHome => books;

  double totalMoney = 0;
  void editPrice(double price, bool state){
    if(state)
    {totalMoney += price;}
    else
    {totalMoney -= price;}
    notifyListeners();      
  }

  bool? isCheckAll = false; // Quan ly trang thai co chon het tat ca san pham hay khong
 
  void addBook(BookInCart book){
    booksInCart.add(book);
    notifyListeners();
  }
   void removeBook(BookInCart book){
    booksInCart.remove(book);
    notifyListeners();
  }
   void clearCart() {
    booksInCart.clear();
    notifyListeners();
  }

  int get totalItems => booksAreAddedToCart.length;
}