import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../repositories/payment_repository.dart';

// 1. DataPack cho Payment để đóng gói dữ liệu trả về UI (nếu cần mở rộng sau này)
class PaymentDataPack {
  final PaymentInstructionEntity? instruction;
  final PaymentStatusEntity? status;

  PaymentDataPack({this.instruction, this.status});

  factory PaymentDataPack.empty() => PaymentDataPack();
}

class PaymentUsecases {
  final PaymentRepository repository;

  PaymentUsecases(this.repository);

  Future<PaymentDataPack> getPaymentInstruction(
    int bookingId,
    String method,
    double totalPrice,
  ) async {
    try {
      final instruction = await repository.getPaymentInstruction(
        bookingId,
        method,
        totalPrice,
      );
      return PaymentDataPack(instruction: instruction);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> confirmTransfer(int bookingId, String transactionId) async {
    try {
      return await repository.confirmTransfer(bookingId, transactionId);
    } catch (e) {
      rethrow;
    }
  }

  Future<PaymentDataPack> getPaymentStatus(int bookingId) async {
    try {
      final status = await repository.getPaymentStatus(bookingId);
      return PaymentDataPack(status: status);
    } catch (e) {
      rethrow;
    }
  }
}
