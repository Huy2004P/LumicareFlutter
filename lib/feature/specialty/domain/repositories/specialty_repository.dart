import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class SpecialtyRepository {
  Future<List<SpecialtyEntity>> getAllSpecialties();
  Future<SpecialtyEntity> getSpecialtyById(int id);
}
