import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';

class SpecialtyRemoteDataSource {
  final AppRepositoryImpl serverRepo;
  SpecialtyRemoteDataSource(this.serverRepo);

  Future<List<SpecialtyEntity>> getAllSpecialties() {
    return serverRepo.getAllSpecialties();
  }

  Future<SpecialtyEntity> getSpecialtyById(int id) {
    return serverRepo.getSpecialtyById(id);
  }
}
