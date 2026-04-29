import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/home_repository.dart';

class HomeDataPack {
  final List<SpecialtyEntity> specialties;
  final List<DoctorEntity> doctors;
  final List<ClinicEntity> clinics;
  final List<ServiceEntity> services;
  final List<FeedbackItemEntity> feedbacks;

  HomeDataPack({
    required this.specialties,
    required this.doctors,
    required this.clinics,
    required this.services,
    required this.feedbacks,
  });
}

class HomeUsecases {
  final HomeRepository repository;
  HomeUsecases(this.repository);
  Future<HomeDataPack> call() async {
    final results = await Future.wait([
      repository.getSpecialties(),
      repository.getDoctors(),
      repository.getClinics(),
      repository.getServices(),
      repository.getFeedbacks(),
    ]);

    return HomeDataPack(
      specialties: results[0] as List<SpecialtyEntity>,
      doctors: results[1] as List<DoctorEntity>,
      clinics: results[2] as List<ClinicEntity>,
      services: results[3] as List<ServiceEntity>,
      feedbacks: results[4] as List<FeedbackItemEntity>,
    );
  }

  Future<DoctorFeedbackEntity> getDoctorFeedbacks(int doctorId) async {
    return await repository.getDoctorFeedbacks(doctorId);
  }

  Future<ClinicFeedbackEntity> getClinicFeedbacks(int clinicId) async {
    return await repository.getClinicFeedbacks(clinicId);
  }

  Future<ServiceFeedbackEntity> getServiceFeedbacks(int serviceId) async {
    return await repository.getServiceFeedbacks(serviceId);
  }

  Future<List<HomeGlobalSearchEntity>> search(String query) async {
    return await repository.homeSearch(query);
  }

  Future<List<String>> getSuggestions(String query) async {
    return await repository.getSearchSuggestions(query);
  }
}
