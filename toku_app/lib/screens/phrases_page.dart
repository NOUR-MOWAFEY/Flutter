import 'package:flutter/material.dart';
import 'package:toku_app/components/app_bar.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Phrases'),
      backgroundColor: Color(0xFF0D1117),
    );
  }
}
