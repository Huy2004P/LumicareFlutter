import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../../../domain/use_cases/home_usecases.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUsecases getHomeDataUseCase;

  // Luu tru toan bo danh sach du lieu lay tu server
  List<DoctorEntity> _allDoctors = [];
  List<SpecialtyEntity> _allSpecialties = [];
  List<ClinicEntity> _allClinics = [];
  List<ServiceEntity> _allServices = [];
  List<FeedbackItemEntity> _allFeedbacks = [];

  // Thiet lap thong so phan trang noi bo
  final int _pageSize = 4;
  final int _doctorPageSize = 3;

  // Bien quan ly so luong item dang hien thi tren giao dien
  int _currentSpecialtyCount = 4;
  int _currentClinicCount = 4;
  int _currentDoctorCount = 3;
  int _currentServiceCount = 4;
  int _currentFeedbackCount = 4;

  HomeBloc(this.getHomeDataUseCase) : super(HomeInitial()) {
    // Dang ky cac event khoi tao va lam moi du lieu dung chung mot ham xu ly
    on<HomeDataFetched>(_onFetchInitialData);
    on<HomeStarted>(_onFetchInitialData);
    on<HomeRefreshRequested>(_onFetchInitialData);

    // Dang ky cac event tai them du lieu cho tung danh muc
    on<HomeLoadMoreDoctors>(_onLoadMoreDoctors);
    on<HomeLoadMoreSpecialties>(_onLoadMoreSpecialties);
    on<HomeLoadMoreClinics>(_onLoadMoreClinics);
    on<HomeLoadMoreServices>(_onLoadMoreServices);
    on<HomeLoadMoreFeedbacks>(_onLoadMoreFeedbacks);
  }

  // Ham xu ly lay du lieu ban dau hoac khi nguoi dung keo de lam moi trang
  Future<void> _onFetchInitialData(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoading());
    try {
      final data = await getHomeDataUseCase();

      _allDoctors = data.doctors;
      _allSpecialties = data.specialties;
      _allClinics = data.clinics;
      _allServices = data.services;
      _allFeedbacks = data.feedbacks;

      // Khoi tao lai cac chi so phan trang ve muc mac dinh
      _currentSpecialtyCount = _pageSize;
      _currentClinicCount = _pageSize;
      _currentDoctorCount = _doctorPageSize;
      _currentServiceCount = _pageSize;
      _currentFeedbackCount = _pageSize;

      emit(
        HomeLoaded(
          specialties: _allSpecialties.take(_currentSpecialtyCount).toList(),
          clinics: _allClinics.take(_currentClinicCount).toList(),
          doctors: _allDoctors.take(_currentDoctorCount).toList(),
          services: _allServices.take(_currentServiceCount).toList(),
          feedbacks: _allFeedbacks.take(_currentFeedbackCount).toList(),
          hasMoreDoctors: _allDoctors.length > _currentDoctorCount,
          hasMoreSpecialties: _allSpecialties.length > _currentSpecialtyCount,
          hasMoreClinics: _allClinics.length > _currentClinicCount,
          hasMoreServices: _allServices.length > _currentServiceCount,
          hasMoreFeedbacks: _allFeedbacks.length > _currentFeedbackCount,
        ),
      );
    } catch (e) {
      emit(HomeError("Loi he thong: ${e.toString()}"));
    }
  }

  // Xu ly tai them danh sach bac si tu du lieu da co san
  Future<void> _onLoadMoreDoctors(
    HomeLoadMoreDoctors event,
    Emitter<HomeState> emit,
  ) async {
    final currentState = state;
    if (currentState is HomeLoaded && currentState.hasMoreDoctors) {
      emit(currentState.copyWith(isLoadMoreDoctors: true));

      // Tao hieu ung cho thoi gian tai
      await Future.delayed(const Duration(milliseconds: 400));

      _currentDoctorCount += _doctorPageSize;
      emit(
        currentState.copyWith(
          doctors: _allDoctors.take(_currentDoctorCount).toList(),
          hasMoreDoctors: _allDoctors.length > _currentDoctorCount,
          isLoadMoreDoctors: false,
        ),
      );
    }
  }

  // Mo rong danh sach chuyen khoa hien thi
  Future<void> _onLoadMoreSpecialties(
    HomeLoadMoreSpecialties event,
    Emitter<HomeState> emit,
  ) async {
    final currentState = state;
    if (currentState is HomeLoaded && currentState.hasMoreSpecialties) {
      _currentSpecialtyCount += _pageSize;
      emit(
        currentState.copyWith(
          specialties: _allSpecialties.take(_currentSpecialtyCount).toList(),
          hasMoreSpecialties: _allSpecialties.length > _currentSpecialtyCount,
        ),
      );
    }
  }

  // Mo rong danh sach co so y te hien thi
  Future<void> _onLoadMoreClinics(
    HomeLoadMoreClinics event,
    Emitter<HomeState> emit,
  ) async {
    final currentState = state;
    if (currentState is HomeLoaded && currentState.hasMoreClinics) {
      _currentClinicCount += _pageSize;
      emit(
        currentState.copyWith(
          clinics: _allClinics.take(_currentClinicCount).toList(),
          hasMoreClinics: _allClinics.length > _currentClinicCount,
        ),
      );
    }
  }

  // Mo rong danh sach dich vu hien thi
  Future<void> _onLoadMoreServices(
    HomeLoadMoreServices event,
    Emitter<HomeState> emit,
  ) async {
    final currentState = state;
    if (currentState is HomeLoaded && currentState.hasMoreServices) {
      _currentServiceCount += _pageSize;
      emit(
        currentState.copyWith(
          services: _allServices.take(_currentServiceCount).toList(),
          hasMoreServices: _allServices.length > _currentServiceCount,
        ),
      );
    }
  }

  // Mo rong danh sach danh gia hien thi
  Future<void> _onLoadMoreFeedbacks(
    HomeLoadMoreFeedbacks event,
    Emitter<HomeState> emit,
  ) async {
    final currentState = state;
    if (currentState is HomeLoaded && currentState.hasMoreFeedbacks) {
      _currentFeedbackCount += _pageSize;
      emit(
        currentState.copyWith(
          feedbacks: _allFeedbacks.take(_currentFeedbackCount).toList(),
          hasMoreFeedbacks: _allFeedbacks.length > _currentFeedbackCount,
        ),
      );
    }
  }
}
