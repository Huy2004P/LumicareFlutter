import 'package:get_it/get_it.dart';
import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/feature/home/domain/use_cases/home_usecases.dart';
import '../../data/datasources/service_remote_datasource.dart';
import '../../data/repositories/service_repository_impl.dart';
import '../../domain/repositories/service_repository.dart';
import '../../domain/use_cases/service_usecases.dart';
import '../../presentation/ui/service_page/bloc/service_bloc.dart';
// 🚀 Nhớ import cái Bloc mới vào nhe
import '../../presentation/ui/service_detail_page/bloc/service_detail_bloc.dart';

class ServiceInjector {
  final sl = GetIt.instance;

  Future<void> inject() async {
    sl.registerLazySingleton<ServiceRemoteDataSource>(
      () => ServiceRemoteDataSource(sl<AppRepositoryImpl>()),
    );

    sl.registerLazySingleton<ServiceRepository>(
      () => ServiceRepositoryImpl(sl<ServiceRemoteDataSource>()),
    );
    sl.registerLazySingleton<ServiceUsecases>(
      () => ServiceUsecases(sl<ServiceRepository>()),
    );
    sl.registerFactory(
      () => ServiceBloc(
        serviceUsecases: sl<ServiceUsecases>(),
        homeUsecases: sl<HomeUsecases>(),
      ),
    );
    sl.registerFactory(
      () => ServiceDetailBloc(serviceUsecases: sl<ServiceUsecases>()),
    );
  }
}
