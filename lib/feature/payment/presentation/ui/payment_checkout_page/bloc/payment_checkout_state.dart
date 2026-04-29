import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

enum PaymentCheckoutStatus {
  initial,
  loading,
  instructionSuccess, // 👈 Trạng thái đã load xong QR
  failure,
  confirming,
  confirmed, // 👈 Trạng thái socket báo tiền về
  success, // 👈 Trạng thái CHỐT HẠ để nhảy trang
}

class PaymentCheckoutState extends Equatable {
  final PaymentCheckoutStatus status;
  final PaymentInstructionEntity? instruction;
  final String? errorMessage;

  const PaymentCheckoutState({
    this.status = PaymentCheckoutStatus.initial,
    this.instruction,
    this.errorMessage,
  });

  PaymentCheckoutState copyWith({
    PaymentCheckoutStatus? status,
    PaymentInstructionEntity? instruction,
    String? errorMessage,
  }) {
    return PaymentCheckoutState(
      status: status ?? this.status,
      instruction: instruction ?? this.instruction,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, instruction, errorMessage];
}
