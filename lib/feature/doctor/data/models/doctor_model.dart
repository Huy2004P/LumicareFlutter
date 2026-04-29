import 'package:lumi_care/core/network/domain/entities/entities.dart';

class DoctorModel extends DoctorEntity {
  DoctorModel({
    required super.id,
    required super.fullName,
    required super.email,
    required super.phone,
    required super.position,
    required super.description,
    required super.price,
    required super.avatar,
    required super.specialtyName,
    required super.roomName,
    required super.clinicName,
    required super.active,
    required super.specialtyId,
    required super.rating,
  });

  factory DoctorModel.fromEntity(DoctorEntity entity) {
    return DoctorModel(
      id: entity.id,
      fullName: entity.fullName,
      email: entity.email,
      phone: entity.phone,
      position: entity.position,
      description: entity.description,
      price: entity.price,
      avatar: entity.avatar,
      specialtyName: entity.specialtyName,
      roomName: entity.roomName,
      clinicName: entity.clinicName,
      active: entity.active,
      specialtyId: entity.specialtyId,
      rating: entity.rating,
    );
  }
}
