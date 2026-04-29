import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class ClinicRepository {
  Future<ClinicEntity> getClinicById(int id);
}
