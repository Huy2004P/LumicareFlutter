import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/clinic_repository.dart';

class ClinicDataPack {
  final List<ClinicEntity> clinics;
  final ClinicEntity? selectedClinic;

  ClinicDataPack({required this.clinics, this.selectedClinic});

  factory ClinicDataPack.empty() => ClinicDataPack(clinics: []);
}

class ClinicUsecases {
  final ClinicRepository repository;

  ClinicUsecases(this.repository);

  Future<ClinicDataPack> getClinicDetail(int cId) async {
    try {
      final clinic = await repository.getClinicById(cId);
      return ClinicDataPack(clinics: [], selectedClinic: clinic);
    } catch (e) {
      rethrow;
    }
  }
}
