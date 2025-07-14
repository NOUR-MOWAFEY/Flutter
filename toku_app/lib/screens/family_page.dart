import 'package:flutter/material.dart';
import 'package:toku_app/components/app_bar.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Family Members'),
      backgroundColor: Color(0xFF0D1117),
    );
  }
}
