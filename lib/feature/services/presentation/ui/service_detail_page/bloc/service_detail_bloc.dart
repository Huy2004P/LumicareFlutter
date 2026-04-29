import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/use_cases/service_usecases.dart';
import 'service_detail_event.dart';
import 'service_detail_state.dart';

class ServiceDetailBloc extends Bloc<ServiceDetailEvent, ServiceDetailState> {
  final ServiceUsecases serviceUsecases;

  ServiceDetailBloc({required this.serviceUsecases})
    : super(ServiceDetailInitial()) {
    on<LoadServiceDetailEvent>(_onLoadServiceDetail);
  }

  Future<void> _onLoadServiceDetail(
    LoadServiceDetailEvent event,
    Emitter<ServiceDetailState> emit,
  ) async {
    emit(ServiceDetailLoading());
    try {
      final detail = await serviceUsecases.getServiceDetail(event.serviceId);
      emit(ServiceDetailLoaded(detail));
    } catch (e) {
      emit(ServiceDetailError(e.toString()));
    }
  }
}
