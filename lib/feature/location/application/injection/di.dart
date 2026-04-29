import 'package:get_it/get_it.dart';
import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/feature/location/data/datasources/location_remote_datasource.dart';
import 'package:lumi_care/feature/location/data/repositories/location_repository_impl.dart';
import 'package:lumi_care/feature/location/domain/repositories/location_repository.dart';
import 'package:lumi_care/feature/location/domain/use_cases/location_usecases.dart';
import 'package:lumi_care/feature/location/presentation/ui/location_add_page/bloc/location_add_bloc.dart';
import 'package:lumi_care/feature/location/presentation/ui/location_list_page/bloc/location_bloc.dart';

class LocationInjector {
  final sl = GetIt.instance;

  Future<void> inject() async {
    sl.registerLazySingleton<LocationRemoteDataSource>(
      () => LocationRemoteDataSource(sl<AppRepositoryImpl>()),
    );
    sl.registerLazySingleton<LocationRepository>(
      () => LocationRepositoryImpl(sl<LocationRemoteDataSource>()),
    );
    sl.registerLazySingleton(() => LocationUsecases(sl<LocationRepository>()));
    sl.registerFactory(() => LocationBloc(sl<LocationUsecases>()));
    sl.registerFactory(() => LocationAddBloc(sl<LocationUsecases>()));
  }
}
