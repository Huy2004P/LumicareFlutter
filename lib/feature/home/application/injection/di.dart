import 'package:get_it/get_it.dart';
import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:http/http.dart' as http;
import '../../data/datasources/home_remote_datasource.dart';
import '../../data/datasources/notification_remote_datasource.dart';
import '../../data/datasources/newsarrtide_remote_datasource.dart';
import '../../data/repositories/home_repository_impl.dart';
import '../../data/repositories/notification_repository_impl.dart';
import '../../data/repositories/newsartide_repositories_impl.dart';
import '../../domain/repositories/home_repository.dart';
import '../../domain/repositories/notification_repository.dart';
import '../../domain/repositories/newsartide_repository.dart';
import '../../domain/use_cases/home_usecases.dart';
import '../../domain/use_cases/notification_usecases.dart';
import '../../domain/use_cases/home_search_usecases.dart';
import '../../domain/use_cases/get_health_news_usecases.dart';
import '../../presentation/ui/appBar/bloc/home_search_bloc.dart';
import '../../presentation/ui/home/bloc/home_bloc.dart';
import '../../presentation/ui/news/bloc/news_bloc.dart';
import '../../presentation/ui/notifications/bloc/notification_bloc.dart'
    show NotificationBloc;

class HomeInjector {
  final sl = GetIt.instance;

  Future<void> inject() async {
    // --- DataSources ---
    if (!sl.isRegistered<HomeRemoteDataSource>()) {
      sl.registerLazySingleton(
        () => HomeRemoteDataSource(sl<AppRepositoryImpl>()),
      );
    }
    if (!sl.isRegistered<NotificationRemoteDataSource>()) {
      sl.registerLazySingleton(
        () => NotificationRemoteDataSource(sl<AppRepositoryImpl>()),
      );
    }
    // 🎯 Register News DataSource
    if (!sl.isRegistered<NewsRemoteDataSource>()) {
      sl.registerLazySingleton<NewsRemoteDataSource>(
        () => NewsRemoteDataSourceImpl(client: http.Client()),
      );
    }

    // --- Repositories ---
    if (!sl.isRegistered<HomeRepository>()) {
      sl.registerLazySingleton<HomeRepository>(
        () => HomeRepositoryImpl(sl<HomeRemoteDataSource>()),
      );
    }
    if (!sl.isRegistered<NotificationRepository>()) {
      sl.registerLazySingleton<NotificationRepository>(
        () => NotificationRepositoryImpl(sl<NotificationRemoteDataSource>()),
      );
    }
    // 🎯 Register News Repository
    if (!sl.isRegistered<NewsRepository>()) {
      sl.registerLazySingleton<NewsRepository>(
        () => NewsRepositoryImpl(remoteDataSource: sl<NewsRemoteDataSource>()),
      );
    }

    // --- UseCases ---
    sl.registerLazySingleton(() => HomeUsecases(sl<HomeRepository>()));
    sl.registerLazySingleton(() => HomeSearchUsecases(sl<HomeRepository>()));

    // 🎯 Register News UseCase
    sl.registerLazySingleton(
      () => GetHealthNewsUseCase(repository: sl<NewsRepository>()),
    );

    // Notifications
    sl.registerLazySingleton(
      () => GetMyNotificationsUseCase(sl<NotificationRepository>()),
    );
    sl.registerLazySingleton(
      () => MarkNotiAsReadUseCase(sl<NotificationRepository>()),
    );
    sl.registerLazySingleton(
      () => MarkAllNotiAsReadUseCase(sl<NotificationRepository>()),
    );
    sl.registerLazySingleton(
      () => CreateNotificationUseCase(sl<NotificationRepository>()),
    );
    sl.registerLazySingleton(
      () => ListenNotificationUseCase(sl<NotificationRepository>()),
    );

    // --- Blocs ---
    sl.registerFactory(() => HomeBloc(sl<HomeUsecases>()));
    sl.registerFactory(
      () => HomeSearchBloc(searchUsecases: sl<HomeSearchUsecases>()),
    );

    // 🎯 Register News Bloc
    sl.registerFactory(
      () => NewsBloc(getHealthNewsUseCase: sl<GetHealthNewsUseCase>()),
    );

    sl.registerFactory(
      () => NotificationBloc(
        getNotificationsUseCase: sl<GetMyNotificationsUseCase>(),
        markAsReadUseCase: sl<MarkNotiAsReadUseCase>(),
        markAllAsReadUseCase: sl<MarkAllNotiAsReadUseCase>(),
        listenNotificationUseCase: sl<ListenNotificationUseCase>(),
      ),
    );
  }
}
