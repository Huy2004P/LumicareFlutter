import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';

class ServiceRemoteDataSource {
  final AppRepositoryImpl serverRepo;
  ServiceRemoteDataSource(this.serverRepo);

  Future<List<ServiceEntity>> getServices() => serverRepo.getAllServices();
  Future<ServiceEntity> getServiceById(int sId) =>
      serverRepo.getServiceById(sId);
  Future<List<dynamic>> getDoctorsByServiceId(int serviceId) =>
      serverRepo.getDoctorsByServiceId(serviceId);
}
