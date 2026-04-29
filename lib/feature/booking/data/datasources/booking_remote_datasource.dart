import 'package:image_picker/image_picker.dart';
import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class BookingRemoteDataSource {
  final AppRepositoryImpl serverRepo;

  BookingRemoteDataSource(this.serverRepo);

  Future<BookingResponseEntity> createBooking(
    Map<String, dynamic> payload,
    List<XFile> imageFiles,
  ) {
    return serverRepo.createBooking(payload, imageFiles);
  }

  Future<List<BookingItemEntity>> getBookingHistory(int patientId) {
    return serverRepo.getBookingHistory(patientId);
  }

  Future<bool> cancelBooking(int bookingId, int patientId, String reason) {
    return serverRepo.cancelBooking(bookingId, patientId, reason);
  }

  Future<bool> deleteBooking(int bookingId) {
    return serverRepo.deleteBooking(bookingId);
  }
}
