import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class RoomRepository {
  Future<List<RoomEntity>> getRoomsByClinicId(int id);
  Future<List<DoctorEntity>> getDoctorsByRoomId(int roomId);
}
