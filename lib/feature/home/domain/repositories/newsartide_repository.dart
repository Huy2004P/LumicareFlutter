import '../entities/newsartide_entity.dart';

abstract class NewsRepository {
  Future<List<NewsArticleEntity>> getHealthNews();
}
