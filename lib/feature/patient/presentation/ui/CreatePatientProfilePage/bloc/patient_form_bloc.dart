import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/feature/patient/domain/use_cases/patient_usecases.dart';

import 'patient_form_event.dart';
import 'patient_form_state.dart';

class PatientFormBloc extends Bloc<PatientFormEvent, PatientFormState> {
  final PatientUsecases usecases;

  PatientFormBloc(this.usecases) : super(const PatientFormState()) {
    on<CreatePatientSubmitted>(_onCreatePatientSubmitted);
  }

  Future<void> _onCreatePatientSubmitted(
    CreatePatientSubmitted event,
    Emitter<PatientFormState> emit,
  ) async {
    emit(state.copyWith(status: PatientFormStatus.loading));

    try {
      await usecases.createProfile(event.profile);

      emit(state.copyWith(status: PatientFormStatus.success));
    } catch (e) {
      debugPrint("❌ [PatientFormBloc] Lỗi: $e");
      emit(
        state.copyWith(
          status: PatientFormStatus.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
