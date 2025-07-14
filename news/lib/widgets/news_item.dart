import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/widgets/image_placeholder.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(8),
            child: articleModel.img != null
                ? Image.network(
                    height: 200,
                    articleModel.img!,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : ImagePlaceholder(),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
            child: Text(
              articleModel.title,

              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
            child: Text(
              articleModel.description ?? '',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
