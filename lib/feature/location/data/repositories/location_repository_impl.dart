import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/location_repository.dart';
import '../datasources/location_remote_datasource.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationRemoteDataSource dataSource;

  LocationRepositoryImpl(this.dataSource);

  @override
  Future<List<LocationEntity>> getPatientLocations(int patientId) {
    return dataSource.getPatientLocations(patientId);
  }

  @override
  Future<LocationStatusEntity> addNewLocation(LocationEntity location) {
    return dataSource.addNewLocation(location);
  }

  @override
  Future<bool> deleteLocation(int locationId) {
    return dataSource.deleteLocation(locationId);
  }

  @override
  Future<bool> setDefaultLocation(int locationId) {
    return dataSource.setDefaultLocation(locationId);
  }
}
