import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class ScheduleRemoteDataSource {
  final AppRepositoryImpl serverRepo;

  ScheduleRemoteDataSource(this.serverRepo);

  Future<List<ScheduleItemEntity>> getSchedules(int doctorId, String date) {
    return serverRepo.getSchedulesById(doctorId, date);
  }
}
