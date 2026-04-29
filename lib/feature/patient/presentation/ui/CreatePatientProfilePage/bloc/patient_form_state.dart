import 'package:equatable/equatable.dart';

enum PatientFormStatus { initial, loading, success, error }

class PatientFormState extends Equatable {
  final PatientFormStatus status;
  final String? errorMessage;

  const PatientFormState({
    this.status = PatientFormStatus.initial,
    this.errorMessage,
  });

  // Helper check trạng thái nhanh bên UI
  bool get isLoading => status == PatientFormStatus.loading;
  bool get isSuccess => status == PatientFormStatus.success;

  PatientFormState copyWith({PatientFormStatus? status, String? errorMessage}) {
    return PatientFormState(
      status: status ?? this.status,
      // 🎯 Nếu đang loading hoặc success thì xóa lỗi cũ đi
      errorMessage:
          (status == PatientFormStatus.loading ||
              status == PatientFormStatus.success)
          ? null
          : (errorMessage ?? this.errorMessage),
    );
  }

  @override
  List<Object?> get props => [status, errorMessage];
}
