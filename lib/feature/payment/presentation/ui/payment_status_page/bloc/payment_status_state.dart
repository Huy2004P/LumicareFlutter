import 'package:equatable/equatable.dart';

enum PaymentStatusViewStatus { initial, loading, success, failure }

class PaymentStatusState extends Equatable {
  final PaymentStatusViewStatus status;
  final bool isSuccess;
  final String? message;

  const PaymentStatusState({
    this.status = PaymentStatusViewStatus.initial,
    this.isSuccess = false,
    this.message,
  });

  PaymentStatusState copyWith({
    PaymentStatusViewStatus? status,
    bool? isSuccess,
    String? message,
  }) {
    return PaymentStatusState(
      status: status ?? this.status,
      isSuccess: isSuccess ?? this.isSuccess,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [status, isSuccess, message];
}
