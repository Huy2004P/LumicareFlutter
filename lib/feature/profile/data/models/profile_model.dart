import 'package:lumi_care/core/network/domain/entities/entities.dart';

class ProfileModel extends UserProfileEntity {
  ProfileModel({
    required super.id,
    required super.email,
    required super.role,
    required super.fullName,
    required super.phone,
    required super.avatar,
    required super.birthday,
    required super.createdAt,
  });

  factory ProfileModel.fromEntity(UserProfileEntity entity) {
    return ProfileModel(
      id: entity.id,
      email: entity.email,
      role: entity.role,
      fullName: entity.fullName,
      phone: entity.phone,
      avatar: entity.avatar,
      birthday: entity.birthday,
      createdAt: entity.createdAt,
    );
  }
}
