import 'package:bookstore/Res/color.dart';
import 'package:flutter/material.dart';

class Cartbottomappbar extends StatelessWidget {
  const Cartbottomappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("150.000 đ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: colorAppBar,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
              child:  Row(
                  children: [
                    Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 19),
                child: Text(
                      "Thanh toán",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.sizeOf(context).width * 0.032),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    )
                  ),
                    const Icon(Icons.attach_money_outlined, color: Colors.white, size: 15,)
                  ],
                ),
          ),
        ],
      ),
    );
  }
}
