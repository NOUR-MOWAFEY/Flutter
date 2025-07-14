import 'package:azkar/color_manger.dart';
import 'package:flutter/material.dart';

class AzkarContainer extends StatelessWidget {
  const AzkarContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(14, 10, 14, 0),
      decoration: BoxDecoration(
        color: ColorManger().containerColor,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 85,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: ColorManger().fontColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
