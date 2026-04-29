import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class PatientFormEvent extends Equatable {
  const PatientFormEvent();

  @override
  List<Object?> get props => [];
}

class CreatePatientSubmitted extends PatientFormEvent {
  final PatientProfileEntity profile;

  const CreatePatientSubmitted(this.profile);

  @override
  List<Object?> get props => [profile];
}
