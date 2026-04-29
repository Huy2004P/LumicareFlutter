part of 'booking_bloc.dart';

abstract class BookingState extends Equatable {
  const BookingState();

  @override
  List<Object?> get props => [];
}

class BookingInitial extends BookingState {}

class BookingLoading extends BookingState {}

class BookingScheduleLoaded extends BookingState {
  final List<ScheduleItemEntity> schedules;
  const BookingScheduleLoaded(this.schedules);

  @override
  List<Object?> get props => [schedules];
}

class BookingScheduleEmpty extends BookingState {
  final String date;
  const BookingScheduleEmpty(this.date);

  @override
  List<Object?> get props => [date];
}

class BookingError extends BookingState {
  final String message;
  const BookingError(this.message);

  @override
  List<Object?> get props => [message];
}
