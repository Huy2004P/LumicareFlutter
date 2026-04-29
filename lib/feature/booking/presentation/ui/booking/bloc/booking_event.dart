part of 'booking_bloc.dart';

abstract class BookingEvent extends Equatable {
  const BookingEvent();

  @override
  List<Object?> get props => [];
}

class BookingDateChanged extends BookingEvent {
  final int doctorId;
  final String date; // Định dạng YYYY-MM-DD

  const BookingDateChanged({required this.doctorId, required this.date});

  @override
  List<Object?> get props => [doctorId, date];
}
