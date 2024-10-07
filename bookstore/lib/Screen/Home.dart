import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("HOME"),
          backgroundColor: const Color.fromARGB(255, 0, 7, 73),
          foregroundColor: Colors.white,
        ),
        drawer: Drawer(
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
                child: const Text('Directory', style: TextStyle(color: Colors.white, fontSize: 20)),
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
        ),
        body: Column()
      );
  }
}