import 'package:get_it/get_it.dart';
import 'package:lumi_care/feature/auth/application/auto_refresh/TokenAutoManager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/datasources/auth_local_datasource.dart';
import '../../data/datasources/auth_remote_datasource.dart';
import '../../data/repositories/auth_repositories_impl.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/use_cases/auth_usecases.dart';
import '../../presentation/bloc/auth_bloc.dart';

class AuthInjector {
  final sl = GetIt.instance;

  Future<void> inject() async {
    if (!sl.isRegistered<SharedPreferences>()) {
      final sharedPreferences = await SharedPreferences.getInstance();
      sl.registerSingleton<SharedPreferences>(sharedPreferences);
    }
    sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSource(sl()),
    );
    sl.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSource(sl<SharedPreferences>()),
    );
    sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()),
    );
    sl.registerLazySingleton(() => LoginUseCase(sl()));
    sl.registerLazySingleton(() => RegisterUseCase(sl()));
    sl.registerLazySingleton(() => ForgotPasswordUseCase(sl()));
    sl.registerLazySingleton(() => VerifyOTPUseCase(sl()));
    sl.registerLazySingleton(() => ResetPasswordUseCase(sl()));
    sl.registerLazySingleton(() => RefreshTokenUseCase(sl()));
    sl.registerLazySingleton(() => LogoutUseCase(sl()));
    sl.registerLazySingleton(() => CheckLoginStatusUseCase(sl()));
    sl.registerLazySingleton<TokenAutoManager>(
      () => TokenAutoManager(localDataSource: sl(), authRepository: sl()),
    );
    sl.registerFactory(
      () => AuthBloc(
        loginUseCase: sl(),
        registerUseCase: sl(),
        logoutUseCase: sl(),
        checkLoginStatusUseCase: sl(),
        forgotPasswordUseCase: sl(),
        verifyOTPUseCase: sl(),
        resetPasswordUseCase: sl(),
      ),
    );
  }
}
