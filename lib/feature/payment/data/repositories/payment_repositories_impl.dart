import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../domain/repositories/payment_repository.dart'; // Nhớ tạo file interface này nhen
import '../datasources/payment_remote_datasource.dart';

class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentRemoteDataSource dataSource;

  PaymentRepositoryImpl(this.dataSource);

  @override
  Future<PaymentInstructionEntity> getPaymentInstruction(
    int bookingId,
    String method,
    double totalPrice,
  ) {
    return dataSource.getPaymentInstruction(bookingId, method, totalPrice);
  }

  @override
  Future<bool> confirmTransfer(int bookingId, String transactionId) {
    return dataSource.confirmTransfer(bookingId, transactionId);
  }

  @override
  Future<PaymentStatusEntity> getPaymentStatus(int bookingId) {
    return dataSource.getPaymentStatus(bookingId);
  }

  @override
  Future<bool> adminVerifyPayment(int bookingId) {
    return dataSource.adminVerifyPayment(bookingId);
  }
}
