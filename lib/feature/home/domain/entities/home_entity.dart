import 'package:lumi_care/core/network/domain/entities/entities.dart';

class HomeEntity {
  final List<SpecialtyEntity> specialties;
  final List<DoctorEntity> doctors;
  final List<ClinicEntity> clinics;
  final List<ServiceEntity> services;
  final List<FeedbackItemEntity> feedbacks;

  HomeEntity({
    required this.specialties,
    required this.doctors,
    required this.clinics,
    required this.services,
    required this.feedbacks,
  });

  factory HomeEntity.empty() => HomeEntity(
    specialties: [],
    doctors: [],
    clinics: [],
    services: [],
    feedbacks: [],
  );
}
