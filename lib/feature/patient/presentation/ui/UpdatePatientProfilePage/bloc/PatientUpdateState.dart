import 'package:equatable/equatable.dart';

enum PatientUpdateStatus { initial, loading, success, error }

class PatientUpdateState extends Equatable {
  final PatientUpdateStatus status;
  final String? errorMessage;

  const PatientUpdateState({
    this.status = PatientUpdateStatus.initial,
    this.errorMessage,
  });

  PatientUpdateState copyWith({
    PatientUpdateStatus? status,
    String? errorMessage,
  }) {
    return PatientUpdateState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, errorMessage];
}
