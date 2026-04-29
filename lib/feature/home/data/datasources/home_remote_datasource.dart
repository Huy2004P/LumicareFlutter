import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class HomeRemoteDataSource {
  final AppRepositoryImpl serverRepo;
  HomeRemoteDataSource(this.serverRepo);

  Future<List<SpecialtyEntity>> getSpecialties() =>
      serverRepo.getAllSpecialties();

  Future<List<DoctorEntity>> getDoctors() => serverRepo.getAllDoctors();

  Future<List<ClinicEntity>> getClinics() => serverRepo.getClinics();

  Future<List<ServiceEntity>> getServices() => serverRepo.getAllServices();

  Future<DoctorFeedbackEntity> getFeedbacks() => serverRepo.getAllFeedbacks();

  Future<List<HomeGlobalSearchEntity>> homeSearch(String query) =>
      serverRepo.homeSearch(query);

  Future<List<String>> getSearchSuggestions(String query) =>
      serverRepo.getSearchSuggestions(query);

  Future<ClinicFeedbackEntity> getClinicFeedbacks(int clinicId) =>
      serverRepo.getClinicFeedbacks(clinicId);

  Future<ServiceFeedbackEntity> getServiceFeedbacks(int serviceId) =>
      serverRepo.getServiceFeedbacks(serviceId);

  Future<DoctorFeedbackEntity> getDoctorFeedbacks(int doctorId) =>
      serverRepo.getDoctorFeedbacks(doctorId);
}
