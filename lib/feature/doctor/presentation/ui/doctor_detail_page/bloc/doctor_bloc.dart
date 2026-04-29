import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/usecases.dart';
import 'doctor_event.dart';
import 'doctor_state.dart';

class DoctorDetailBloc extends Bloc<DoctorDetailEvent, DoctorDetailState> {
  final DoctorUsecases usecases;

  DoctorDetailBloc(this.usecases) : super(DoctorDetailInitial()) {
    on<DoctorDetailStarted>(_onDoctorDetailStarted);
  }

  Future<void> _onDoctorDetailStarted(
    DoctorDetailStarted event,
    Emitter<DoctorDetailState> emit,
  ) async {
    emit(DoctorDetailLoading());
    try {
      // 🚀 Gọi Usecase lấy dữ liệu thật
      final pack = await usecases.getDoctorDetail(event.doctorId);

      if (pack.selectedDoctor != null) {
        emit(DoctorDetailSuccess(pack.selectedDoctor!));
      } else {
        emit(DoctorDetailFailure("Không tìm thấy thông tin bác sĩ"));
      }
    } catch (e) {
      emit(DoctorDetailFailure("Lỗi kết nối: ${e.toString()}"));
    }
  }
}
