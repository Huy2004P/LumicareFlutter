import 'package:lumi_care/core/network/domain/entities/entities.dart';

import '../repositories/patient_repository.dart';

class PatientDataPack {
  final List<PatientProfileEntity> profiles;
  final PatientProfileEntity? selectedProfile;

  PatientDataPack({required this.profiles, this.selectedProfile});

  factory PatientDataPack.empty() => PatientDataPack(profiles: []);
}

class PatientUsecases {
  final PatientRepository repository;

  PatientUsecases(this.repository);

  // 1. Lấy danh sách hồ sơ
  Future<PatientDataPack> getAllProfiles(int userId) async {
    try {
      final profiles = await repository.getAllProfiles(userId);
      return PatientDataPack(profiles: profiles);
    } catch (e) {
      rethrow;
    }
  }

  // 2. Lấy chi tiết 1 hồ sơ
  Future<PatientDataPack> getProfileDetail(int id, int userId) async {
    try {
      final profile = await repository.getProfileById(id, userId);
      return PatientDataPack(profiles: [], selectedProfile: profile);
    } catch (e) {
      rethrow;
    }
  }

  // 3. Tạo mới hồ sơ
  Future<PatientProfileEntity> createProfile(
    PatientProfileEntity profile,
  ) async {
    try {
      return await repository.createProfile(profile);
    } catch (e) {
      rethrow;
    }
  }

  // 4. Cập nhật hồ sơ
  Future<PatientProfileEntity> updateProfile(
    PatientProfileEntity profile,
  ) async {
    try {
      return await repository.updateProfile(profile);
    } catch (e) {
      rethrow;
    }
  }

  // 5. Xóa hồ sơ
  Future<bool> deleteProfile(int id, int userId) async {
    try {
      return await repository.deleteProfile(id, userId);
    } catch (e) {
      rethrow;
    }
  }
}
