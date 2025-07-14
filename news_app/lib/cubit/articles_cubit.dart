import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/articles_state.dart';
import 'package:news_app/services/news_services.dart';

class ArticleCubit extends Cubit<ArticleState> {
  final NewsService newsService;
  String currentCategory = 'general';

  ArticleCubit(this.newsService) : super(ArticleInitial());

  Future<void> fetchArticles(String category) async {
    if (category == currentCategory && state is ArticleLoaded) return;

    currentCategory = category;
    emit(ArticleLoading());

    try {
      final articles = await newsService.getArticles(category);
      emit(ArticleLoaded(articles));
    } catch (e) {
      emit(ArticleError(e.toString()));
    }
  }
}
