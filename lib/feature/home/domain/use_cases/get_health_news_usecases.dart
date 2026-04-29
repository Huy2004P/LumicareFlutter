import '../entities/newsartide_entity.dart';
import '../repositories/newsartide_repository.dart';

class GetHealthNewsUseCase {
  final NewsRepository repository;

  GetHealthNewsUseCase({required this.repository});

  Future<List<NewsArticleEntity>> call() async {
    try {
      return await repository.getHealthNews();
    } catch (e) {
      rethrow;
    }
  }
}
