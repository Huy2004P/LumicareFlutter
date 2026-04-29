import 'package:get_it/get_it.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import 'package:lumi_care/feature/payment/data/datasources/payment_remote_datasource.dart';
import 'package:lumi_care/feature/payment/data/repositories/payment_repositories_impl.dart';
import 'package:lumi_care/feature/payment/domain/repositories/payment_repository.dart';
import 'package:lumi_care/feature/payment/domain/use_cases/payment_usecases.dart';
import 'package:lumi_care/feature/payment/presentation/ui/payment_checkout_page/bloc/payment_checkout_bloc.dart';
import 'package:lumi_care/feature/payment/presentation/ui/payment_status_page/bloc/payment_status_bloc.dart';

/// ============================================================================
/// PAYMENT INJECTOR - Dependency Injection Configuration
/// ============================================================================

class PaymentInjector {
  final sl = GetIt.instance;

  Future<void> inject() async {
    // Data Sources
    sl.registerLazySingleton(() => PaymentRemoteDataSource(sl()));

    // Repositories
    sl.registerLazySingleton<PaymentRepository>(
      () => PaymentRepositoryImpl(sl()),
    );

    // Use Cases
    sl.registerLazySingleton(() => PaymentUsecases(sl()));

    // BLOCs
    sl.registerFactory(
      () => PaymentCheckoutBloc(
        paymentUsecases: sl(),
        createBookingUseCase: sl(),
      ),
    );

    // Socket.io Configuration
    sl.registerLazySingleton<IO.Socket>(() {
      return IO.io('http://localhost:3001', <String, dynamic>{
        'transports': ['websocket'],
        'autoConnect': false,
      });
    });

    // Status Page Bloc
    sl.registerFactory(() => PaymentStatusBloc(usecases: sl()));
  }
}
