import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/numbers.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ContainerData> family = const [
    ContainerData(
        sound: 'sounds/colors/black.wav',
        img: 'assets/images/colors/color_black.png',
        jpName: 'Word Word Word Word Word Word',
        enName: 'enWord enWord enWord enWord'),
    ContainerData(
        sound: 'sounds/colors/brown.wav',
        img: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    ContainerData(
        sound: 'sounds/colors/dusty yellow.wav',
        img: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'dusty yellow'),
    ContainerData(
        sound: 'sounds/colors/gray.wav',
        img: 'assets/images/colors/color_gray.png',
        jpName: 'Gurē',
        enName: 'gray'),
    ContainerData(
        sound: 'sounds/colors/green.wav',
        img: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    ContainerData(
        sound: 'sounds/colors/red.wav',
        img: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    ContainerData(
        sound: 'sounds/colors/white.wav',
        img: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'white'),
    ContainerData(
        sound: 'sounds/colors/yellow.wav',
        img: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6E4424),
        title: Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return PhasesItems(
            number: family[index],
            color: const Color(0xFF00ACD9),
          );
        },
      ),
    );
  }
}
