import 'package:equatable/equatable.dart';

abstract class BookingHistoryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

// Event load danh sách
class BookingHistoryFetched extends BookingHistoryEvent {
  final int patientId;
  BookingHistoryFetched(this.patientId);

  @override
  List<Object?> get props => [patientId];
}

// Event hủy lịch
class BookingCancelRequested extends BookingHistoryEvent {
  final int bookingId;
  final int patientId;
  final String reason;
  BookingCancelRequested({
    required this.bookingId,
    required this.patientId,
    required this.reason,
  });

  @override
  List<Object?> get props => [bookingId, patientId, reason];
}

// Event xóa lịch (đã hủy hoặc hoàn thành)
class BookingDeleteRequested extends BookingHistoryEvent {
  final int bookingId;
  final int patientId; // Để fetch lại sau khi xóa
  BookingDeleteRequested({required this.bookingId, required this.patientId});

  @override
  List<Object?> get props => [bookingId, patientId];
}
