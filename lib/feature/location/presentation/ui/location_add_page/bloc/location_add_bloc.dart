import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../../../domain/use_cases/location_usecases.dart';

part 'location_add_event.dart';
part 'location_add_state.dart';

class LocationAddBloc extends Bloc<LocationAddEvent, LocationAddState> {
  final LocationUsecases usecases;

  LocationAddBloc(this.usecases) : super(LocationAddInitial()) {
    // 🎯 LOGIC 1: CẬP NHẬT TỌA ĐỘ KHI DI CHUYỂN MAP
    on<LocationAddCameraMoved>((event, emit) {
      emit(
        LocationAddCameraSuccess(
          lat: event.lat,
          lng: event.lng,
          addressName: event.addressName,
        ),
      );
    });

    // 🎯 LOGIC 2: GỬI DỮ LIỆU LÊN SERVER
    on<LocationAddSubmitted>((event, emit) async {
      emit(LocationAddLoading());
      try {
        final dataPack = await usecases.addNewLocation(event.location);

        if (dataPack.status != null && dataPack.status!.success) {
          emit(LocationAddSuccess(dataPack.status!));
        } else {
          emit(
            LocationAddFailure(
              dataPack.status?.message ?? "Lưu địa chỉ thất bại",
            ),
          );
        }
      } catch (e) {
        emit(LocationAddFailure("Lỗi kết nối server: $e"));
      }
    });
  }
}
