import 'package:lumi_care/core/network/domain/entities/entities.dart';

class PaymentInstructionModel extends PaymentInstructionEntity {
  const PaymentInstructionModel({
    required super.success,
    required super.qrUrl,
    required super.bankInfo,
    required super.message,
  });

  factory PaymentInstructionModel.fromEntity(PaymentInstructionEntity entity) {
    return PaymentInstructionModel(
      success: entity.success,
      qrUrl: entity.qrUrl,
      bankInfo: entity.bankInfo,
      message: entity.message,
    );
  }
}
