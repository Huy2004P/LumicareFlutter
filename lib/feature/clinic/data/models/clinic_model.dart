import 'package:lumi_care/core/network/domain/entities/entities.dart';

class ClinicModel extends ClinicEntity {
  ClinicModel({
    required super.id,
    required super.name,
    required super.address,
    required super.description,
    required super.image,
    required super.type,
    required super.contentHtml,
    required super.rating,
  });

  factory ClinicModel.fromEntity(ClinicEntity entity) {
    return ClinicModel(
      id: entity.id,
      name: entity.name,
      address: entity.address,
      description: entity.description,
      image: entity.image,
      type: entity.type,
      contentHtml: entity.contentHtml,
      rating: entity.rating,
    );
  }
}
