import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/home/domain/use_cases/notification_usecases.dart';
import '../../../../domain/use_cases/booking_usecases.dart';

part 'booking_confirm_event.dart';
part 'booking_confirm_state.dart';

class BookingConfirmBloc
    extends Bloc<BookingConfirmEvent, BookingConfirmState> {
  final CreateBookingUseCase createBookingUseCase;
  final CreateNotificationUseCase createNotificationUseCase;

  BookingConfirmBloc({
    required this.createBookingUseCase,
    required this.createNotificationUseCase,
  }) : super(const BookingConfirmState()) {
    on<ConfirmBookingSubmitted>(_onConfirmBookingSubmitted);
  }

  Future<void> _onConfirmBookingSubmitted(
    ConfirmBookingSubmitted event,
    Emitter<BookingConfirmState> emit,
  ) async {
    emit(state.copyWith(status: BookingConfirmStatus.loading));

    try {
      final result = await createBookingUseCase(event.payload, event.photos);

      if (result.success) {
        try {
          await createNotificationUseCase(
            userId: event.payload['patient_id'],
            title: "Đặt lịch thành công! 🎉",
            message:
                "Cảm ơn Huy đã đặt lịch. Chuyên gia sẽ liên hệ xác nhận sớm nhất nhé!",
            type: "SYSTEM",
          );
        } catch (notiError) {
          debugPrint("Lỗi tạo thông báo ngầm: $notiError");
        }

        emit(
          state.copyWith(
            status: BookingConfirmStatus.success,
            response: result,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: BookingConfirmStatus.failure,
            errorMessage: result.message,
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: BookingConfirmStatus.failure,
          errorMessage: "Lỗi kết nối Server: $e",
        ),
      );
    }
  }
}
