import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/schedule_repository.dart';
import '../datasources/schedule_remote_datasource.dart';

class ScheduleRepositoryImpl implements ScheduleRepository {
  final ScheduleRemoteDataSource dataSource;

  ScheduleRepositoryImpl(this.dataSource);

  @override
  Future<List<ScheduleItemEntity>> getSchedules(
    int doctorId,
    String date,
  ) async {
    try {
      final results = await dataSource.getSchedules(doctorId, date);

      return results;
    } catch (e) {
      rethrow;
    }
  }
}
