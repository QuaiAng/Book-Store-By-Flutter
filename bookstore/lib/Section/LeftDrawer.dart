import 'package:flutter/material.dart';

class Leftdrawer extends StatelessWidget {
  const Leftdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: ListView(
              children: [
                // DrawerHeader(
                //   decoration: BoxDecoration(color: Color.fromARGB(255, 0, 7, 73)),
                //   child: Text('Directory', style: TextStyle(color: Colors.white, fontSize: 20))
                // ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 0, 7, 73),
                  child: const ListTile(contentPadding: EdgeInsets.only(left: 50),title: Text("Directory", style: TextStyle(color: Colors.white),)),
                ),
                const ListTile(
                  title: Text("1"),
                ),
                const ListTile(
                  title: Text("2"),
                ),
                const ListTile(
                  title: Text("3"),
                ),
                const ListTile(
                  title: Text("4"),
                ),
                const ListTile(
                  title: Text("5"),
                ),
              ],
            ),
          );
  }
}