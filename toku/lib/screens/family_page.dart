import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/numbers.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  final List<ContainerData> family = const [
    ContainerData(
        sound: 'sounds/family_members/father.wav',
        img: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father'),
    ContainerData(
        sound: 'sounds/family_members/daughter.wav',
        img: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    ContainerData(
        sound: 'sounds/family_members/grand father.wav',
        img: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojisan',
        enName: 'grand father'),
    ContainerData(
        sound: 'sounds/family_members/mother.wav',
        img: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    ContainerData(
        sound: 'sounds/family_members/grand mother.wav',
        img: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grand mother'),
    ContainerData(
        sound: 'sounds/family_members/older brother.wav',
        img: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'older brother'),
    ContainerData(
        sound: 'sounds/family_members/older sister.wav',
        img: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister'),
    ContainerData(
        sound: 'sounds/family_members/son.wav',
        img: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    ContainerData(
        sound: 'sounds/family_members/younger brohter.wav',
        img: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger brother'),
    ContainerData(
        sound: 'sounds/family_members/younger sister.wav',
        img: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'younger sister'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6E4424),
        title: Text(
          'Family Members',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return Item(
            number: family[index],
            color: const Color(0xFF458B00),
          );
        },
      ),
    );
  }
}
