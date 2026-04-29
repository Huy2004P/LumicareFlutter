part of 'treatment_detail_bloc.dart';

enum TreatmentDetailStatus { initial, loading, success, failure }

class TreatmentDetailState extends Equatable {
  final TreatmentDetailStatus status;
  final TreatmentDataEntity?
  treatmentData; // 💊 Chứa toàn bộ đơn thuốc & phác đồ
  final String? errorMessage;

  const TreatmentDetailState({
    this.status = TreatmentDetailStatus.initial,
    this.treatmentData,
    this.errorMessage,
  });

  TreatmentDetailState copyWith({
    TreatmentDetailStatus? status,
    TreatmentDataEntity? treatmentData,
    String? errorMessage,
  }) {
    return TreatmentDetailState(
      status: status ?? this.status,
      treatmentData: treatmentData ?? this.treatmentData,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, treatmentData, errorMessage];
}
