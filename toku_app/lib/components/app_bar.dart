import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Color.fromARGB(255, 226, 225, 225),
      ),
      backgroundColor: Color(0xFF0D1117),
      title: Text(
        title,
        style: TextStyle(
          color: Color.fromARGB(255, 226, 225, 225),
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(58.0);
}
