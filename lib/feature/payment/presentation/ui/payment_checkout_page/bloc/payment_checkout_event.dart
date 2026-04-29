import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lumi_care/feature/payment/presentation/ui/payment_checkout_page/bloc/payment_checkout_state.dart';

abstract class PaymentCheckoutEvent extends Equatable {
  const PaymentCheckoutEvent();
  @override
  List<Object?> get props => [];
}

// 🎯 Reset trạng thái về ban đầu
class PaymentCheckoutReset extends PaymentCheckoutEvent {}

class PaymentCheckoutInstructionFetched extends PaymentCheckoutEvent {
  final int bookingId;
  final String method;
  final double totalPrice;

  const PaymentCheckoutInstructionFetched({
    required this.bookingId,
    required this.method,
    required this.totalPrice,
  });

  @override
  List<Object?> get props => [bookingId, method, totalPrice];
}

class PaymentCheckoutConfirmSubmitted extends PaymentCheckoutEvent {
  final Map<String, dynamic> payload;
  final List<XFile> photos;
  final String transactionId;

  const PaymentCheckoutConfirmSubmitted({
    required this.payload,
    required this.photos,
    this.transactionId = "",
  });

  @override
  List<Object?> get props => [payload, photos, transactionId];
}

class PaymentCheckoutStatusUpdated extends PaymentCheckoutEvent {
  final PaymentCheckoutStatus status;
  const PaymentCheckoutStatusUpdated({required this.status});

  @override
  List<Object?> get props => [status];
}
