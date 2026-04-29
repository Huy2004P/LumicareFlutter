import 'package:lumi_care/core/network/domain/entities/entities.dart';

class SpecialtyModel extends SpecialtyEntity {
  SpecialtyModel({
    required super.id,
    required super.name,
    required super.description,
    required super.image,
    required super.contentHtml,
    required super.contentMarkdown,
  });

  factory SpecialtyModel.fromEntity(SpecialtyEntity entity) {
    return SpecialtyModel(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      image: entity.image,
      contentHtml: entity.contentHtml,
      contentMarkdown: entity.contentMarkdown,
    );
  }
}
