import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class DoctorState {}

class DoctorInitial extends DoctorState {}

class DoctorLoading extends DoctorState {}

class DoctorSuccess extends DoctorState {
  final List<DoctorEntity> doctors;

  final List<SpecialtyEntity> allSpecialties;

  final List<String> dynamicSuggestions;

  DoctorSuccess(
    this.doctors, {
    required this.allSpecialties, // Bắt buộc phải truyền vào
    this.dynamicSuggestions = const [],
  });
}

class DoctorFailure extends DoctorState {
  final String message;
  DoctorFailure(this.message);
}
