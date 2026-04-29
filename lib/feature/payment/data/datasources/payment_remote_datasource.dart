import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart'
    show PaymentInstructionEntity, PaymentStatusEntity;

/// ============================================================================
/// PAYMENT REMOTE DATA SOURCE
/// Handles payment-related API calls through AppRepository
/// ============================================================================

class PaymentRemoteDataSource {
  final AppRepositoryImpl serverRepo;

  PaymentRemoteDataSource(this.serverRepo);

  Future<PaymentInstructionEntity> getPaymentInstruction(
    int bookingId,
    String method,
    double totalPrice,
  ) {
    return serverRepo.getPaymentInstruction(bookingId, method, totalPrice);
  }

  Future<bool> confirmTransfer(int bookingId, String transactionId) {
    return serverRepo.patientConfirmTransfer(bookingId, transactionId);
  }

  Future<PaymentStatusEntity> getPaymentStatus(int bookingId) {
    return serverRepo.getPaymentStatus(bookingId);
  }

  Future<bool> adminVerifyPayment(int bookingId) {
    return serverRepo.adminVerifyPayment(bookingId);
  }
}
