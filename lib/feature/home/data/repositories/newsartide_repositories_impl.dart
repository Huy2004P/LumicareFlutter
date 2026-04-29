import '../../domain/repositories/newsartide_repository.dart';
import '../../domain/entities/newsartide_entity.dart';
import '../datasources/newsarrtide_remote_datasource.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource remoteDataSource;

  NewsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<NewsArticleEntity>> getHealthNews() async {
    // Gọi trực tiếp DataSource
    final remoteNews = await remoteDataSource.getHealthNews();

    // Map từ Model (Data) sang Entity (Domain)
    return remoteNews
        .map(
          (model) => NewsArticleEntity(
            title: model.title,
            description: model.description,
            urlToImage: model.urlToImage,
            url: model.url,
            publishedAt: model.publishedAt,
          ),
        )
        .toList();
  }
}
