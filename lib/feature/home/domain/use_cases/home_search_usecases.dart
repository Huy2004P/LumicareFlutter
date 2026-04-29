import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/home_repository.dart';

class HomeSearchUsecases {
  final HomeRepository repository;

  HomeSearchUsecases(this.repository);
  Future<List<HomeGlobalSearchEntity>> executeHomeSearch(String query) async {
    if (query.trim().length < 2) {
      return [];
    }
    return await repository.homeSearch(query);
  }

  Future<List<String>> executeGetSearchSuggestions(String query) async {
    if (query.trim().isEmpty) {
      return [];
    }
    return await repository.getSearchSuggestions(query);
  }
}
