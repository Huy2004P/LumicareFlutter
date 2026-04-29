class ScheduleItemEntity {
  final int id;
  final String timeType;
  final String timeDisplay;
  final int maxBooking;
  final int currentBooking;
  final bool isAvailable;

  ScheduleItemEntity({
    required this.id,
    required this.timeType,
    required this.timeDisplay,
    required this.maxBooking,
    required this.currentBooking,
    required this.isAvailable,
  });
}
