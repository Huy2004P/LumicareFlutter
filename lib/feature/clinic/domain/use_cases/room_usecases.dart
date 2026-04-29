import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/room_repository.dart';

class RoomDataPack {
  final List<RoomEntity> rooms;
  final RoomEntity? selectedRoom;

  RoomDataPack({required this.rooms, this.selectedRoom});

  factory RoomDataPack.empty() => RoomDataPack(rooms: []);
}

class RoomUsecases {
  final RoomRepository repository;

  RoomUsecases(this.repository);

  Future<RoomDataPack> getRoomsByClinic(int clinicId) async {
    try {
      final rooms = await repository.getRoomsByClinicId(clinicId);
      return RoomDataPack(rooms: rooms, selectedRoom: null);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<DoctorEntity>> getDoctorsByRoom(int roomId) async {
    try {
      return await repository.getDoctorsByRoomId(roomId);
    } catch (e) {
      rethrow;
    }
  }
}
