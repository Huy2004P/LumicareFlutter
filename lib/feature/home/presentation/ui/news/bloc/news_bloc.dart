import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import '../../../../domain/entities/newsartide_entity.dart';
import '../../../../domain/use_cases/get_health_news_usecases.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetHealthNewsUseCase getHealthNewsUseCase;

  NewsBloc({required this.getHealthNewsUseCase}) : super(NewsInitial()) {
    // Xử lý sự kiện lấy tin tức
    on<GetHomeNewsStarted>((event, emit) async {
      emit(NewsLoadInProgress());

      try {
        // Gọi UseCase trực tiếp
        final news = await getHealthNewsUseCase();
        emit(NewsLoadSuccess(news));
      } catch (e) {
        // Nếu API lỗi hoặc mất mạng, bắn ra thông báo lỗi
        emit(NewsLoadFailure("Không thể tải tin tức y tế: ${e.toString()}"));
      }
    });
  }
}
