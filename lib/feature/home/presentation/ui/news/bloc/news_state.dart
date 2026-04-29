part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object?> get props => [];
}

class NewsInitial extends NewsState {}

class NewsLoadInProgress extends NewsState {}

class NewsLoadSuccess extends NewsState {
  final List<NewsArticleEntity> news;
  const NewsLoadSuccess(this.news);

  @override
  List<Object?> get props => [news];
}

class NewsLoadFailure extends NewsState {
  final String errorMessage;
  const NewsLoadFailure(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
