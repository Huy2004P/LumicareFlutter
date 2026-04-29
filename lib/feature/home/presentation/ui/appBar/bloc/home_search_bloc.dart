import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lumi_care/core/network/domain/entities/entities.dart';
import '../../../../domain/use_cases/home_search_usecases.dart';
import 'package:rxdart/rxdart.dart';
part 'home_search_event.dart';
part 'home_search_state.dart';

class HomeSearchBloc extends Bloc<HomeSearchEvent, HomeSearchState> {
  final HomeSearchUsecases searchUsecases;

  HomeSearchBloc({required this.searchUsecases})
    : super(const HomeSearchState()) {
    on<HomeSearchQueryChanged>(
      _onQueryChanged,
      transformer: (events, mapper) => events
          .debounceTime(const Duration(milliseconds: 300))
          .switchMap(mapper),
    );
    on<HomeSearchClearRequested>(_onClear);
  }

  Future<void> _onQueryChanged(
    HomeSearchQueryChanged event,
    Emitter<HomeSearchState> emit,
  ) async {
    final query = event.query.trim();

    if (query.isEmpty) {
      return emit(
        state.copyWith(status: HomeSearchStatus.initial, results: []),
      );
    }

    emit(state.copyWith(status: HomeSearchStatus.loading));

    try {
      final results = await searchUsecases.executeHomeSearch(query);

      emit(state.copyWith(status: HomeSearchStatus.success, results: results));
    } catch (e) {
      emit(
        state.copyWith(
          status: HomeSearchStatus.failure,
          errorMessage: "Search error: $e",
        ),
      );
    }
  }

  void _onClear(HomeSearchClearRequested event, Emitter<HomeSearchState> emit) {
    emit(const HomeSearchState());
  }
}
