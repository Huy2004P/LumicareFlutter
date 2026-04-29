import 'package:equatable/equatable.dart';

abstract class PatientEvent extends Equatable {
  const PatientEvent();

  @override
  List<Object?> get props => [];
}

class LoadPatientProfilesEvent extends PatientEvent {
  final int userId;
  final bool isRetried;

  const LoadPatientProfilesEvent(this.userId, {this.isRetried = false});

  @override
  List<Object?> get props => [userId, isRetried];
}

class DeletePatientProfileEvent extends PatientEvent {
  final int profileId;
  final int userId;
  final bool isRetried;

  const DeletePatientProfileEvent(
    this.profileId,
    this.userId, {
    this.isRetried = false,
  });

  @override
  List<Object?> get props => [profileId, userId, isRetried];
}
