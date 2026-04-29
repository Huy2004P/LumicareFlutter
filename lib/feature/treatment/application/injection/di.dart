import 'package:get_it/get_it.dart';
import 'package:lumi_care/core/network/data/repositories_impl/repositories_impl.dart';
import '../../data/datasources/treatment_remote_datasource.dart';
import '../../domain/repositories/treatment_repository.dart';
import '../../data/repositories/treatment_repositories_impl.dart';
import '../../domain/use_cases/treatment_usecases.dart';
import '../../presentation/ui/treatment_list_page/bloc/treatment_bloc.dart';
import '../../presentation/ui/treatment_detail_page/bloc/treatment_detail_bloc.dart';

class TreatmentInjector {
  final sl = GetIt.instance;

  Future<void> inject() async {
    // TreatmentRemoteDataSource cần AppRepositoryImpl (đã được inject ở server_module)
    if (!sl.isRegistered<TreatmentRemoteDataSource>()) {
      sl.registerLazySingleton<TreatmentRemoteDataSource>(
        () => TreatmentRemoteDataSource(sl<AppRepositoryImpl>()),
      );
    }
    if (!sl.isRegistered<TreatmentRepository>()) {
      sl.registerLazySingleton<TreatmentRepository>(
        () => TreatmentRepositoryImpl(sl<TreatmentRemoteDataSource>()),
      );
    }
    if (!sl.isRegistered<TreatmentUsecases>()) {
      sl.registerLazySingleton<TreatmentUsecases>(
        () => TreatmentUsecases(sl<TreatmentRepository>()),
      );
    }
    // Bloc cho trang danh sách lịch sử khám
    if (!sl.isRegistered<TreatmentBloc>()) {
      sl.registerFactory<TreatmentBloc>(
        () => TreatmentBloc(treatmentUsecases: sl<TreatmentUsecases>()),
      );
    }

    // Bloc cho trang chi tiết đơn thuốc/phác đồ
    if (!sl.isRegistered<TreatmentDetailBloc>()) {
      sl.registerFactory<TreatmentDetailBloc>(
        () => TreatmentDetailBloc(treatmentUsecases: sl<TreatmentUsecases>()),
      );
    }
  }
}
