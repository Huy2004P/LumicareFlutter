import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class ScheduleRepository {
  Future<List<ScheduleItemEntity>> getSchedules(int doctorId, String date);
}
