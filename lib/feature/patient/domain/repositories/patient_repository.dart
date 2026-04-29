import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class PatientRepository {
  Future<List<PatientProfileEntity>> getAllProfiles(int userId);
  Future<PatientProfileEntity> getProfileById(int id, int userId);
  Future<PatientProfileEntity> createProfile(PatientProfileEntity profile);
  Future<PatientProfileEntity> updateProfile(PatientProfileEntity profile);
  Future<bool> deleteProfile(int id, int userId);
}
