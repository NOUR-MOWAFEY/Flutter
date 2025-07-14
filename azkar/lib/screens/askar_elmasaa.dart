import 'package:azkar/components/page_structure.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class AskarElmasaa extends StatefulWidget {
  const AskarElmasaa({super.key});

  @override
  State<AskarElmasaa> createState() => _AzkarElsabahState();
}

class _AzkarElsabahState extends State<AskarElmasaa> {
  List<dynamic> azkarList = [];
  Map<int, int> remainingRepeats = {};

  @override
  void initState() {
    super.initState();
    loadAzkar();
  }

  Future<void> loadAzkar() async {
    String jsonString = await rootBundle.loadString('assets/zekrFile2.json');
    final jsonData = json.decode(jsonString);
    setState(() {
      azkarList = jsonData['content'];

      for (int i = 0; i < azkarList.length; i++) {
        remainingRepeats[i] = azkarList[i]['repeat'];
      }
    });
  }

  void decrement(int index) {
    setState(() {
      if (remainingRepeats[index] != 0) {
        remainingRepeats[index] = remainingRepeats[index]! - 1;
      } else {
        remainingRepeats[index] = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageStructure(
      azkarList: azkarList,
      decrement: decrement,
      remainingRepeats: remainingRepeats,
      title: 'أذكـار المســاء',
    );
  }
}
