import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/feature/home/domain/use_cases/home_usecases.dart';
import '../../../../../../core/network/domain/entities/entities.dart';
import '../../../../domain/use_cases/service_usecases.dart';
import 'service_event.dart';
import 'service_state.dart';

class ServiceBloc extends Bloc<ServiceEvent, ServiceState> {
  final ServiceUsecases serviceUsecases;
  final HomeUsecases homeUsecases;

  ServiceBloc({required this.serviceUsecases, required this.homeUsecases})
    : super(ServiceLoading()) {
    on<ServiceDataFetched>(_onServiceDataFetched);
    on<ServiceSearchChanged>(_onServiceSearchChanged);
  }

  Future<void> _onServiceDataFetched(
    ServiceDataFetched event,
    Emitter<ServiceState> emit,
  ) async {
    emit(ServiceLoading());
    try {
      final results = await Future.wait([
        serviceUsecases.call(),
        homeUsecases.call(),
      ]);

      final List<ServiceEntity> services = (results[0] as dynamic).services;
      final List<dynamic> specialties = (results[1] as dynamic).specialties;

      emit(
        ServiceLoaded(
          allServices: services,
          filteredServices: services,
          allSpecialties: specialties,
          searchQuery: "",
        ),
      );
    } catch (e) {
      emit(ServiceError("Lỗi tải dữ liệu: ${e.toString()}"));
    }
  }

  void _onServiceSearchChanged(
    ServiceSearchChanged event,
    Emitter<ServiceState> emit,
  ) {
    final currentState = state;
    if (currentState is ServiceLoaded) {
      final query = event.query;
      List<ServiceEntity> filtered;

      if (query.isEmpty || query == "Tất cả") {
        filtered = currentState.allServices;
      } else {
        // 1. Tìm Specialty khớp tên
        final spec = currentState.allSpecialties.cast<dynamic>().firstWhere(
          (s) => s?.name == query,
          orElse: () => null,
        );

        // 2. 🚀 LỌC CHUẨN: Ưu tiên ID, nếu ID=0 thì lọc theo Tên BẮT BUỘC chứa từ khóa
        filtered = currentState.allServices.where((s) {
          final serviceName = s.name.toLowerCase();
          final categoryName = query
              .toLowerCase()
              .replaceAll("khoa ", "")
              .trim();

          // Nếu có ID chuyên khoa khớp -> lấy luôn
          if (spec != null && s.specialtyId == spec.id) return true;

          // Nếu ID không khớp (do data=0), BẮT BUỘC tên phải chứa từ khóa
          return serviceName.contains(categoryName);
        }).toList();
      }

      emit(
        currentState.copyWith(filteredServices: filtered, searchQuery: query),
      );
    }
  }
}
