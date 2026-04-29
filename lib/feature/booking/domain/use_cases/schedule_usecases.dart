import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/schedule_repository.dart';

class GetScheduleUseCase {
  final ScheduleRepository repository;

  GetScheduleUseCase(this.repository);

  Future<List<ScheduleItemEntity>> call(int doctorId, String date) async {
    try {
      final schedules = await repository.getSchedules(doctorId, date);

      schedules.sort((a, b) => a.timeType.compareTo(b.timeType));

      return schedules;
    } catch (e) {
      print("[UseCase Error] GetScheduleUseCase: $e");
      rethrow;
    }
  }
}
