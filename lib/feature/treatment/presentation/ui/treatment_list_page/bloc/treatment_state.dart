part of 'treatment_bloc.dart';

enum TreatmentStatus { initial, loading, success, failure }

class TreatmentState extends Equatable {
  final TreatmentStatus status;
  final List<MedicalRecordSummaryEntity> records;
  final String? errorMessage;

  const TreatmentState({
    this.status = TreatmentStatus.initial,
    this.records = const [],
    this.errorMessage,
  });

  TreatmentState copyWith({
    TreatmentStatus? status,
    List<MedicalRecordSummaryEntity>? records,
    String? errorMessage,
  }) {
    return TreatmentState(
      status: status ?? this.status,
      records: records ?? this.records,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, records, errorMessage];
}
