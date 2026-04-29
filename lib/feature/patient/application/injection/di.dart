import 'package:get_it/get_it.dart';
import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import 'package:lumi_care/feature/patient/presentation/ui/UpdatePatientProfilePage/bloc/PatientUpdateBloc.dart';
import '../../data/datasources/patient_remote_datasource.dart';
import '../../data/repositories/patient_repositories_impl.dart';
import '../../domain/repositories/patient_repository.dart';
import '../../domain/use_cases/patient_usecases.dart';
import '../../presentation/ui/PatientListPage/bloc/patient_bloc.dart';
import '../../presentation/ui/CreatePatientProfilePage/bloc/patient_form_bloc.dart';

class PatientInjector {
  final sl = GetIt.instance;

  Future<void> inject() async {
    if (!sl.isRegistered<PatientRemoteDataSource>()) {
      sl.registerLazySingleton<PatientRemoteDataSource>(
        () => PatientRemoteDataSource(sl<AppRepositoryImpl>()),
      );
    }
    if (!sl.isRegistered<PatientRepository>()) {
      sl.registerLazySingleton<PatientRepository>(
        () => PatientRepositoryImpl(sl<PatientRemoteDataSource>()),
      );
    }
    if (!sl.isRegistered<PatientUsecases>()) {
      sl.registerLazySingleton<PatientUsecases>(
        () => PatientUsecases(sl<PatientRepository>()),
      );
    }
    if (!sl.isRegistered<PatientBloc>()) {
      sl.registerFactory<PatientBloc>(() => PatientBloc(sl<PatientUsecases>()));
    }

    // Bloc cho Create
    if (!sl.isRegistered<PatientFormBloc>()) {
      sl.registerFactory<PatientFormBloc>(
        () => PatientFormBloc(sl<PatientUsecases>()),
      );
    }
    if (!sl.isRegistered<PatientUpdateBloc>()) {
      sl.registerFactory<PatientUpdateBloc>(
        () => PatientUpdateBloc(sl<PatientUsecases>()),
      );
    }
  }
}
