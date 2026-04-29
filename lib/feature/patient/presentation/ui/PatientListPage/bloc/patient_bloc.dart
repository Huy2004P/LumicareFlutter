import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../domain/use_cases/patient_usecases.dart';
import 'patient_event.dart';
import 'patient_state.dart';

class PatientBloc extends Bloc<PatientEvent, PatientState> {
  final PatientUsecases patientUsecases;

  PatientBloc(this.patientUsecases) : super(const PatientState()) {
    on<LoadPatientProfilesEvent>(_onLoadPatientProfiles);
    on<DeletePatientProfileEvent>(_onDeletePatientProfile);
  }

  Future<void> _onLoadPatientProfiles(
    LoadPatientProfilesEvent event,
    Emitter<PatientState> emit,
  ) async {
    emit(
      state.copyWith(
        status: event.isRetried
            ? PatientStatus.refreshing
            : PatientStatus.loading,
      ),
    );

    try {
      final dataPack = await patientUsecases.getAllProfiles(event.userId);
      emit(
        state.copyWith(
          status: PatientStatus.loaded,
          profiles: dataPack.profiles,
        ),
      );
    } catch (e) {
      final errorStr = e.toString().toLowerCase();

      if ((errorStr.contains("16") || errorStr.contains("unauthenticated")) &&
          !event.isRetried) {
        debugPrint("🔄 [PatientBloc] Thử lại tải danh sách...");
        add(LoadPatientProfilesEvent(event.userId, isRetried: true));
      } else {
        emit(
          state.copyWith(
            status: PatientStatus.error,
            errorMessage: "Không thể tải danh sách hồ sơ. Vui lòng thử lại!",
          ),
        );
      }
    }
  }

  Future<void> _onDeletePatientProfile(
    DeletePatientProfileEvent event,
    Emitter<PatientState> emit,
  ) async {
    try {
      final success = await patientUsecases.deleteProfile(
        event.profileId,
        event.userId,
      );
      if (success) {
        emit(state.copyWith(status: PatientStatus.deleteSuccess));
        add(LoadPatientProfilesEvent(event.userId));
      } else {
        emit(
          state.copyWith(
            status: PatientStatus.error,
            errorMessage: "Xóa thất bại",
          ),
        );
      }
    } catch (e) {
      final errorStr = e.toString().toLowerCase();

      if ((errorStr.contains("16") || errorStr.contains("unauthenticated")) &&
          !event.isRetried) {
        // 🎯 FIX TẠI ĐÂY: Truyền thẳng tham số, bỏ 'profileId:' và 'userId:'
        add(
          DeletePatientProfileEvent(
            event.profileId,
            event.userId,
            isRetried: true,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: PatientStatus.error,
            errorMessage: "Lỗi khi xóa: $e",
          ),
        );
      }
    }
  }
}
