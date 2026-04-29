import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class ServiceRepository {
  Future<List<ServiceEntity>> getServices();
  Future<ServiceEntity> getServiceById(int id);
  Future<List<dynamic>> getDoctorsByServiceId(int serviceId);
}
