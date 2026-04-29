import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class HomeRepository {
  Future<List<SpecialtyEntity>> getSpecialties();
  Future<List<DoctorEntity>> getDoctors();
  Future<List<ClinicEntity>> getClinics();
  Future<List<ServiceEntity>> getServices();
  Future<List<FeedbackItemEntity>> getFeedbacks();
  Future<List<HomeGlobalSearchEntity>> homeSearch(String query);
  Future<List<String>> getSearchSuggestions(String query);
  Future<DoctorFeedbackEntity> getDoctorFeedbacks(int doctorId);
  Future<ClinicFeedbackEntity> getClinicFeedbacks(int clinicId);
  Future<ServiceFeedbackEntity> getServiceFeedbacks(int serviceId);
}
