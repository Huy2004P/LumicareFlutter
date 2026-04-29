abstract class FeedbackRepository {
  Future<bool> sendFeedback(Map<String, dynamic> payload);
}
