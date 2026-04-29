import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class RoomRemoteDataSource {
  final AppRepositoryImpl serverRepo;
  RoomRemoteDataSource(this.serverRepo);

  Future<List<RoomEntity>> getRoomsByClinicId(int cId) {
    return serverRepo.getRoomsByClinicId(cId);
  }

  Future<List<DoctorEntity>> getDoctorsByRoomId(int rId) {
    return serverRepo.getDoctorsByRoomId(rId);
  }
}
