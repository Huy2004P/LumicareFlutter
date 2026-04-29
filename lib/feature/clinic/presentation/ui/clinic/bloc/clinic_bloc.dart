// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/use_cases/clinic_usecases.dart';
import 'clinic_event.dart';
import 'clinic_state.dart';

class ClinicDetailBloc extends Bloc<ClinicEvent, ClinicState> {
  final ClinicUsecases _clinicUsecases;

  ClinicDetailBloc(this._clinicUsecases) : super(ClinicDetailLoading()) {
    on<ClinicDetailStarted>(_onClinicDetailStarted);
  }

  Future<void> _onClinicDetailStarted(
    ClinicDetailStarted event,
    Emitter<ClinicState> emit,
  ) async {
    emit(ClinicDetailLoading());
    try {
      final dataPack = await _clinicUsecases.getClinicDetail(event.clinicId);

      if (dataPack.selectedClinic != null) {
        emit(ClinicDetailSuccess(dataPack.selectedClinic!));
      } else {
        emit(const ClinicDetailFailure("Không tìm thấy thông tin phòng khám."));
      }
    } catch (e) {
      emit(ClinicDetailFailure("Lỗi kết nối: ${e.toString()}"));
    }
  }
}
