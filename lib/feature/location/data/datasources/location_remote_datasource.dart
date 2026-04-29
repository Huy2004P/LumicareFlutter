import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class LocationRemoteDataSource {
  final AppRepositoryImpl serverRepo;

  LocationRemoteDataSource(this.serverRepo);

  Future<List<LocationEntity>> getPatientLocations(int patientId) {
    return serverRepo.getPatientLocations(patientId);
  }

  Future<LocationStatusEntity> addNewLocation(LocationEntity location) {
    return serverRepo.addNewLocation(location);
  }

  Future<bool> deleteLocation(int locationId) {
    return serverRepo.deleteLocation(locationId);
  }

  Future<bool> setDefaultLocation(int locationId) {
    return serverRepo.setDefaultLocation(locationId);
  }
}
