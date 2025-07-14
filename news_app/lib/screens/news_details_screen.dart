import 'package:flutter/material.dart';
import 'package:news_app/constants/color_manger.dart';
import 'package:news_app/models/article_model.dart';

class NewsDetailsScreen extends StatelessWidget {
  final ArticleModel article;

  const NewsDetailsScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger().myPrimary,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorManger().mySecondaryColor,
        ),
        title: Text(
          'Details',
          style: TextStyle(
            color: ColorManger().mySecondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: ColorManger().myPrimary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            article.img ?? '',
            height: 250,
            width: 400,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              height: 250,
              width: 400, // Fixed width
              color: ColorManger().myBlack,
              child: Image.asset(
                'assets/images/no_image.png',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title,
                  style: TextStyle(
                    fontSize: 22,
                    color: ColorManger().mySecondaryColor,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'NotoSerif',
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'By ${article.author ?? 'Unknown Author'}  ${article.publishedAt?.split("T")[0] ?? ''}',
                  style: TextStyle(
                    fontSize: 14,
                    color: ColorManger().myGrey,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  article.description ?? 'No description available.',
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorManger().mySecondaryColor,
                    fontFamily: 'NotoSerif',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
