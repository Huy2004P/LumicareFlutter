import 'package:lumi_care/core/network/data/models/generated/search.pb.dart'
    as searchgb;
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class HomeSearchModel extends HomeGlobalSearchEntity {
  const HomeSearchModel({
    required super.id,
    required super.type,
    required super.title,
    required super.subtitle,
    required super.image,
  });
  factory HomeSearchModel.fromProto(searchgb.SearchResult item) {
    return HomeSearchModel(
      id: item.id,
      type: item.type, // "DOCTOR", "SPECIALTY", "SERVICE"
      title: item.title,
      subtitle: item.subtitle,
      image: item.image,
    );
  }
  static List<HomeSearchModel> fromProtoList(
    List<searchgb.SearchResult> items,
  ) {
    return items.map((item) => HomeSearchModel.fromProto(item)).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'title': title,
      'subtitle': subtitle,
      'image': image,
    };
  }
}
