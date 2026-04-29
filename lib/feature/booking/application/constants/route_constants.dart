class BookingRoutes {
  static const String prefix = 'booking';
  static const String root = '/';

  static const String bookingScreen = '${prefix}_booking_home';
  static const String bookingConfirmScreen = '${prefix}_confirm';
  static const String bookingHistoryScreen = '${prefix}_history';
  static const String feedbackScreen = '${prefix}_feedback';
}

class BookingPath {
  static const String prefix = 'booking';
  static const String root = '/';

  static const String bookingScreen = '/$prefix/booking_home';
  static const String bookingConfirmScreen = '/$prefix/confirm';
  static const String bookingHistoryScreen = '/$prefix/history';
  static const String feedbackScreen = '/$prefix/feedback';
}
