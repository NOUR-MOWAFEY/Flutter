import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_card.dart';

class CategoiesListView extends StatelessWidget {
  const CategoiesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(img: 'assets/general.avif', categoryName: 'general'),
    CategoryModel(img: 'assets/business.avif', categoryName: 'business'),
    CategoryModel(
      img: 'assets/entertaiment.avif',
      categoryName: 'entertainment',
    ),
    CategoryModel(img: 'assets/health.avif', categoryName: 'health'),
    CategoryModel(img: 'assets/science.avif', categoryName: 'science'),
    CategoryModel(img: 'assets/sports.avif', categoryName: 'sports'),
    CategoryModel(img: 'assets/technology.jpeg', categoryName: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
