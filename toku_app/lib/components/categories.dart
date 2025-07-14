import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.title, this.onTap});
  final String title;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: const Color(0xFF2B3137),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(18),
          alignment: Alignment.center,
          height: 100,
          width: double.infinity,
          child: Text(
            title,
            style: TextStyle(
              color: const Color.fromARGB(255, 226, 225, 225),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
