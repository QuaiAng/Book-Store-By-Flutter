import 'package:bookstore/Provider/bookprovider.dart';
import 'package:bookstore/Res/color.dart';
import 'package:bookstore/Section/CartBottomAppBar.dart';
import 'package:bookstore/Section/ItemInCart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<StatefulWidget> createState() {
    return CartScreenState();
  }
}

class CartScreenState extends State<Cart> {
  
  
  @override
  Widget build(BuildContext context) {
    var books =
        Provider.of<BookProvider>(context); // Instance Provider de quan ly trang thai
    
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 233, 233, 233),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Text(
            "Giỏ hàng",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 2),
              child: IconButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/Home');
                  },
                  icon: const Icon(
                    Icons.home_outlined,
                    size: 35,
                  )),
            )
          ],
        ),
        bottomNavigationBar: Cartbottomappbar(price: books.totalMoney,),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10), 
            child: Column(
            children: [
              Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Row(
         
          children: [
            Expanded(
                flex: 1,
                child: Checkbox(
                  value: books.isCheckAll,
                  onChanged: (bool? value) {
                    setState(() {
                     books.isCheckAll = value!;
                    });
                    books.totalMoney = 0;
                    for(int i = 0; i < books.totalItems; i++){
                      var book = books.booksInCart[i];
                      if(books.isCheckAll == true) {
                        book.isSelected = true;
                        
                      } else {
                        book.isSelected = false;
                      }

                      if(book.isSelected == true){
                        books.totalMoney += book.price;
                      }
                      else {
                        books.totalMoney = 0;
                      }
                    }
                  },
                  checkColor: Colors.white,
                  activeColor: colorAppBar,
                )),
               
                  
                const Expanded(flex: 5,child: Text("Chọn tất cả sản phẩm"),)
                
              ]),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: books.totalItems,
                  itemBuilder: (context, index) {
                    var book = books.booksInCart[index];
                    
                    return Column(
                           children: [
                          Itemincart(book: book),
                          
                          if (index < books.totalItems - 1)
                            const SizedBox(
                              height: 10,
                            )
                        ],
                      );
                    
                  }),
            ],
          ),
            ),
        ));
  }
}
