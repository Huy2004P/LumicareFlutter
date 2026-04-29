abstract class HomeEvent {}

class HomeDataFetched extends HomeEvent {
  HomeDataFetched();
}

class HomeStarted extends HomeEvent {}

class HomeRefreshRequested extends HomeEvent {}

class HomeLoadMoreDoctors extends HomeEvent {}

class HomeLoadMoreSpecialties extends HomeEvent {}

class HomeLoadMoreClinics extends HomeEvent {}

class HomeLoadMoreServices extends HomeEvent {}

class HomeLoadMoreFeedbacks extends HomeEvent {}
