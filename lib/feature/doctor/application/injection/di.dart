import 'package:get_it/get_it.dart';
import 'package:lumi_care/feature/specialty/domain/use_cases/specialty_usecase.dart';
import '../../data/datasources/doctor_remote_datasource.dart';
import '../../data/repositories/doctor_repositories_impl.dart';
import '../../domain/use_cases/doctor_usecases.dart';
import '../../domain/repositories/doctor_repository.dart';
import '../../presentation/ui/doctor_detail_page/bloc/doctor_bloc.dart';
import '../../presentation/ui/doctor_selection_page/bloc/doctor_bloc.dart'
    as list_bloc;

class DoctorInjector {
  final sl = GetIt.instance;

  Future<void> inject() async {
    if (!sl.isRegistered<DoctorRemoteDataSource>()) {
      sl.registerLazySingleton<DoctorRemoteDataSource>(
        () => DoctorRemoteDataSource(sl()),
      );
    }
    if (!sl.isRegistered<DoctorRepository>()) {
      sl.registerLazySingleton<DoctorRepository>(
        () => DoctorRepositoryImpl(sl<DoctorRemoteDataSource>()),
      );
    }
    if (!sl.isRegistered<DoctorUsecases>()) {
      sl.registerLazySingleton<DoctorUsecases>(
        () => DoctorUsecases(sl<DoctorRepository>()),
      );
    }
    if (!sl.isRegistered<DoctorDetailBloc>()) {
      sl.registerFactory<DoctorDetailBloc>(
        () => DoctorDetailBloc(sl<DoctorUsecases>()),
      );
    }
    if (!sl.isRegistered<list_bloc.DoctorBloc>()) {
      sl.registerFactory<list_bloc.DoctorBloc>(
        () => list_bloc.DoctorBloc(
          usecases: sl<DoctorUsecases>(),
          specialtyUsecases: sl<SpecialtyUsecases>(),
        ),
      );
    }
  }
}
