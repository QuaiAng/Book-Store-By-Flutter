import 'package:flutter/material.dart';

class Custombottomappbar extends StatelessWidget {
  const Custombottomappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Trang chủ"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Giới thiệu"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Tài khoản"),
                  ),
                ],
            ),
          );
  }
}