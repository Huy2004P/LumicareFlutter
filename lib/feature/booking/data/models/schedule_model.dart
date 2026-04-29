import 'package:lumi_care/core/network/data/models/generated/schedule.pb.dart';
import '../../domain/entities/schedule_entity.dart';

class ScheduleModel extends ScheduleItemEntity {
  final bool? success;
  final String? message;
  final List<String>? conflictTimes;

  ScheduleModel({
    required super.id,
    required super.timeType,
    required super.timeDisplay,
    required super.maxBooking,
    required super.currentBooking,
    required super.isAvailable,
    this.success,
    this.message,
    this.conflictTimes,
  });

  factory ScheduleModel.fromProtoItem(ScheduleItem item) {
    return ScheduleModel(
      id: item.id,
      timeType: item.timeType,
      timeDisplay: item.timeDisplay,
      maxBooking: item.maxBooking,
      currentBooking: item.currentBooking,
      isAvailable: item.isAvailable,
    );
  }

  factory ScheduleModel.fromStatusProto(ScheduleResponse res) {
    return ScheduleModel(
      id: 0,
      timeType: '',
      timeDisplay: '',
      maxBooking: 0,
      currentBooking: 0,
      isAvailable: false,
      success: res.success,
      message: res.message,
      conflictTimes: res.conflictTimes,
    );
  }
}
