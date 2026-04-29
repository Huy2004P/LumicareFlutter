import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../../../domain/use_cases/treatment_usecases.dart';

part 'treatment_detail_event.dart';
part 'treatment_detail_state.dart';

class TreatmentDetailBloc
    extends Bloc<TreatmentDetailEvent, TreatmentDetailState> {
  final TreatmentUsecases treatmentUsecases;

  TreatmentDetailBloc({required this.treatmentUsecases})
    : super(const TreatmentDetailState()) {
    on<TreatmentDetailFetched>(_onTreatmentDetailFetched);
  }

  Future<void> _onTreatmentDetailFetched(
    TreatmentDetailFetched event,
    Emitter<TreatmentDetailState> emit,
  ) async {
    emit(state.copyWith(status: TreatmentDetailStatus.loading));

    try {
      final dataPack = await treatmentUsecases.getTreatmentDetail(
        event.bookingId,
      );

      if (dataPack.selectedTreatment != null) {
        emit(
          state.copyWith(
            status: TreatmentDetailStatus.success,
            treatmentData: dataPack.selectedTreatment,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: TreatmentDetailStatus.failure,
            errorMessage:
                "Không tìm thấy dữ liệu đơn thuốc cho mã đặt lịch này.",
          ),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(
          status: TreatmentDetailStatus.failure,
          errorMessage: "Lỗi tải chi tiết đơn thuốc: ${e.toString()}",
        ),
      );
    }
  }
}
