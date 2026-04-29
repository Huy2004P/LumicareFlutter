import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<SpecialtyEntity> specialties;
  final List<DoctorEntity> doctors;
  final List<ClinicEntity> clinics;
  final List<ServiceEntity> services;
  final List<FeedbackItemEntity> feedbacks;

  final bool hasMoreDoctors;
  final bool hasMoreSpecialties;
  final bool hasMoreClinics;
  final bool hasMoreServices;
  final bool hasMoreFeedbacks;
  final bool isLoadMoreDoctors;

  HomeLoaded({
    required this.specialties,
    required this.doctors,
    required this.clinics,
    required this.services,
    required this.feedbacks,
    this.hasMoreDoctors = false,
    this.hasMoreSpecialties = false,
    this.hasMoreClinics = false,
    this.hasMoreServices = false,
    this.hasMoreFeedbacks = false,
    this.isLoadMoreDoctors = false,
  });

  HomeLoaded copyWith({
    List<SpecialtyEntity>? specialties,
    List<DoctorEntity>? doctors,
    List<ClinicEntity>? clinics,
    List<ServiceEntity>? services,
    List<FeedbackItemEntity>? feedbacks,
    bool? hasMoreDoctors,
    bool? hasMoreSpecialties,
    bool? hasMoreClinics,
    bool? hasMoreServices,
    bool? hasMoreFeedbacks,
    bool? isLoadMoreDoctors,
  }) {
    return HomeLoaded(
      specialties: specialties ?? this.specialties,
      doctors: doctors ?? this.doctors,
      clinics: clinics ?? this.clinics,
      services: services ?? this.services,
      feedbacks: feedbacks ?? this.feedbacks,
      hasMoreDoctors: hasMoreDoctors ?? this.hasMoreDoctors,
      hasMoreSpecialties: hasMoreSpecialties ?? this.hasMoreSpecialties,
      hasMoreClinics: hasMoreClinics ?? this.hasMoreClinics,
      hasMoreServices: hasMoreServices ?? this.hasMoreServices,
      hasMoreFeedbacks: hasMoreFeedbacks ?? this.hasMoreFeedbacks,
      isLoadMoreDoctors: isLoadMoreDoctors ?? this.isLoadMoreDoctors,
    );
  }

  @override
  List<Object?> get props => [
    specialties,
    doctors,
    clinics,
    services,
    feedbacks,
    hasMoreDoctors,
    hasMoreSpecialties,
    hasMoreClinics,
    hasMoreServices,
    hasMoreFeedbacks,
    isLoadMoreDoctors,
  ];
}

class HomeError extends HomeState {
  final String message;
  HomeError(this.message);

  @override
  List<Object?> get props => [message];
}
