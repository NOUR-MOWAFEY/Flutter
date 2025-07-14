import 'package:flutter/material.dart';
import 'package:toku_app/components/app_bar.dart';
import 'package:toku_app/components/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> items = const [
    Item(
      img: 'assets/images/numbers/number_one.png',
      enText: 'one',
      jpText: 'ichi',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Item(
      img: 'assets/images/numbers/number_two.png',
      enText: 'two',
      jpText: 'ni',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Item(
      img: 'assets/images/numbers/number_three.png',
      enText: 'three',
      jpText: 'san',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Item(
      img: 'assets/images/numbers/number_four.png',
      enText: 'four',
      jpText: 'shi',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Item(
      img: 'assets/images/numbers/number_five.png',
      enText: 'five',
      jpText: 'go',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Item(
      img: 'assets/images/numbers/number_six.png',
      enText: 'six',
      jpText: 'roku',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Item(
      img: 'assets/images/numbers/number_seven.png',
      enText: 'seven',
      jpText: 'Sebun',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Item(
      img: 'assets/images/numbers/number_eight.png',
      enText: 'eight',
      jpText: 'hachi',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Item(
      img: 'assets/images/numbers/number_nine.png',
      enText: 'nine',
      jpText: 'ku',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Item(
      img: 'assets/images/numbers/number_ten.png',
      enText: 'ten',
      jpText: 'juu',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0D1117),
        appBar: MyAppBar(
          title: 'Numbers',
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) => items[index],
        ));
  }
}
