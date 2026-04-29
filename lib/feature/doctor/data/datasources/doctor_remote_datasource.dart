import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class DoctorRemoteDataSource {
  final AppRepositoryImpl serverRepo;
  DoctorRemoteDataSource(this.serverRepo);

  Future<DoctorEntity> getDoctorById(int dId) {
    return serverRepo.getDoctorById(dId);
  }

  Future<List<DoctorEntity>> getAllDoctors({
    int? specialtyId,
    String? searchQuery,
  }) {
    return serverRepo.getAllDoctors(
      specialtyId: specialtyId,
      searchQuery: searchQuery,
    );
  }

  Future<DoctorServiceEntity> getDoctorServices(int doctorId) {
    return serverRepo.getDoctorServices(doctorId);
  }

  Future<List<SearchResultEntity>> globalSearch(
    String query, {
    int limit = 10,
  }) {
    return serverRepo.globalSearch(query, limit: limit);
  }
}
