import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class PatientUpdateEvent extends Equatable {
  const PatientUpdateEvent();
  @override
  List<Object?> get props => [];
}

class PatientUpdateSubmitted extends PatientUpdateEvent {
  final PatientProfileEntity profile;
  const PatientUpdateSubmitted(this.profile);
  @override
  List<Object?> get props => [profile];
}
