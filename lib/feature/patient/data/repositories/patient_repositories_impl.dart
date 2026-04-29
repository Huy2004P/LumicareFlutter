import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/patient_repository.dart';
import '../datasources/patient_remote_datasource.dart';

class PatientRepositoryImpl implements PatientRepository {
  final PatientRemoteDataSource dataSource;

  PatientRepositoryImpl(this.dataSource);

  @override
  Future<List<PatientProfileEntity>> getAllProfiles(int userId) {
    return dataSource.getAllProfiles(userId);
  }

  @override
  Future<PatientProfileEntity> getProfileById(int id, int userId) {
    return dataSource.getProfileById(id, userId);
  }

  @override
  Future<PatientProfileEntity> createProfile(PatientProfileEntity profile) {
    return dataSource.createProfile(profile);
  }

  @override
  Future<PatientProfileEntity> updateProfile(PatientProfileEntity profile) {
    return dataSource.updateProfile(profile);
  }

  @override
  Future<bool> deleteProfile(int id, int userId) {
    return dataSource.deleteProfile(id, userId);
  }
}
