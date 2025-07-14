class ArticleModel {
  final String title;
  final String? img;
  final String? description;
  final String? author;
  final String? publishedAt;
  final String? content;

  ArticleModel({
    required this.title,
    this.img,
    this.description,
    this.author,
    this.publishedAt,
    this.content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      title: json['title'] ?? 'No Title',
      img: json['urlToImage'],
      description: json['description'] ?? 'No description available.',
      author: json['author'] ?? 'Unknown Author',
      publishedAt: json['publishedAt'] ?? '',
      content: json['content'] ?? 'No additional content available.',
    );
  }
}
