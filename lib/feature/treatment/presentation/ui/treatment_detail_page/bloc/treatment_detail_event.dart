part of 'treatment_detail_bloc.dart';

abstract class TreatmentDetailEvent extends Equatable {
  const TreatmentDetailEvent();

  @override
  List<Object?> get props => [];
}

// 🎯 Event chính: Kích hoạt việc lấy chi tiết đơn thuốc từ bookingId
class TreatmentDetailFetched extends TreatmentDetailEvent {
  final int bookingId;

  const TreatmentDetailFetched(this.bookingId);

  @override
  List<Object?> get props => [bookingId];
}
