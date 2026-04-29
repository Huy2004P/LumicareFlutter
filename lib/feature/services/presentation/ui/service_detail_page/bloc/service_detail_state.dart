import 'package:equatable/equatable.dart';

import '../../../../domain/use_cases/service_usecases.dart';

abstract class ServiceDetailState extends Equatable {
  const ServiceDetailState();

  @override
  List<Object?> get props => [];
}

/// ⚪️ Trạng thái: Ban đầu (Chưa load)
class ServiceDetailInitial extends ServiceDetailState {}

/// 🔵 Trạng thái: Đang load (Đang hiện Shimmer hoặc Loading)
class ServiceDetailLoading extends ServiceDetailState {}

/// 🟢 Trạng thái: Load thành công (Dữ liệu đã sẵn sàng)
class ServiceDetailLoaded extends ServiceDetailState {
  final ServiceDetailDataPack detail; // Gói dữ liệu gồm Service + Doctors

  const ServiceDetailLoaded(this.detail);

  @override
  List<Object?> get props => [detail];
}

/// 🔴 Trạng thái: Load thất bại (Báo lỗi)
class ServiceDetailError extends ServiceDetailState {
  final String message; // Câu thông báo lỗi

  const ServiceDetailError(this.message);

  @override
  List<Object?> get props => [message];
}
