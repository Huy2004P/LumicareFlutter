import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';

class TreatmentRemoteDataSource {
  final AppRepositoryImpl serverRepo;

  TreatmentRemoteDataSource(this.serverRepo);
  Future<TreatmentDataEntity> getTreatmentByBooking(int bookingId) {
    return serverRepo.getTreatmentByBooking(bookingId);
  }

  Future<List<MedicalRecordSummaryEntity>> getUserMedicalRecords(int userId) {
    return serverRepo.getUserMedicalRecords(userId);
  }
}
