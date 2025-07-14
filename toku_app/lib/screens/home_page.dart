import 'package:flutter/material.dart';
import 'package:toku_app/components/categories.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Categories> _categories = [
    Categories(title: 'Numbers'),
    Categories(title: 'Family Members'),
    Categories(title: 'Colors'),
    Categories(title: 'Phrases')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1117),
      appBar: AppBar(
        title: Text(
          'Toku',
          style: TextStyle(
              color: Color.fromARGB(255, 226, 225, 225),
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
        backgroundColor: Color(0xFF0D1117),
      ),
      body: Column(
        children: [
          GestureDetector(
            child: _categories[0],
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NumbersPage(),
              ),
            ),
          ),
          GestureDetector(
            child: _categories[1],
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FamilyPage(),
              ),
            ),
          ),
          GestureDetector(
            child: _categories[2],
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ColorsPage(),
              ),
            ),
          ),
          GestureDetector(
            child: _categories[3],
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PhrasesPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
