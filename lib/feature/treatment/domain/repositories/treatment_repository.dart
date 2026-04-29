import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class TreatmentRepository {
  Future<List<MedicalRecordSummaryEntity>> getUserMedicalRecords(int userId);
  Future<TreatmentDataEntity> getTreatmentByBooking(int bookingId);
}
