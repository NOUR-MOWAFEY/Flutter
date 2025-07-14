import 'package:flutter/material.dart';
import 'package:news/models/article_model.dart';
import 'package:news/widgets/news_item.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return NewsItem(articleModel: articles[index]);
      }),
    );
  }
}
