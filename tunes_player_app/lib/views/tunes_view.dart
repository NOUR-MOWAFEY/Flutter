import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_model.dart';
import 'package:tunes_player_app/widgets/tune_item.dart';

class TunesView extends StatelessWidget {
  const TunesView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, soundPath: 'note1.wav'),
    TuneModel(color: Colors.orange, soundPath: 'note2.wav'),
    TuneModel(color: Colors.yellow, soundPath: 'note3.wav'),
    TuneModel(color: Colors.green, soundPath: 'note4.wav'),
    TuneModel(color: Colors.greenAccent, soundPath: 'note5.wav'),
    TuneModel(color: Colors.blue, soundPath: 'note6.wav'),
    TuneModel(color: Colors.purple, soundPath: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2D3B43),
        toolbarHeight: 70,
        title: Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Column(children: tunes.map((e) => TuneItem(tune: e)).toList()),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> items = [];
  //   for (var color in colors) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
