import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item(
      {super.key,
      required this.sound,
      required this.img,
      required this.jpText,
      required this.enText});

  final String sound;
  final String img;
  final String jpText;
  final String enText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: const Color(0xFF2B3137),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.centerLeft,
        height: 100,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                img,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jpText,
                  style: TextStyle(
                    color: Color(0xFFE3E1E3),
                    fontSize: 18,
                  ),
                ),
                Text(
                  enText,
                  style: TextStyle(
                    color: Color(0xFFE3E1E3),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(
                  AssetSource(sound),
                );
              },
              icon: Padding(
                padding: const EdgeInsets.all(16),
                child: Icon(
                  Icons.play_arrow,
                  color: Color(0xFFE3E1E3),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
