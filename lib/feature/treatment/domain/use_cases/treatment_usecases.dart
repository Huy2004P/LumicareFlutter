import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/treatment_repository.dart';

class TreatmentDataPack {
  final List<MedicalRecordSummaryEntity> records;
  final TreatmentDataEntity? selectedTreatment;

  TreatmentDataPack({required this.records, this.selectedTreatment});

  factory TreatmentDataPack.empty() => TreatmentDataPack(records: []);
}

class TreatmentUsecases {
  final TreatmentRepository repository;

  TreatmentUsecases(this.repository);

  Future<TreatmentDataPack> getUserMedicalRecords(int userId) async {
    try {
      final records = await repository.getUserMedicalRecords(userId);
      return TreatmentDataPack(records: records);
    } catch (e) {
      rethrow;
    }
  }

  Future<TreatmentDataPack> getTreatmentDetail(int bookingId) async {
    try {
      final treatment = await repository.getTreatmentByBooking(bookingId);
      return TreatmentDataPack(records: [], selectedTreatment: treatment);
    } catch (e) {
      rethrow;
    }
  }
}
