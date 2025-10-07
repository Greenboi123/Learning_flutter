import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String titleText;
  const CustomAppBar({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    const mainColor = Colors.white;


    return AppBar(
      centerTitle: true,
      title: Text(titleText, style: const TextStyle(color: mainColor)),
      backgroundColor: Colors.deepPurple,
      // leading: IconButton(onPressed: () {},
      //   icon: const Icon(Icons.arrow_back, color: mainColor),
      // ),
      // actions: [
      //   IconButton(onPressed: () {}, icon: const Icon(Icons.logout, color: mainColor))
      // ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
