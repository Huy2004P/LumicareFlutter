part of 'location_add_bloc.dart';

abstract class LocationAddState {}

class LocationAddInitial extends LocationAddState {}

class LocationAddLoading extends LocationAddState {}

// Cập nhật địa chỉ tạm thời khi đang rê Map
class LocationAddCameraSuccess extends LocationAddState {
  final double lat;
  final double lng;
  final String addressName;
  LocationAddCameraSuccess({
    required this.lat,
    required this.lng,
    required this.addressName,
  });
}

// Lưu thành công (Để UI biết mà Navigator.pop về trang List)
class LocationAddSuccess extends LocationAddState {
  final LocationStatusEntity status;
  LocationAddSuccess(this.status);
}

// Lỗi khi lưu
class LocationAddFailure extends LocationAddState {
  final String message;
  LocationAddFailure(this.message);
}
