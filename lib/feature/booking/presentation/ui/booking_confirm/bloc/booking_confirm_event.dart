part of 'booking_confirm_bloc.dart';

abstract class BookingConfirmEvent extends Equatable {
  const BookingConfirmEvent();

  @override
  List<Object> get props => [];
}

class ConfirmBookingSubmitted extends BookingConfirmEvent {
  final Map<String, dynamic> payload;
  final List<XFile> photos;

  const ConfirmBookingSubmitted({required this.payload, required this.photos});

  @override
  List<Object> get props => [payload, photos];
}
