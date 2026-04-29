import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../../../domain/use_cases/treatment_usecases.dart';

part 'treatment_event.dart';
part 'treatment_state.dart';

class TreatmentBloc extends Bloc<TreatmentEvent, TreatmentState> {
  final TreatmentUsecases treatmentUsecases;

  TreatmentBloc({required this.treatmentUsecases})
    : super(const TreatmentState()) {
    on<TreatmentStarted>(_onTreatmentFetched);
    on<TreatmentRefreshRequested>(_onTreatmentFetched);
  }

  Future<void> _onTreatmentFetched(
    TreatmentEvent event,
    Emitter<TreatmentState> emit,
  ) async {
    final int userId = (event is TreatmentStarted)
        ? event.userId
        : (event as TreatmentRefreshRequested).userId;

    emit(state.copyWith(status: TreatmentStatus.loading));

    try {
      final dataPack = await treatmentUsecases.getUserMedicalRecords(userId);
      emit(
        state.copyWith(
          status: TreatmentStatus.success,
          records: dataPack.records,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: TreatmentStatus.failure,
          errorMessage: "Lỗi: ${e.toString()}",
        ),
      );
    }
  }
}
