import 'package:grpc/grpc.dart';
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';

class AuthInterceptor extends ClientInterceptor {
  final AuthLocalDataSource localDataSource;
  AuthInterceptor(this.localDataSource);

  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    invoker,
  ) {
    final token = localDataSource.getAccessToken();
    final newOptions = options.mergedWith(
      CallOptions(metadata: {'authorization': 'Bearer $token'}),
    );

    return invoker(method, request, newOptions);
  }
}
