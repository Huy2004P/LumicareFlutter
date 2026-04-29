import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';
import 'package:lumi_care/core/network/core/auth_interceptor/auth_interceptor.dart';
import 'package:lumi_care/core/network/data/datasources/cloudinary_datasource.dart';
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';
import '../../data/remote/all_remote.dart';
import '../../data/repositories_impl/repositories_impl.dart';

class ServerInjector {
  final locator = GetIt.instance;
  static const String tailscaleIp = '100.66.128.18';
  static const int grpcPort = 50051;

  Future<void> inject() async {
    locator.registerSingleton(AuthInterceptor(locator<AuthLocalDataSource>()));

    final channel = ClientChannel(
      tailscaleIp,
      port: grpcPort,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    locator.registerLazySingleton(
      () => AllRemotes(channel, interceptors: [locator<AuthInterceptor>()]),
    );

    locator.registerLazySingleton(() => CloudinaryDataSource());

    locator.registerLazySingleton(
      () => AppRepositoryImpl(
        remote: locator<AllRemotes>(),
        cloudinaryDataSource: locator<CloudinaryDataSource>(),
        localDataSource: locator<AuthLocalDataSource>(),
      ),
    );
  }
}
