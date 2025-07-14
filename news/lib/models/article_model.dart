class ArticleModel {
  final String? img;
  final String title;
  final String? description;

  ArticleModel({
    required this.img,
    required this.title,
    required this.description,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      img: json['urlToImage'],
      title: json['title'],
      description: json['description'],
    );
  }
}
