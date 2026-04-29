part of 'room_bloc.dart';

abstract class RoomState {}

class RoomInitial extends RoomState {}

class RoomLoading extends RoomState {}

class RoomLoadSuccess extends RoomState {
  final List<RoomEntity> rooms;
  RoomLoadSuccess(this.rooms);
}

class RoomLoadFailure extends RoomState {
  final String message;
  RoomLoadFailure(this.message);
}

class DoctorByRoomLoading extends RoomState {}

class DoctorByRoomSuccess extends RoomState {
  final List<DoctorEntity> doctors; // Đảm bảo đã import DoctorEntity
  DoctorByRoomSuccess(this.doctors);
}

class DoctorByRoomFailure extends RoomState {
  final String message;
  DoctorByRoomFailure(this.message);
}
