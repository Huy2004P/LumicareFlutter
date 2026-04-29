import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/specialty_repository.dart';
import '../datasources/specialty_remote_datasource.dart';

class SpecialtyRepositoryImpl implements SpecialtyRepository {
  final SpecialtyRemoteDataSource dataSource;

  SpecialtyRepositoryImpl(this.dataSource);

  @override
  Future<List<SpecialtyEntity>> getAllSpecialties() async {
    try {
      return await dataSource.getAllSpecialties();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SpecialtyEntity> getSpecialtyById(int id) async {
    try {
      return await dataSource.getSpecialtyById(id);
    } catch (e) {
      rethrow;
    }
  }
}
