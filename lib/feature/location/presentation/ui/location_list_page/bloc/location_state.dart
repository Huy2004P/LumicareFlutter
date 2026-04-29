part of 'location_bloc.dart';

abstract class LocationState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LocationListInitial extends LocationState {}

class LocationListLoading extends LocationState {}

class LocationListSuccess extends LocationState {
  final LocationDataPack dataPack;
  LocationListSuccess(this.dataPack);
  @override
  List<Object?> get props => [dataPack];
}

class LocationListFailure extends LocationState {
  final String message;
  LocationListFailure(this.message);
  @override
  List<Object?> get props => [message];
}
