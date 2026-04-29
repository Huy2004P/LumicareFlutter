part of 'room_bloc.dart';

abstract class RoomEvent {}

class GetRoomsByClinicEvent extends RoomEvent {
  final int clinicId;
  GetRoomsByClinicEvent(this.clinicId);
}

class GetDoctorsByRoomEvent extends RoomEvent {
  final int roomId;
  GetDoctorsByRoomEvent(this.roomId);
}
