import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

enum PatientStatus {
  initial,
  loading,
  refreshing,
  loaded,
  success,
  error,
  deleteSuccess,
}

class PatientState extends Equatable {
  final PatientStatus status;
  final List<PatientProfileEntity> profiles;
  final String? errorMessage;

  const PatientState({
    this.status = PatientStatus.initial,
    this.profiles = const [],
    this.errorMessage,
  });

  PatientState copyWith({
    PatientStatus? status,
    List<PatientProfileEntity>? profiles,
    String? errorMessage,
  }) {
    return PatientState(
      status: status ?? this.status,
      profiles: profiles ?? this.profiles,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, profiles, errorMessage];
}
