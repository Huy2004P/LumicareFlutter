import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class DoctorDetailState {}

class DoctorDetailInitial extends DoctorDetailState {}

class DoctorDetailLoading extends DoctorDetailState {}

class DoctorDetailSuccess extends DoctorDetailState {
  final DoctorEntity doctor;
  DoctorDetailSuccess(this.doctor);
}

class DoctorDetailFailure extends DoctorDetailState {
  final String message;
  DoctorDetailFailure(this.message);
}
