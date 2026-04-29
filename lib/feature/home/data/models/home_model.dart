import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/entities/home_entity.dart';

class HomeModel extends HomeEntity {
  HomeModel({
    required List<SpecialtyEntity> specialties,
    required List<DoctorEntity> doctors,
    required List<ClinicEntity> clinics,
    required List<ServiceEntity> services,
    required List<FeedbackItemEntity> feedbacks,
  }) : super(
         specialties: specialties,
         doctors: doctors,
         clinics: clinics,
         services: services,
         feedbacks: feedbacks,
       );

  factory HomeModel.fromEntities(
    List<SpecialtyEntity> s,
    List<DoctorEntity> d,
    List<ClinicEntity> c,
    List<ServiceEntity> sv,
    List<FeedbackItemEntity> fb,
  ) {
    return HomeModel(
      specialties: s,
      doctors: d,
      clinics: c,
      services: sv,
      feedbacks: fb,
    );
  }
}
