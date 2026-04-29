import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/use_cases/booking_usecases.dart';
import 'booking_history_event.dart';
import 'booking_history_state.dart';

class BookingHistoryBloc
    extends Bloc<BookingHistoryEvent, BookingHistoryState> {
  final GetBookingHistoryUseCase getHistory;
  final CancelBookingUseCase cancelBooking;
  final DeleteBookingUseCase deleteBooking;

  BookingHistoryBloc({
    required this.getHistory,
    required this.cancelBooking,
    required this.deleteBooking,
  }) : super(const BookingHistoryState()) {
    // Xử lý Fetch
    on<BookingHistoryFetched>((event, emit) async {
      emit(state.copyWith(status: BookingHistoryStatus.loading));
      try {
        final result = await getHistory.call(event.patientId);
        emit(
          state.copyWith(
            status: BookingHistoryStatus.success,
            bookings: result,
          ),
        );
      } catch (e) {
        emit(
          state.copyWith(
            status: BookingHistoryStatus.failure,
            errorMessage: e.toString(),
          ),
        );
      }
    });

    // Xử lý Hủy (Cancel)
    on<BookingCancelRequested>((event, emit) async {
      try {
        final success = await cancelBooking.call(
          event.bookingId,
          event.patientId,
          event.reason,
        );
        if (success) {
          // Sau khi hủy thành công, tự động fetch lại danh sách mới nhất
          add(BookingHistoryFetched(event.patientId));
        }
      } catch (e) {
        emit(
          state.copyWith(
            status: BookingHistoryStatus.failure,
            errorMessage: "Hủy thất bại",
          ),
        );
      }
    });

    // Xử lý Xóa (Delete)
    on<BookingDeleteRequested>((event, emit) async {
      try {
        final success = await deleteBooking.call(event.bookingId);
        if (success) {
          add(BookingHistoryFetched(event.patientId));
        }
      } catch (e) {
        emit(
          state.copyWith(
            status: BookingHistoryStatus.failure,
            errorMessage: "Xóa thất bại",
          ),
        );
      }
    });
  }
}
