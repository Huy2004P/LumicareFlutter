import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class PatientRemoteDataSource {
  final AppRepositoryImpl serverRepo;

  PatientRemoteDataSource(this.serverRepo);

  Future<List<PatientProfileEntity>> getAllProfiles(int userId) {
    return serverRepo.getAllPatientProfiles(userId);
  }

  Future<PatientProfileEntity> createProfile(PatientProfileEntity profile) {
    return serverRepo.createPatientProfile(profile);
  }

  Future<PatientProfileEntity> updateProfile(PatientProfileEntity profile) {
    return serverRepo.updatePatientProfile(profile);
  }

  Future<bool> deleteProfile(int id, int userId) {
    return serverRepo.deletePatientProfile(id, userId);
  }

  Future<PatientProfileEntity> getProfileById(int id, int userId) {
    return serverRepo.getPatientProfileById(id, userId);
  }
}
