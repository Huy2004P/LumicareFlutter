// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../../../domain/use_cases/schedule_usecases.dart';

part 'booking_event.dart';
part 'booking_state.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final GetScheduleUseCase getScheduleUseCase;

  BookingBloc({required this.getScheduleUseCase}) : super(BookingInitial()) {
    on<BookingDateChanged>((event, emit) async {
      emit(BookingLoading());

      try {
        final results = await getScheduleUseCase(event.doctorId, event.date);

        if (results.isEmpty) {
          emit(BookingScheduleEmpty(event.date));
        } else {
          emit(BookingScheduleLoaded(results));
        }
      } catch (e) {
        emit(
          const BookingError("Không thể lấy lịch khám, vui lòng thử lại sau."),
        );
      }
    });
  }
}
