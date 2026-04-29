import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/treatment_repository.dart';
import '../datasources/treatment_remote_datasource.dart';

class TreatmentRepositoryImpl implements TreatmentRepository {
  final TreatmentRemoteDataSource dataSource;

  TreatmentRepositoryImpl(this.dataSource);

  @override
  Future<TreatmentDataEntity> getTreatmentByBooking(int bookingId) {
    return dataSource.getTreatmentByBooking(bookingId);
  }

  @override
  Future<List<MedicalRecordSummaryEntity>> getUserMedicalRecords(int userId) {
    return dataSource.getUserMedicalRecords(userId);
  }
}
