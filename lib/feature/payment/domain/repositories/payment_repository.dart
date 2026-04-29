import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class PaymentRepository {
  Future<PaymentInstructionEntity> getPaymentInstruction(
    int bookingId,
    String method,
    double totalPrice,
  );
  Future<bool> confirmTransfer(int bookingId, String transactionId);
  Future<PaymentStatusEntity> getPaymentStatus(int bookingId);
  Future<bool> adminVerifyPayment(int bookingId);
}
