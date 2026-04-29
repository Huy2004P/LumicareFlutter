import 'package:get_it/get_it.dart';
import 'package:lumi_care/feature/specialty/presentation/specialty_detail_page/bloc/specialty_detail_bloc.dart';
import '../../data/datasources/specialty_remote_datasource.dart';
import '../../data/repositories/specialty_repositories_impl.dart';
import '../../domain/repositories/specialty_repository.dart';
import '../../domain/use_cases/specialty_usecase.dart';

class SpecialtyInjector {
  final sl = GetIt.instance;

  Future<void> inject() async {
    // Data Source
    if (!sl.isRegistered<SpecialtyRemoteDataSource>()) {
      sl.registerLazySingleton<SpecialtyRemoteDataSource>(
        () => SpecialtyRemoteDataSource(sl()),
      );
    }

    // Repository
    if (!sl.isRegistered<SpecialtyRepository>()) {
      sl.registerLazySingleton<SpecialtyRepository>(
        () => SpecialtyRepositoryImpl(sl()),
      );
    }

    // UseCases
    if (!sl.isRegistered<SpecialtyUsecases>()) {
      sl.registerLazySingleton<SpecialtyUsecases>(
        () => SpecialtyUsecases(sl<SpecialtyRepository>()),
      );
    }

    // Trong SpecialtyInjector.dart
    if (!sl.isRegistered<SpecialtyDetailBloc>()) {
      sl.registerFactory<SpecialtyDetailBloc>(
        () => SpecialtyDetailBloc(specialtyUsecases: sl<SpecialtyUsecases>()),
      );
    }
  }
}
