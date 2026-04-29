part of 'specialty_detail_bloc.dart';

abstract class SpecialtyDetailEvent extends Equatable {
  const SpecialtyDetailEvent();

  @override
  List<Object?> get props => [];
}

class SpecialtyDetailStarted extends SpecialtyDetailEvent {
  final int specialtyId;

  const SpecialtyDetailStarted(this.specialtyId);

  @override
  List<Object?> get props => [specialtyId];
}
