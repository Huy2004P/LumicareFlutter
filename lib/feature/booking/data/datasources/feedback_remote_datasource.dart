import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';

class FeedbackRemoteDataSource {
  final AppRepositoryImpl serverRepo;

  FeedbackRemoteDataSource(this.serverRepo);

  Future<bool> sendFeedback(Map<String, dynamic> payload) {
    return serverRepo.sendFeedback(payload);
  }
}
