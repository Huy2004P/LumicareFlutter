import 'package:get_it/get_it.dart';
import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/feature/booking/data/repositories/feedback_repositories_impl.dart';
import 'package:lumi_care/feature/booking/domain/repositories/booking_repository.dart';
import 'package:lumi_care/feature/booking/domain/repositories/feedback_repositories.dart';
import 'package:lumi_care/feature/booking/domain/repositories/schedule_repository.dart';
import 'package:lumi_care/feature/booking/domain/use_cases/send_feedback_usecases.dart';
import 'package:lumi_care/feature/booking/presentation/ui/feedback/bloc/feedback_bloc.dart';

import '../../data/datasources/schedule_remote_datasource.dart';
import '../../data/datasources/booking_remote_datasource.dart';
import '../../data/repositories/schedule_repositories_impl.dart';
import '../../data/repositories/booking_repositories_impl.dart';
import '../../domain/use_cases/schedule_usecases.dart';
import '../../domain/use_cases/booking_usecases.dart';
import '../../presentation/ui/booking/bloc/booking_bloc.dart';
import '../../presentation/ui/booking_confirm/bloc/booking_confirm_bloc.dart';
import '../../presentation/ui/booking_history/bloc/booking_history_bloc.dart';
import '../../data/datasources/feedback_remote_datasource.dart';

class BookingInjector {
  final sl = GetIt.instance;

  Future<void> inject() async {
    sl.registerFactory(() => BookingBloc(getScheduleUseCase: sl()));

    sl.registerFactory(
      () => BookingConfirmBloc(
        createBookingUseCase: sl(),
        createNotificationUseCase: sl(),
      ),
    );

    sl.registerFactory(
      () => BookingHistoryBloc(
        getHistory: sl(),
        cancelBooking: sl(),
        deleteBooking: sl(),
      ),
    );

    sl.registerFactory(() => FeedbackBloc(sendFeedbackUseCase: sl()));

    sl.registerLazySingleton(() => GetScheduleUseCase(sl()));
    sl.registerLazySingleton(() => CreateBookingUseCase(sl()));
    sl.registerLazySingleton(() => GetBookingHistoryUseCase(sl()));
    sl.registerLazySingleton(() => CancelBookingUseCase(sl()));
    sl.registerLazySingleton(() => DeleteBookingUseCase(sl()));
    sl.registerLazySingleton(() => SendFeedbackUseCase(sl()));

    sl.registerLazySingleton<ScheduleRepository>(
      () => ScheduleRepositoryImpl(sl()),
    );
    sl.registerLazySingleton<BookingRepository>(
      () => BookingRepositoryImpl(sl()),
    );
    sl.registerLazySingleton<FeedbackRepository>(
      () => FeedbackRepositoryImpl(sl()),
    );

    sl.registerLazySingleton(
      () => ScheduleRemoteDataSource(sl<AppRepositoryImpl>()),
    );

    sl.registerLazySingleton(
      () => BookingRemoteDataSource(sl<AppRepositoryImpl>()),
    );

    sl.registerLazySingleton(
      () => FeedbackRemoteDataSource(sl<AppRepositoryImpl>()),
    );
  }
}
