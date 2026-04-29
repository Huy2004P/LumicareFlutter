import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class ClinicRemoteDataSource {
  final AppRepositoryImpl serverRepo;
  ClinicRemoteDataSource(this.serverRepo);

  Future<ClinicEntity> getClinicById(int cId) {
    return serverRepo.getClinicById(cId);
  }
}
