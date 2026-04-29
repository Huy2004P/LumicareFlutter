part of 'location_bloc.dart';

abstract class LocationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LocationListStarted extends LocationEvent {
  final int userId;
  LocationListStarted(this.userId);
  @override
  List<Object?> get props => [userId];
}

class LocationListDeleted extends LocationEvent {
  final int locationId;
  final int userId;
  LocationListDeleted({required this.locationId, required this.userId});
  @override
  List<Object?> get props => [locationId, userId];
}

// 🎯 EVENT MỚI: Đặt làm mặc định
class LocationListSetDefault extends LocationEvent {
  final int locationId;
  final int userId;
  LocationListSetDefault({required this.locationId, required this.userId});
  @override
  List<Object?> get props => [locationId, userId];
}
