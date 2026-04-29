import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/use_cases/payment_usecases.dart';
import 'payment_status_event.dart';
import 'payment_status_state.dart';

class PaymentStatusBloc extends Bloc<PaymentStatusEvent, PaymentStatusState> {
  final PaymentUsecases usecases;

  PaymentStatusBloc({required this.usecases})
    : super(const PaymentStatusState()) {
    // 🎯 Khởi tạo trạng thái ban đầu từ Router
    on<PaymentStatusInitialized>((event, emit) {
      emit(
        state.copyWith(
          status: event.isSuccess
              ? PaymentStatusViewStatus.success
              : PaymentStatusViewStatus.failure,
          isSuccess: event.isSuccess,
        ),
      );
    });

    // 🎯 Re-check trạng thái từ Server nếu cần thiết
    on<PaymentStatusChecked>(_onStatusChecked);
  }

  Future<void> _onStatusChecked(
    PaymentStatusChecked event,
    Emitter<PaymentStatusState> emit,
  ) async {
    emit(state.copyWith(status: PaymentStatusViewStatus.loading));
    try {
      final pack = await usecases.getPaymentStatus(event.bookingId);
      // Giả sử status == 1 là đã thanh toán thành công
      final bool isPaid = pack.status?.status == 1;

      emit(
        state.copyWith(
          status: isPaid
              ? PaymentStatusViewStatus.success
              : PaymentStatusViewStatus.failure,
          isSuccess: isPaid,
          message: pack.status?.message,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: PaymentStatusViewStatus.failure,
          message: "Không thể xác thực trạng thái thanh toán.",
        ),
      );
    }
  }
}
