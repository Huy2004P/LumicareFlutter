import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/doctor_repository.dart';

class DoctorDataPack {
  final List<DoctorEntity> doctors;
  final DoctorEntity? selectedDoctor;
  final DoctorServiceEntity? serviceDetail;
  final List<SearchResultEntity> searchResults;

  DoctorDataPack({
    required this.doctors,
    this.selectedDoctor,
    this.serviceDetail,
    this.searchResults = const [],
  });

  factory DoctorDataPack.empty() =>
      DoctorDataPack(doctors: [], searchResults: []);
}

class DoctorUsecases {
  final DoctorRepository repository;

  DoctorUsecases(this.repository);

  Future<DoctorDataPack> getDoctorDetail(int dId) async {
    try {
      final doctor = await repository.getDoctorById(dId);
      return DoctorDataPack(doctors: [], selectedDoctor: doctor);
    } catch (e) {
      rethrow;
    }
  }

  Future<DoctorDataPack> getAllDoctors({
    int? specialtyId,
    String? searchQuery,
  }) async {
    try {
      final doctors = await repository.getAllDoctors(
        specialtyId: specialtyId,
        searchQuery: searchQuery,
      );
      return DoctorDataPack(doctors: doctors);
    } catch (e) {
      rethrow;
    }
  }

  Future<DoctorDataPack> getDoctorServices(int doctorId) async {
    try {
      final serviceDetail = await repository.getDoctorServices(doctorId);
      return DoctorDataPack(doctors: [], serviceDetail: serviceDetail);
    } catch (e) {
      rethrow;
    }
  }

  Future<DoctorDataPack> globalSearch(String query, {int limit = 10}) async {
    try {
      final results = await repository.globalSearch(query, limit: limit);
      return DoctorDataPack(doctors: [], searchResults: results);
    } catch (e) {
      rethrow;
    }
  }
}
