import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/room_repository.dart';
import '../datasources/room_remote_datasource.dart';

class RoomRepositoryImpl implements RoomRepository {
  final RoomRemoteDataSource dataSource;

  RoomRepositoryImpl(this.dataSource);

  @override
  Future<List<RoomEntity>> getRoomsByClinicId(int id) async {
    try {
      final result = await dataSource.getRoomsByClinicId(id);
      return result;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<DoctorEntity>> getDoctorsByRoomId(int roomId) async {
    try {
      return await dataSource.getDoctorsByRoomId(roomId);
    } catch (e) {
      rethrow;
    }
  }
}
