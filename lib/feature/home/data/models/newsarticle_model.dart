import 'package:equatable/equatable.dart';

class NewsArticle extends Equatable {
  final String title;
  final String description;
  final String content;
  final String urlToImage;
  final String url;
  final String publishedAt;

  const NewsArticle({
    required this.title,
    required this.description,
    required this.content,
    required this.urlToImage,
    required this.url,
    required this.publishedAt,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      content: json['content'] ?? '',
      url: json['url'] ?? '',
      urlToImage: json['image'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
    );
  }

  @override
  List<Object?> get props => [
    title,
    description,
    content,
    urlToImage,
    url,
    publishedAt,
  ];
}
