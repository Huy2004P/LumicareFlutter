import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_remote_datasource.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource dataSource;
  HomeRepositoryImpl(this.dataSource);

  @override
  Future<List<SpecialtyEntity>> getSpecialties() async {
    return await dataSource.getSpecialties();
  }

  @override
  Future<List<DoctorEntity>> getDoctors() async {
    return await dataSource.getDoctors();
  }

  @override
  Future<List<ClinicEntity>> getClinics() async {
    return await dataSource.getClinics();
  }

  @override
  Future<List<ServiceEntity>> getServices() async {
    return await dataSource.getServices();
  }

  @override
  Future<List<FeedbackItemEntity>> getFeedbacks() async {
    final result = await dataSource.getFeedbacks();
    return result.feedbacks;
  }

  @override
  Future<List<HomeGlobalSearchEntity>> homeSearch(String query) async {
    return await dataSource.homeSearch(query);
  }

  @override
  Future<List<String>> getSearchSuggestions(String query) async {
    return await dataSource.getSearchSuggestions(query);
  }

  @override
  Future<DoctorFeedbackEntity> getDoctorFeedbacks(int doctorId) async {
    return await dataSource.getDoctorFeedbacks(doctorId);
  }

  @override
  Future<ClinicFeedbackEntity> getClinicFeedbacks(int clinicId) async {
    return await dataSource.getClinicFeedbacks(clinicId);
  }

  @override
  Future<ServiceFeedbackEntity> getServiceFeedbacks(int serviceId) async {
    return await dataSource.getServiceFeedbacks(serviceId);
  }
}
