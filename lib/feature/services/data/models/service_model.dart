import 'package:lumi_care/core/network/domain/entities/entities.dart';

class ServiceModel extends ServiceEntity {
  ServiceModel({
    required super.id,
    required super.name,
    required super.price,
    required super.specialtyId,
    required super.description,
    required super.image,
    required super.contentHtml,
    required super.contentMarkdown,
    required super.rating,
  });

  factory ServiceModel.fromEntity(ServiceEntity entity) {
    return ServiceModel(
      id: entity.id,
      name: entity.name,
      price: entity.price,
      specialtyId: entity.specialtyId,
      description: entity.description,
      image: entity.image,
      contentHtml: entity.contentHtml,
      contentMarkdown: entity.contentMarkdown,
      rating: entity.rating,
    );
  }
}
