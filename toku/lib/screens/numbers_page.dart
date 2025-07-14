import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/numbers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<ContainerData> numbers = const [
    ContainerData(
        sound: 'sounds/numbers/number_one_sound.mp3',
        img: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'one'),
    ContainerData(
        sound: 'sounds/numbers/number_two_sound.mp3',
        img: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two'),
    ContainerData(
        sound: 'sounds/numbers/number_three_sound.mp3',
        img: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three'),
    ContainerData(
        sound: 'sounds/numbers/number_four_sound.mp3',
        img: 'assets/images/numbers/number_four.png',
        jpName: 'Sho',
        enName: 'four'),
    ContainerData(
        sound: 'sounds/numbers/number_five_sound.mp3',
        img: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five'),
    ContainerData(
        sound: 'sounds/numbers/number_six_sound.mp3',
        img: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six'),
    ContainerData(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        img: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'seven'),
    ContainerData(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        img: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'eight'),
    ContainerData(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        img: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyu',
        enName: 'nine'),
    ContainerData(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        img: 'assets/images/numbers/number_ten.png',
        jpName: 'Ju',
        enName: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6E4424),
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            number: numbers[index],
            color: Color(0xFFD19138),
          );
        },
      ),
    );
  }
}
