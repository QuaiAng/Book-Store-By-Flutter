import 'package:flutter/material.dart';


List<String> directory = [
  "Sách Tiếng Việt",
  "Sách Tiếng Anh",
  "VPP & Học cụ",
  "Đồ chơi",
  "Phụ kiện",
  "Băng đĩa",
  "Ưu đãi hot",
  "Sách giáo khoa & dụng cụ các lớp",
  "Outlet sales"
];

class Leftdrawer extends StatelessWidget {
  const Leftdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero)
            ),
            child: ListView(
              children: [
               
                Container(
                  height: 70,
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 0, 7, 73),
                  child: ListTile(
                    title: const Text('Directory', style: TextStyle(color: Colors.white, fontSize: 25)),
                    trailing: const Icon(Icons.close),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )
                ),
                for(int i = 0; i < directory.length; i++)
                  Column(
                  children: [
                    ListTile(
                    title: Text(directory[i], style: const TextStyle(fontSize: 15),softWrap: true,),
                    ),
                    const SizedBox(height: 10,)
                  ],
                )
                
              ],
            )
          );
  }
}