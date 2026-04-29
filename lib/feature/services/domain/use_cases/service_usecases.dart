import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/service_repository.dart';

class ServiceDataPack {
  final List<ServiceEntity> services;
  final List<dynamic> vouchers;

  ServiceDataPack({required this.services, this.vouchers = const []});

  factory ServiceDataPack.empty() => ServiceDataPack(services: []);
}

class ServiceDetailDataPack {
  final ServiceEntity service;
  final List<dynamic> doctors;

  ServiceDetailDataPack({required this.service, this.doctors = const []});
}

class ServiceUsecases {
  final ServiceRepository repository;

  ServiceUsecases(this.repository);

  // 🚀 Chỗ này Huy lưu ý: gọi repository.getServices()
  Future<ServiceDataPack> call() async {
    try {
      // Đảm bảo kết quả trả về từ repository là List<ServiceEntity>
      final results = await repository.getServices();

      return ServiceDataPack(services: results, vouchers: []);
    } catch (e) {
      rethrow;
    }
  }

  Future<ServiceDetailDataPack> getServiceDetail(int serviceId) async {
    try {
      final results = await Future.wait([
        repository.getServiceById(serviceId),
        repository.getDoctorsByServiceId(serviceId),
      ]);

      final service = results[0] as ServiceEntity;
      final rawDoctors = results[1] as List;

      final List<DoctorEntity> doctorEntities = rawDoctors.map((d) {
        return DoctorEntity(
          id: d.id,
          fullName: d.fullName, // Check xem có bị rỗng không
          specialtyId: d.specialtyId,
          specialtyName: d.specialtyName,
          price: d.price.toDouble(),
          avatar: d.avatar,
          phone: d.phone,
          position: d.position,
          description: d.description,
          email: "",
          roomName: "Phòng khám",
          clinicName: "Hệ thống y tế",
          active: true,
          rating: d.rating ?? 0.0,
        );
      }).toList();

      return ServiceDetailDataPack(service: service, doctors: doctorEntities);
    } catch (e) {
      rethrow;
    }
  }
}
