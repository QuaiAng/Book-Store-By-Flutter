import 'package:bookstore/Res/color.dart';
import 'package:flutter/material.dart';

class Detailbottomappbar extends StatelessWidget {
  const Detailbottomappbar({super.key});

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
              onPressed: (){}, 
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
                
              ),
              child: Text(
               "Thêm vào giỏ hàng" ,
                style: TextStyle(color: colorAppBar, fontSize: MediaQuery.sizeOf(context).width * 0.035),
                textAlign: TextAlign.center,
                softWrap: true,
                )
            )
          ),
          const SizedBox(width: 10,),
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
               "Mua ngay" ,
                style: TextStyle(color: Colors.white,fontSize: MediaQuery.sizeOf(context).width * 0.035),
                softWrap: true,
              ),
            ),
          ),

          
        ],
      ),
    );
  }
}
