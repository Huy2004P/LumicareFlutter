import '../../domain/repositories/feedback_repositories.dart';
import '../datasources/feedback_remote_datasource.dart';

class FeedbackRepositoryImpl implements FeedbackRepository {
  final FeedbackRemoteDataSource dataSource;

  FeedbackRepositoryImpl(this.dataSource);

  // 1. ⭐ GỬI ĐÁNH GIÁ (Feedback)
  @override
  Future<bool> sendFeedback(Map<String, dynamic> payload) async {
    try {
      final result = await dataSource.sendFeedback(payload);
      return result;
    } catch (e) {
      print("[RepoImpl Error] sendFeedback: $e");
      rethrow;
    }
  }
}
