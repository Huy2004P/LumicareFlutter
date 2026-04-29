import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/feature/patient/domain/use_cases/patient_usecases.dart'
    show PatientUsecases;
import 'PatientUpdateEvent.dart';
import 'PatientUpdateState.dart';

class PatientUpdateBloc extends Bloc<PatientUpdateEvent, PatientUpdateState> {
  final PatientUsecases usecases;

  PatientUpdateBloc(this.usecases) : super(const PatientUpdateState()) {
    on<PatientUpdateSubmitted>((event, emit) async {
      emit(state.copyWith(status: PatientUpdateStatus.loading));
      try {
        await usecases.updateProfile(event.profile);
        emit(state.copyWith(status: PatientUpdateStatus.success));
      } catch (e) {
        emit(
          state.copyWith(
            status: PatientUpdateStatus.error,
            errorMessage: e.toString(),
          ),
        );
      }
    });
  }
}
