import 'package:image_picker/image_picker.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/booking_repository.dart';
import '../datasources/booking_remote_datasource.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteDataSource dataSource;

  BookingRepositoryImpl(this.dataSource);

  @override
  Future<BookingResponseEntity> createBooking(
    Map<String, dynamic> payload,
    List<XFile> photos,
  ) async {
    try {
      final result = await dataSource.createBooking(payload, photos);
      return result;
    } catch (e) {
      print("[RepoImpl Error] createBooking: $e");
      rethrow;
    }
  }

  @override
  Future<List<BookingItemEntity>> getBookingHistory(int patientId) async {
    try {
      final results = await dataSource.getBookingHistory(patientId);
      return results;
    } catch (e) {
      print("[RepoImpl Error] getBookingHistory: $e");
      rethrow;
    }
  }

  @override
  Future<bool> cancelBooking(
    int bookingId,
    int patientId,
    String reason,
  ) async {
    try {
      final success = await dataSource.cancelBooking(
        bookingId,
        patientId,
        reason,
      );
      return success;
    } catch (e) {
      print("[RepoImpl Error] cancelBooking: $e");
      rethrow;
    }
  }

  @override
  Future<bool> deleteBooking(int bookingId) async {
    try {
      final success = await dataSource.deleteBooking(bookingId);
      return success;
    } catch (e) {
      print("[RepoImpl Error] deleteBooking: $e");
      rethrow;
    }
  }
}
