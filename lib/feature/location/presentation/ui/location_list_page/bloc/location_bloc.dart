import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/use_cases/location_usecases.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationUsecases usecases;

  LocationBloc(this.usecases) : super(LocationListInitial()) {
    on<LocationListStarted>((event, emit) async {
      emit(LocationListLoading());
      try {
        final dataPack = await usecases.getPatientLocations(event.userId);
        emit(LocationListSuccess(dataPack));
      } catch (e) {
        emit(LocationListFailure("Lỗi tải danh sách: $e"));
      }
    });

    on<LocationListDeleted>((event, emit) async {
      try {
        final success = await usecases.deleteLocation(event.locationId);
        if (success) {
          add(LocationListStarted(event.userId));
        }
      } catch (e) {
        emit(LocationListFailure("Không thể xóa địa chỉ: $e"));
      }
    });

    on<LocationListSetDefault>((event, emit) async {
      try {
        final success = await usecases.setDefaultLocation(
          event.locationId,
          event.userId,
        );
        if (success) {
          add(LocationListStarted(event.userId));
        }
      } catch (e) {
        emit(LocationListFailure("Lỗi khi đặt mặc định: $e"));
      }
    });
  }
}
