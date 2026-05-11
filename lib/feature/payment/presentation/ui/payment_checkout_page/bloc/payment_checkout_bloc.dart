import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/feature/home/domain/use_cases/notification_usecases.dart';
import '../../../../domain/use_cases/payment_usecases.dart';
import '../../../../../booking/domain/use_cases/booking_usecases.dart';
import 'payment_checkout_event.dart';
import 'payment_checkout_state.dart';

class PaymentCheckoutBloc
    extends Bloc<PaymentCheckoutEvent, PaymentCheckoutState> {
  final PaymentUsecases paymentUsecases;
  final CreateBookingUseCase createBookingUseCase;
  final CreateNotificationUseCase createNotificationUseCase;

  PaymentCheckoutBloc({
    required this.paymentUsecases,
    required this.createBookingUseCase,
    required this.createNotificationUseCase,
  }) : super(const PaymentCheckoutState()) {
    // Đăng ký event reset
    on<PaymentCheckoutReset>(
      (event, emit) => emit(const PaymentCheckoutState()),
    );

    on<PaymentCheckoutInstructionFetched>(_onInstructionFetched);
    on<PaymentCheckoutConfirmSubmitted>(_onConfirmSubmitted);
    on<PaymentCheckoutStatusUpdated>((event, emit) {
      emit(state.copyWith(status: event.status));
    });
  }

  Future<void> _onInstructionFetched(
    PaymentCheckoutInstructionFetched event,
    Emitter<PaymentCheckoutState> emit,
  ) async {
    emit(state.copyWith(status: PaymentCheckoutStatus.loading));
    try {
      final pack = await paymentUsecases.getPaymentInstruction(
        event.bookingId,
        event.method,
        event.totalPrice,
      );
      emit(
        state.copyWith(
          status: PaymentCheckoutStatus.instructionSuccess,
          instruction: pack.instruction,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: PaymentCheckoutStatus.failure,
          errorMessage: "Lỗi tải mã QR",
        ),
      );
    }
  }

  Future<void> _onConfirmSubmitted(
    PaymentCheckoutConfirmSubmitted event,
    Emitter<PaymentCheckoutState> emit,
  ) async {
    emit(state.copyWith(status: PaymentCheckoutStatus.confirming));

    try {
      final Map<String, dynamic> updatedPayload = Map.from(event.payload);
      updatedPayload['payment_method'] = "PAY3";
      updatedPayload['transaction_id'] = event.transactionId;
      final bookingResult = await createBookingUseCase(
        updatedPayload,
        event.photos,
      );

      if (bookingResult.success) {
        final paymentSuccess = await paymentUsecases.confirmTransfer(
          bookingResult.bookingId,
          event.transactionId,
        );

        if (paymentSuccess) {
          try {
            await createNotificationUseCase(
              userId: event.payload['patient_id'],
              title: "Đặt lịch thành công! 🎉",
              message:
                  "Cảm ơn bạn đã đặt lịch. Chuyên gia sẽ liên hệ xác nhận sớm nhất nhé!",
              type: "SYSTEM",
            );
          } catch (notiError) {
            print("Lỗi tạo thông báo ngầm: $notiError");
          }

          emit(state.copyWith(status: PaymentCheckoutStatus.success));
        } else {
          emit(
            state.copyWith(
              status: PaymentCheckoutStatus.failure,
              errorMessage:
                  "Lịch hẹn đã tạo nhưng xác nhận thanh toán thất bại!",
            ),
          );
        }
      } else {
        emit(
          state.copyWith(
            status: PaymentCheckoutStatus.failure,
            errorMessage: bookingResult.message,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: PaymentCheckoutStatus.failure,
          errorMessage: "Lỗi hệ thống: $e",
        ),
      );
    }
  }
}
