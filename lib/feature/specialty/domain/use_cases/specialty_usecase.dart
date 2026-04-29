import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/specialty_repository.dart';

class SpecialtyDataPack {
  final List<SpecialtyEntity> specialties;
  final SpecialtyEntity? selectedSpecialty;

  SpecialtyDataPack({required this.specialties, this.selectedSpecialty});

  factory SpecialtyDataPack.empty() => SpecialtyDataPack(specialties: []);
}

class SpecialtyUsecases {
  final SpecialtyRepository repository;

  SpecialtyUsecases(this.repository);

  Future<SpecialtyDataPack> getAllSpecialties() async {
    try {
      final list = await repository.getAllSpecialties();
      return SpecialtyDataPack(specialties: list);
    } catch (e) {
      rethrow;
    }
  }

  Future<SpecialtyEntity> getSpecialtyById(int id) async {
    try {
      return await repository.getSpecialtyById(id);
    } catch (e) {
      rethrow;
    }
  }
}
