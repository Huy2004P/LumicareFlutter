import 'package:lumi_care/feature/booking/domain/repositories/feedback_repositories.dart';

class SendFeedbackUseCase {
  final FeedbackRepository repository;

  SendFeedbackUseCase(this.repository);

  Future<bool> call(Map<String, dynamic> payload) async {
    try {
      return await repository.sendFeedback(payload);
    } catch (e) {
      rethrow;
    }
  }
}
