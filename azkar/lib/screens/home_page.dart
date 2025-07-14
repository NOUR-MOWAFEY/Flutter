import 'package:azkar/categories.dart';
import 'package:azkar/color_manger.dart';
import 'package:azkar/my_app_bar.dart';
import 'package:azkar/screens/askar_elmasaa.dart';
import 'package:azkar/screens/askar_post_pray.dart';
import 'azkar_elsabah.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger().bg,
      appBar: MyAppBar(title: 'الأذكار'),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AzkarElsabah(),
                ),
              );
            },
            child: Categories(
              title: 'أذكـار الصبــاح',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AskarElmasaa(),
                ),
              );
            },
            child: Categories(
              title: 'أذكـار المســاء',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AskarPostPray(),
                ),
              );
            },
            child: Categories(
              title: 'أذكـار بعد الصـلاة',
            ),
          ),
        ],
      ),
    );
  }
}
