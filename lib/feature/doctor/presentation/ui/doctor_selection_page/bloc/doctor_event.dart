abstract class DoctorEvent {}

class DoctorStarted extends DoctorEvent {
  final String? searchQuery;
  final int? specialtyId;
  final String? clinicName;
  final String? position;
  final bool? activeOnly;
  final double? minPrice;
  final double? maxPrice;

  DoctorStarted({
    this.searchQuery,
    this.specialtyId,
    this.clinicName,
    this.position,
    this.activeOnly,
    this.minPrice,
    this.maxPrice,
  });
}
