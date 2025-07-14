import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/constants/color_manger.dart';
import 'package:news_app/cubit/articles_cubit.dart';
import 'package:news_app/cubit/articles_state.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/my_app_bar.dart';
import 'package:news_app/widgets/news_container.dart';

class HomePage extends StatelessWidget {
  final List<String> categories = [
    'general',
    'business',
    'sports',
    'technology',
    'entertainment',
    'health',
    'science',
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ArticleCubit(NewsService(Dio()))..fetchArticles('general'),
      child: DefaultTabController(
        length: categories.length,
        child: Scaffold(
          backgroundColor: ColorManger().myPrimary,
          body: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              MyAppBar(categories: categories),
            ],
            body: BlocBuilder<ArticleCubit, ArticleState>(
              builder: (context, state) {
                if (state is ArticleLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is ArticleError) {
                  return Center(
                    child: Text(
                      'Error: ${state.message}',
                      style: TextStyle(
                        color: ColorManger().mySecondaryColor,
                      ),
                    ),
                  );
                } else if (state is ArticleLoaded) {
                  return ListView.builder(
                    padding: const EdgeInsets.only(top: 12),
                    itemCount: state.articles.length,
                    itemBuilder: (context, index) {
                      final article = state.articles[index];
                      return NewsContainer(article: article);
                    },
                  );
                }
                return Center(
                  child: Text(
                    'No articles found.',
                    style: TextStyle(
                      color: ColorManger().mySecondaryColor,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
