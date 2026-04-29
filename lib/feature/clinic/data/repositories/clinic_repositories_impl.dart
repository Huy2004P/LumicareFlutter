import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/clinic_repository.dart';
import '../datasources/clinic_remote_datasource.dart';

class ClinicRepositoryImpl implements ClinicRepository {
  final ClinicRemoteDataSource dataSource;

  ClinicRepositoryImpl(this.dataSource);

  @override
  Future<ClinicEntity> getClinicById(int id) async {
    try {
      return await dataSource.getClinicById(id);
    } catch (e) {
      rethrow;
    }
  }
}
