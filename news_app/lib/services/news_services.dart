import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();

  NewsService(Dio dio);

  Future<List<ArticleModel>> getArticles(String category) async {
    try {
      final response = await dio.get(
        'https://newsapi.org/v2/top-headlines',
        queryParameters: {
          'apiKey': '0c1e26be102c42f2b8f4d0087b421a53',
          'category': category,
          'country': 'us',
        },
      );

      if (response.statusCode == 200) {
        return (response.data['articles'] as List)
            .map((article) => ArticleModel.fromJson(article))
            .toList();
      } else {
        throw Exception('Failed to load articles');
      }
    } catch (e, stackTrace) {
      log('Error fetching articles: $e', stackTrace: stackTrace);
      throw Exception('Failed to load articles');
    }
  }
}
