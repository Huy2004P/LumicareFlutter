// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class ClinicState extends Equatable {
  const ClinicState();

  @override
  List<Object> get props => [];
}

class ClinicDetailLoading extends ClinicState {}

class ClinicDetailSuccess extends ClinicState {
  final ClinicEntity clinic;

  const ClinicDetailSuccess(this.clinic);

  @override
  List<Object> get props => [clinic];
}

class ClinicDetailFailure extends ClinicState {
  final String message;

  const ClinicDetailFailure(this.message);

  @override
  List<Object> get props => [message];
}
