part of 'home_search_bloc.dart';

abstract class HomeSearchEvent extends Equatable {
  const HomeSearchEvent();

  @override
  List<Object?> get props => [];
}

// Sự kiện khi người dùng thay đổi từ khóa trong ô Search
class HomeSearchQueryChanged extends HomeSearchEvent {
  final String query;
  const HomeSearchQueryChanged(this.query);

  @override
  List<Object?> get props => [query];
}

// Sự kiện khi người dùng nhấn nút X để xóa từ khóa
class HomeSearchClearRequested extends HomeSearchEvent {}
