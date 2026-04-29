import 'package:get_it/get_it.dart';

import '../../../auth/data/datasources/auth_local_datasource.dart';
import '../../../auth/domain/use_cases/auth_usecases.dart';
import '../../data/datasources/profile_remote_datasource.dart';
import '../../data/repositories/profile_repository_impl.dart';
import '../../domain/repositories/profile_repository.dart';
import '../../domain/use_cases/profile_usecases.dart';
import '../../presentation/ui/profile/bloc/profile_bloc.dart';

class ProfileInjector {
  final sl = GetIt.instance;

  Future<void> inject() async {
    // 1. DataSources
    sl.registerLazySingleton<ProfileRemoteDataSource>(
      () => ProfileRemoteDataSource(sl()),
    );

    // 2. Repositories
    sl.registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(
        sl<ProfileRemoteDataSource>(),
        sl<AuthLocalDataSource>(),
        sl<RefreshTokenUseCase>(),
      ),
    );

    // 3. UseCases
    sl.registerLazySingleton(() => GetMyProfileUseCase(sl()));
    sl.registerLazySingleton(() => UpdateProfileUseCase(sl()));
    sl.registerLazySingleton(() => RequestPasswordOTPUseCase(sl())); // Mới thêm
    sl.registerLazySingleton(() => ChangePasswordUseCase(sl())); // Mới thêm

    // 4. DataPack (Đã cập nhật đủ 4 UseCases)
    sl.registerLazySingleton(
      () => ProfileDataPack(
        getMyProfile: sl(),
        updateProfile: sl(),
        requestOTP: sl(),
        changePassword: sl(),
      ),
    );

    // 5. Bloc
    sl.registerFactory(
      () => ProfileBloc(
        dataPack: sl<ProfileDataPack>(),
        profileRepository: sl<ProfileRepository>(),
      ),
    );
  }
}
