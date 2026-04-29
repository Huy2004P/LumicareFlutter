import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/doctor_repository.dart';
import '../datasources/doctor_remote_datasource.dart';

class DoctorRepositoryImpl implements DoctorRepository {
  final DoctorRemoteDataSource dataSource;

  DoctorRepositoryImpl(this.dataSource);

  @override
  Future<DoctorEntity> getDoctorById(int id) async {
    try {
      return await dataSource.getDoctorById(id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<DoctorEntity>> getAllDoctors({
    int? specialtyId,
    String? searchQuery,
  }) async {
    try {
      return await dataSource.getAllDoctors(
        specialtyId: specialtyId,
        searchQuery: searchQuery,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DoctorServiceEntity> getDoctorServices(int doctorId) async {
    try {
      return await dataSource.getDoctorServices(doctorId);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<SearchResultEntity>> globalSearch(
    String query, {
    int limit = 10,
  }) async {
    try {
      return await dataSource.globalSearch(query, limit: limit);
    } catch (e) {
      rethrow;
    }
  }
}
