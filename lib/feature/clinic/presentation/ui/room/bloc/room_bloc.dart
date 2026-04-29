import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../../../domain/use_cases/room_usecases.dart';

part 'room_event.dart';
part 'room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final RoomUsecases roomUsecases;

  RoomBloc(this.roomUsecases) : super(RoomInitial()) {
    on<GetRoomsByClinicEvent>(_onGetRoomsByClinic);

    on<GetDoctorsByRoomEvent>(_onGetDoctorsByRoom);
  }

  Future<void> _onGetRoomsByClinic(
    GetRoomsByClinicEvent event,
    Emitter<RoomState> emit,
  ) async {
    emit(RoomLoading());
    try {
      final dataPack = await roomUsecases.getRoomsByClinic(event.clinicId);
      emit(RoomLoadSuccess(dataPack.rooms));
    } catch (e) {
      emit(RoomLoadFailure(e.toString()));
    }
  }

  Future<void> _onGetDoctorsByRoom(
    GetDoctorsByRoomEvent event,
    Emitter<RoomState> emit,
  ) async {
    emit(DoctorByRoomLoading());
    try {
      final doctors = await roomUsecases.getDoctorsByRoom(event.roomId);
      emit(DoctorByRoomSuccess(doctors));
    } catch (e) {
      emit(DoctorByRoomFailure(e.toString()));
    }
  }
}
