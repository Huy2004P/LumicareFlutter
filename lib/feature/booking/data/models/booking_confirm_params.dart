import 'package:image_picker/image_picker.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class BookingConfirmParams {
  final Map<String, dynamic> rawPayload; // Cục JSON toàn ID để gửi Backend
  final DoctorEntity doctor;
  final PatientProfileEntity patient;
  final LocationEntity location;
  final String serviceName;
  final List<XFile> photos;
  final double totalPrice;
  final String dateDisplay;
  final String timeDisplay;

  BookingConfirmParams({
    required this.rawPayload,
    required this.doctor,
    required this.patient,
    required this.location,
    required this.serviceName,
    required this.photos,
    required this.totalPrice,
    required this.dateDisplay,
    required this.timeDisplay,
  });
}
