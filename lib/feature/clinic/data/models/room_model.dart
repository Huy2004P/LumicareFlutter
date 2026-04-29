import 'package:lumi_care/core/network/domain/entities/entities.dart';

class RoomModel extends RoomEntity {
  RoomModel({
    required super.id,
    required super.name,
    required super.clinicId,
    required super.clinicName,
    required super.description,
    required super.location,
  });

  factory RoomModel.fromEntity(RoomEntity entity) {
    return RoomModel(
      id: entity.id,
      name: entity.name,
      clinicId: entity.clinicId,
      clinicName: entity.clinicName,
      description: entity.description,
      location: entity.location,
    );
  }
}
