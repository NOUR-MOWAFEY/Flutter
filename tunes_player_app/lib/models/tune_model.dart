import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';

class TuneModel {
  final Color color;
  final String soundPath;

  const TuneModel({required this.color, required this.soundPath});

  void playSound() {
    final player = AudioPlayer();
    player.setSource(AssetSource(soundPath));
  }
}
