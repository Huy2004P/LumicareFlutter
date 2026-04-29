import 'package:lumi_care/core/network/domain/entities/entities.dart';

class PatientModel extends PatientProfileEntity {
  PatientModel({
    required super.id,
    required super.userId,
    required super.fullName,
    required super.birthday,
    required super.gender,
    required super.phoneNumber,
    required super.address,
    required super.relationship,
  });

  factory PatientModel.fromEntity(PatientProfileEntity entity) {
    return PatientModel(
      id: entity.id,
      userId: entity.userId,
      fullName: entity.fullName,
      birthday: entity.birthday,
      gender: entity.gender,
      phoneNumber: entity.phoneNumber,
      address: entity.address,
      relationship: entity.relationship,
    );
  }
}
