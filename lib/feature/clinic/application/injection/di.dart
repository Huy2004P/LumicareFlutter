import 'package:get_it/get_it.dart';
import '../../domain/use_cases/clinic_usecases.dart';
import '../../domain/use_cases/room_usecases.dart';
import '../../domain/repositories/clinic_repository.dart';
import '../../domain/repositories/room_repository.dart';
import '../../data/repositories/clinic_repositories_impl.dart';
import '../../data/repositories/room_repositories_impl.dart';
import '../../data/datasources/clinic_remote_datasource.dart';
import '../../data/datasources/room_remote_datasource.dart';
import '../../presentation/ui/clinic/bloc/clinic_bloc.dart';
import '../../presentation/ui/room/bloc/room_bloc.dart';

class ClinicInjector {
  final sl = GetIt.instance;

  Future<void> inject() async {
    sl.registerLazySingleton<ClinicRemoteDataSource>(
      () => ClinicRemoteDataSource(sl()),
    );
    sl.registerLazySingleton<RoomRemoteDataSource>(
      () => RoomRemoteDataSource(sl()),
    );
    sl.registerLazySingleton<ClinicRepository>(
      () => ClinicRepositoryImpl(sl()),
    );
    sl.registerLazySingleton<RoomRepository>(() => RoomRepositoryImpl(sl()));
    sl.registerLazySingleton<ClinicUsecases>(() => ClinicUsecases(sl()));
    sl.registerLazySingleton<RoomUsecases>(() => RoomUsecases(sl()));
    sl.registerFactory<ClinicDetailBloc>(() => ClinicDetailBloc(sl()));
    sl.registerFactory<RoomBloc>(() => RoomBloc(sl()));
  }
}
