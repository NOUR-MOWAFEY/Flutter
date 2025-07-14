import 'package:azkar/color_manger.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: ColorManger().whiteColor,
      ),
      toolbarHeight: 65,
      backgroundColor: ColorManger().appBarColor,
      title: SizedBox(
        width: double.infinity,
        child: Text(
          textAlign: TextAlign.right,
          title,
          style: TextStyle(
            fontSize: 28,
            color: ColorManger().fontColor,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(4.0),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          color: Colors.white38,
          height: 1.0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 65);
}
