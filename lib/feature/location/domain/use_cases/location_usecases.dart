import 'package:flutter/material.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/location_repository.dart';

class LocationDataPack {
  final List<LocationEntity> locations;
  final LocationStatusEntity? status;

  LocationDataPack({required this.locations, this.status});

  factory LocationDataPack.empty() => LocationDataPack(locations: []);
}

class LocationUsecases {
  final LocationRepository repository;

  LocationUsecases(this.repository);

  // 1. Lấy danh sách địa chỉ của bệnh nhân
  // 🎯 Đổi patientId -> userId cho khớp Proto
  Future<LocationDataPack> getPatientLocations(int userId) async {
    try {
      final locations = await repository.getPatientLocations(userId);
      return LocationDataPack(locations: locations);
    } catch (e) {
      debugPrint("Lỗi tại LocationUsecases.getPatientLocations: $e");
      rethrow;
    }
  }

  // 2. Thêm địa chỉ mới (Sau khi ghim Map)
  Future<LocationDataPack> addNewLocation(LocationEntity location) async {
    try {
      final status = await repository.addNewLocation(location);
      // Trả về status kèm theo để BLoC biết locationId mới tạo
      return LocationDataPack(locations: [], status: status);
    } catch (e) {
      debugPrint("Lỗi tại LocationUsecases.addNewLocation: $e");
      rethrow;
    }
  }

  // 3. Xóa địa chỉ
  Future<bool> deleteLocation(int locationId) async {
    try {
      return await repository.deleteLocation(locationId);
    } catch (e) {
      debugPrint("Lỗi tại LocationUsecases.deleteLocation: $e");
      rethrow;
    }
  }

  Future<bool> setDefaultLocation(int locationId, int userId) async {
    try {
      return await repository.setDefaultLocation(locationId);
    } catch (e) {
      debugPrint("Lỗi tại LocationUsecases.setDefaultLocation: $e");
      rethrow;
    }
  }
}
