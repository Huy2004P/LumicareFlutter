part of 'treatment_bloc.dart';

abstract class TreatmentEvent extends Equatable {
  const TreatmentEvent();

  @override
  List<Object?> get props => [];
}

class TreatmentStarted extends TreatmentEvent {
  final int userId;
  const TreatmentStarted(this.userId);

  @override
  List<Object?> get props => [userId];
}

class TreatmentRefreshRequested extends TreatmentEvent {
  final int userId;
  const TreatmentRefreshRequested(this.userId);

  @override
  List<Object?> get props => [userId];
}
