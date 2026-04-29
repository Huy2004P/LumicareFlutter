import 'package:image_picker/image_picker.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/booking_repository.dart';

class CreateBookingUseCase {
  final BookingRepository repository;

  CreateBookingUseCase(this.repository);

  Future<BookingResponseEntity> call(
    Map<String, dynamic> payload,
    List<XFile> photos,
  ) async {
    return await repository.createBooking(payload, photos);
  }
}

class GetBookingHistoryUseCase {
  final BookingRepository repository;

  GetBookingHistoryUseCase(this.repository);

  Future<List<BookingItemEntity>> call(int patientId) async {
    return await repository.getBookingHistory(patientId);
  }
}

class CancelBookingUseCase {
  final BookingRepository repository;

  CancelBookingUseCase(this.repository);

  Future<bool> call(int bookingId, int patientId, String reason) async {
    return await repository.cancelBooking(bookingId, patientId, reason);
  }
}

class DeleteBookingUseCase {
  final BookingRepository repository;

  DeleteBookingUseCase(this.repository);

  Future<bool> call(int bookingId) async {
    return await repository.deleteBooking(bookingId);
  }
}
