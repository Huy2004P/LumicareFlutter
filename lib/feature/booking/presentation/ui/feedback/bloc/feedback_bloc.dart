import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/feature/booking/domain/use_cases/send_feedback_usecases.dart';

import 'feedback_event.dart';
import 'feedback_state.dart';

class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  final SendFeedbackUseCase sendFeedbackUseCase;

  FeedbackBloc({required this.sendFeedbackUseCase}) : super(FeedbackInitial()) {
    on<SendFeedbackEvent>(_onSendFeedback);
  }

  Future<void> _onSendFeedback(
    SendFeedbackEvent event,
    Emitter<FeedbackState> emit,
  ) async {
    emit(FeedbackLoading());
    try {
      final result = await sendFeedbackUseCase(event.payload);
      if (result) {
        emit(FeedbackSuccess());
      } else {
        emit(FeedbackFailure("Gửi đánh giá thất bại"));
      }
    } catch (e) {
      emit(FeedbackFailure(e.toString()));
    }
  }
}
