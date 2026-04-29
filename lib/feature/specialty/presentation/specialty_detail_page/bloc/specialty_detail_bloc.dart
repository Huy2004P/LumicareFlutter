import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../../domain/use_cases/specialty_usecase.dart';

part 'specialty_detail_event.dart';
part 'specialty_detail_state.dart';

class SpecialtyDetailBloc
    extends Bloc<SpecialtyDetailEvent, SpecialtyDetailState> {
  // Huy có thể inject trực tiếp Repository hoặc UseCase vào đây
  final SpecialtyUsecases specialtyUsecases;

  SpecialtyDetailBloc({required this.specialtyUsecases})
    : super(const SpecialtyDetailState()) {
    on<SpecialtyDetailStarted>(_onSpecialtyDetailStarted);
  }

  Future<void> _onSpecialtyDetailStarted(
    SpecialtyDetailStarted event,
    Emitter<SpecialtyDetailState> emit,
  ) async {
    emit(state.copyWith(status: SpecialtyDetailStatus.loading));

    try {
      final specialty = await specialtyUsecases.getSpecialtyById(
        event.specialtyId,
      );

      emit(
        state.copyWith(
          status: SpecialtyDetailStatus.success,
          specialty: specialty,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: SpecialtyDetailStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
