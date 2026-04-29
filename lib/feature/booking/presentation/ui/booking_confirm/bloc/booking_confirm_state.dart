part of 'booking_confirm_bloc.dart';

enum BookingConfirmStatus { initial, loading, success, failure }

class BookingConfirmState extends Equatable {
  final BookingConfirmStatus status;
  final BookingResponseEntity? response;
  final String? errorMessage;
  final BookingItemEntity? bookingItem;

  const BookingConfirmState({
    this.status = BookingConfirmStatus.initial,
    this.response,
    this.errorMessage,
    this.bookingItem,
  });

  BookingConfirmState copyWith({
    BookingConfirmStatus? status,
    BookingResponseEntity? response,
    String? errorMessage,
    BookingItemEntity? bookingItem,
  }) {
    return BookingConfirmState(
      status: status ?? this.status,
      response: response ?? this.response,
      errorMessage: errorMessage ?? this.errorMessage,
      bookingItem: bookingItem ?? this.bookingItem,
    );
  }

  @override
  List<Object?> get props => [status, response, errorMessage, bookingItem];
}
