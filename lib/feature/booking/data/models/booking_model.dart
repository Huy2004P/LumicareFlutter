import 'package:lumi_care/core/network/data/models/generated/booking.pb.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

class BookingResponseModel extends BookingResponseEntity {
  BookingResponseModel({
    required super.success,
    required super.message,
    required super.bookingId,
  });

  factory BookingResponseModel.fromProto(BookingResponse proto) {
    return BookingResponseModel(
      success: proto.success,
      message: proto.message,
      bookingId: proto.bookingId,
    );
  }
}

class BookingItemModel extends BookingItemEntity {
  BookingItemModel({
    required super.id,
    required super.doctorName,
    required super.date,
    required super.timeDisplay,
    required super.status,
    required super.reason,
    required super.patientName,
    required super.serviceName,
    required super.price,
    required super.address,
    required super.cancelReason,
    required super.paymentMethod,
    required super.paymentStatus,
    required super.patientId,
    required super.doctorId,
    required super.clinicId,
    required super.serviceId,
  });

  factory BookingItemModel.fromProto(BookingItem proto) {
    return BookingItemModel(
      id: proto.id,
      doctorName: proto.doctorName,
      date: proto.date,
      timeDisplay: proto.timeDisplay,
      status: proto.status,
      reason: proto.reason,
      patientName: proto.patientName,
      serviceName: proto.serviceName,
      price: proto.price.toDouble(),
      address: proto.address,
      cancelReason: proto.cancelReason,
      paymentMethod: proto.paymentMethod,
      paymentStatus: proto.paymentStatus,
      patientId: proto.patientId,
      doctorId: proto.doctorId,
      clinicId: proto.clinicId,
      serviceId: proto.serviceId,
    );
  }
}
