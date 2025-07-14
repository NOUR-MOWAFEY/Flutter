import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/constants/color_manger.dart';
import 'package:news_app/cubit/articles_cubit.dart';

class MyAppBar extends StatelessWidget {
  final List<String> categories;

  const MyAppBar({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      scrolledUnderElevation: 0,
      toolbarHeight: 45,
      pinned: true,
      floating: true,
      backgroundColor: ColorManger().myPrimary,
      title: Text(
        'Discover',
        style: TextStyle(
          fontFamily: 'PTSerif',
          color: ColorManger().mySecondaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottom: ButtonsTabBar(
        radius: 16,
        contentCenter: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 18),
        buttonMargin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        backgroundColor: ColorManger().selectedTab,
        unselectedBackgroundColor: Colors.transparent,
        unselectedLabelStyle: TextStyle(
          color: ColorManger().mySecondaryColor,
        ),
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        tabs: categories
            .map((category) =>
                Tab(text: category[0].toUpperCase() + category.substring(1)))
            .toList(),
        onTap: (index) {
          final selectedCategory = categories[index];
          BlocProvider.of<ArticleCubit>(context)
              .fetchArticles(selectedCategory);
        },
      ),
    );
  }
}
