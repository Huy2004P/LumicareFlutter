import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/feature/specialty/domain/use_cases/specialty_usecase.dart';
import 'doctor_event.dart';
import 'doctor_state.dart';
import '../../../../domain/use_cases/doctor_usecases.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final DoctorUsecases usecases;
  final SpecialtyUsecases specialtyUsecases;

  DoctorBloc({required this.usecases, required this.specialtyUsecases})
    : super(DoctorInitial()) {
    on<DoctorStarted>(_onDoctorStarted);
  }

  Future<void> _onDoctorStarted(
    DoctorStarted event,
    Emitter<DoctorState> emit,
  ) async {
    emit(DoctorLoading());
    try {
      final results = await Future.wait([
        usecases.getAllDoctors(
          specialtyId: event.specialtyId,
          searchQuery: event.searchQuery,
        ),
        specialtyUsecases.getAllSpecialties(),
      ]);

      final doctorPack = results[0] as DoctorDataPack;
      final specialtyPack = results[1] as SpecialtyDataPack;

      final List<SpecialtyEntity> allSpecialties = specialtyPack.specialties;

      final List<String> realSpecialties = allSpecialties
          .map((s) => s.name)
          .toList();

      List<DoctorEntity> result = List.from(doctorPack.doctors);

      if (event.clinicName != null && event.clinicName!.isNotEmpty) {
        final queryClinic = event.clinicName!.toLowerCase();
        result = result
            .where((d) => d.clinicName.toLowerCase().contains(queryClinic))
            .toList();
      }

      if (event.position != null && event.position!.isNotEmpty) {
        final queryPos = event.position!.toLowerCase();
        result = result
            .where((d) => d.position.toLowerCase().contains(queryPos))
            .toList();
      }

      if (event.activeOnly == true) {
        result = result.where((d) => d.active == true).toList();
      }

      if (event.minPrice != null) {
        result = result.where((d) => d.price >= event.minPrice!).toList();
      }
      if (event.maxPrice != null) {
        result = result.where((d) => d.price <= event.maxPrice!).toList();
      }

      if (result.isNotEmpty) {
        emit(
          DoctorSuccess(
            result,
            allSpecialties: allSpecialties,
            dynamicSuggestions: realSpecialties,
          ),
        );
      } else {
        emit(DoctorFailure("Không tìm thấy chuyên gia phù hợp với bộ lọc."));
      }
    } catch (e) {
      emit(DoctorFailure("Lỗi hệ thống: ${e.toString()}"));
    }
  }
}
