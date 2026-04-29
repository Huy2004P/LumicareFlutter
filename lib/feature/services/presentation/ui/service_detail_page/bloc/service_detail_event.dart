import 'package:equatable/equatable.dart';

abstract class ServiceDetailEvent extends Equatable {
  const ServiceDetailEvent();

  @override
  List<Object?> get props => [];
}

/// 🚀 Event: Yêu cầu load chi tiết dịch vụ và bác sĩ
class LoadServiceDetailEvent extends ServiceDetailEvent {
  final int serviceId; // Cần ID để lấy dữ liệu đúng

  const LoadServiceDetailEvent(this.serviceId);

  @override
  List<Object?> get props => [serviceId];
}
