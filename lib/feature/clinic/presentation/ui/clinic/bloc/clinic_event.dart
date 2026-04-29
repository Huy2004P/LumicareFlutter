// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';

abstract class ClinicEvent extends Equatable {
  const ClinicEvent();

  @override
  List<Object> get props => [];
}

class ClinicDetailStarted extends ClinicEvent {
  final int clinicId;

  const ClinicDetailStarted(this.clinicId);

  @override
  List<Object> get props => [clinicId];
}
