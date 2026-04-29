part of 'location_add_bloc.dart';

abstract class LocationAddEvent {}

// 1. Khi User kéo Map, lấy tọa độ mới và hiển thị địa chỉ tạm thời
class LocationAddCameraMoved extends LocationAddEvent {
  final double lat;
  final double lng;
  final String addressName;
  LocationAddCameraMoved({
    required this.lat,
    required this.lng,
    required this.addressName,
  });
}

// 2. Khi User bấm "LƯU ĐỊA CHỈ"
class LocationAddSubmitted extends LocationAddEvent {
  final LocationEntity location;
  LocationAddSubmitted(this.location);
}
