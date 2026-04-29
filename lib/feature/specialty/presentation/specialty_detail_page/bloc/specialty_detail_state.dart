part of 'specialty_detail_bloc.dart';

enum SpecialtyDetailStatus { initial, loading, success, failure }

class SpecialtyDetailState extends Equatable {
  final SpecialtyDetailStatus status;
  final SpecialtyEntity? specialty;
  final String? errorMessage;

  const SpecialtyDetailState({
    this.status = SpecialtyDetailStatus.initial,
    this.specialty,
    this.errorMessage,
  });

  SpecialtyDetailState copyWith({
    SpecialtyDetailStatus? status,
    SpecialtyEntity? specialty,
    String? errorMessage,
  }) {
    return SpecialtyDetailState(
      status: status ?? this.status,
      specialty: specialty ?? this.specialty,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, specialty, errorMessage];
}
