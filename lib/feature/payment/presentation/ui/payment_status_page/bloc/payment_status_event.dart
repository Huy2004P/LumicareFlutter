import 'package:equatable/equatable.dart';

abstract class PaymentStatusEvent extends Equatable {
  const PaymentStatusEvent();

  @override
  List<Object?> get props => [];
}

// 🎯 Sự kiện kiểm tra lại trạng thái thanh toán từ Server (Re-check)
class PaymentStatusChecked extends PaymentStatusEvent {
  final int bookingId;

  const PaymentStatusChecked({required this.bookingId});

  @override
  List<Object?> get props => [bookingId];
}

// 🎯 Sự kiện cập nhật giao diện thủ công từ Router truyền vào
class PaymentStatusInitialized extends PaymentStatusEvent {
  final bool isSuccess;

  const PaymentStatusInitialized({required this.isSuccess});

  @override
  List<Object?> get props => [isSuccess];
}
