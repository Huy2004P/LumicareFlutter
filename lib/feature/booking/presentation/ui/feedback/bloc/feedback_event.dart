abstract class FeedbackEvent {}

class SendFeedbackEvent extends FeedbackEvent {
  final Map<String, dynamic> payload;
  SendFeedbackEvent(this.payload);
}
