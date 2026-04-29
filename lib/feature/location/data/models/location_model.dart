import 'package:lumi_care/core/network/domain/entities/entities.dart';

class LocationModel extends LocationEntity {
  LocationModel({
    super.id = 0, // Fix lỗi implicit null
    required super.userId,
    required super.label,
    required super.addressDetail,
    required super.province,
    required super.district,
    required super.ward,
    required super.latitude,
    required super.longitude,
    super.isDefault = false,
  });

  factory LocationModel.fromEntity(LocationEntity entity) {
    return LocationModel(
      id: entity.id,
      userId: entity.userId,
      label: entity.label,
      addressDetail: entity.addressDetail,
      province: entity.province,
      district: entity.district,
      ward: entity.ward,
      latitude: entity.latitude,
      longitude: entity.longitude,
      isDefault: entity.isDefault,
    );
  }
}

class LocationStatusModel extends LocationStatusEntity {
  LocationStatusModel({
    required super.success,
    required super.message,
    super.locationId = 0, // Fix tương tự cho locationId
  });

  factory LocationStatusModel.fromEntity(LocationStatusEntity entity) {
    return LocationStatusModel(
      success: entity.success,
      message: entity.message,
      locationId: entity.locationId,
    );
  }
}
