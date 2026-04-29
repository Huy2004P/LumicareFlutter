part of 'home_search_bloc.dart';

enum HomeSearchStatus { initial, loading, success, failure }

class HomeSearchState extends Equatable {
  final HomeSearchStatus status;
  final List<HomeGlobalSearchEntity> results;
  final String errorMessage;

  const HomeSearchState({
    this.status = HomeSearchStatus.initial,
    this.results = const [],
    this.errorMessage = '',
  });

  HomeSearchState copyWith({
    HomeSearchStatus? status,
    List<HomeGlobalSearchEntity>? results,
    String? errorMessage,
  }) {
    return HomeSearchState(
      status: status ?? this.status,
      results: results ?? this.results,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, results, errorMessage];
}
