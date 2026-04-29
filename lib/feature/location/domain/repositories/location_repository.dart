import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class LocationRepository {
  Future<List<LocationEntity>> getPatientLocations(int patientId);
  Future<LocationStatusEntity> addNewLocation(LocationEntity location);
  Future<bool> deleteLocation(int locationId);
  Future<bool> setDefaultLocation(int locationId);
}
