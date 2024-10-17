import 'package:flutter/material.dart';

class Custombottomappbar extends StatelessWidget {
  const Custombottomappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.home_outlined),
                    iconSize: 30,
                  ),
                  Text("Trang chủ")
                ],
              )
          ),
          Expanded(
            flex: 1,
            child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.info_outline),
                    iconSize: 30,
                  ),
                  Text("Giới thiệu")
                ],
              )
          ),
          Expanded(
            flex: 1,
            child: Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_outline),
                    iconSize: 30,
                  ),
                  Text("Tài khoản")
                ],
              )
          ),
        ],
      ),
    );
  }
}
