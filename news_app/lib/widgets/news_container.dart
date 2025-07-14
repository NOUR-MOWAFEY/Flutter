import 'package:flutter/material.dart';
import 'package:news_app/constants/color_manger.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/screens/news_details_screen.dart';

class NewsContainer extends StatelessWidget {
  final ArticleModel article;

  const NewsContainer({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailsScreen(article: article),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              width: 400,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      article.img ?? 'assets/images/no_image.png',
                      height: 200,
                      width: 400,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 200,
                        width: 400,
                        color: ColorManger().myBlack,
                        child: Image.asset(
                          'assets/images/no_image.png',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text(
                      article.title,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        color: ColorManger().mySecondaryColor,
                        fontFamily: 'NotoSerif',
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text(
                      article.description ?? '',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 12,
                        color: ColorManger().myGrey,
                        fontFamily: 'NotoSerif',
                        fontWeight: FontWeight.w200,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
