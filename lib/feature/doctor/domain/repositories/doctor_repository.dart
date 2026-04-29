import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class DoctorRepository {
  Future<DoctorEntity> getDoctorById(int id);
  Future<List<DoctorEntity>> getAllDoctors({
    int? specialtyId,
    String? searchQuery,
  });
  Future<DoctorServiceEntity> getDoctorServices(int doctorId);
  Future<List<SearchResultEntity>> globalSearch(String query, {int limit = 10});
}
