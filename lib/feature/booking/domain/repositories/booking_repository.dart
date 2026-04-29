import 'package:image_picker/image_picker.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class BookingRepository {
  Future<BookingResponseEntity> createBooking(
    Map<String, dynamic> payload,
    List<XFile> photos,
  );
  Future<List<BookingItemEntity>> getBookingHistory(int patientId);
  Future<bool> cancelBooking(int bookingId, int patientId, String reason);
  Future<bool> deleteBooking(int bookingId);
}
