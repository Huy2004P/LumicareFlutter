import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class ServiceState {}

class ServiceLoading extends ServiceState {}

class ServiceLoaded extends ServiceState {
  final List<ServiceEntity> allServices;
  final List<ServiceEntity> filteredServices;
  final List<dynamic> allSpecialties;
  final String searchQuery;
  final int? selectedSpecialtyId;

  ServiceLoaded({
    required this.allServices,
    required this.filteredServices,
    required this.allSpecialties,
    this.searchQuery = "",
    this.selectedSpecialtyId,
  });

  ServiceLoaded copyWith({
    List<ServiceEntity>? allServices,
    List<ServiceEntity>? filteredServices,
    List<dynamic>? allSpecialties,
    String? searchQuery,
    int? selectedSpecialtyId,
  }) {
    return ServiceLoaded(
      allServices: allServices ?? this.allServices,
      filteredServices: filteredServices ?? this.filteredServices,
      allSpecialties: allSpecialties ?? this.allSpecialties,
      searchQuery: searchQuery ?? this.searchQuery,
      selectedSpecialtyId: selectedSpecialtyId ?? this.selectedSpecialtyId,
    );
  }
}

class ServiceError extends ServiceState {
  final String message;
  ServiceError(this.message);
}
