import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

enum BookingHistoryStatus { initial, loading, success, failure, actionSuccess }

class BookingHistoryState extends Equatable {
  final BookingHistoryStatus status;
  final List<BookingItemEntity> bookings;
  final String? errorMessage;

  const BookingHistoryState({
    this.status = BookingHistoryStatus.initial,
    this.bookings = const [],
    this.errorMessage,
  });

  BookingHistoryState copyWith({
    BookingHistoryStatus? status,
    List<BookingItemEntity>? bookings,
    String? errorMessage,
  }) {
    return BookingHistoryState(
      status: status ?? this.status,
      bookings: bookings ?? this.bookings,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, bookings, errorMessage];
}
