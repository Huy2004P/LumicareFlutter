import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/service_repository.dart';
import '../datasources/service_remote_datasource.dart';

class ServiceRepositoryImpl implements ServiceRepository {
  final ServiceRemoteDataSource dataSource;

  ServiceRepositoryImpl(this.dataSource);

  @override
  Future<List<ServiceEntity>> getServices() async {
    try {
      final List<ServiceEntity> remoteServices = await dataSource.getServices();

      return remoteServices;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ServiceEntity> getServiceById(int id) async {
    try {
      return await dataSource.getServiceById(id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<dynamic>> getDoctorsByServiceId(int id) async {
    try {
      return await dataSource.getDoctorsByServiceId(id);
    } catch (e) {
      rethrow;
    }
  }
}
