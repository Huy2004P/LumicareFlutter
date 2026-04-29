import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lumi_care/core/di/injection.dart';
import 'package:lumi_care/feature/home/application/constants/route_constants.dart';
import 'package:lumi_care/feature/home/presentation/routing/index.dart';
import 'package:lumi_care/feature/home/presentation/ui/notifications/bloc/notification_bloc.dart';
import 'package:lumi_care/feature/home/presentation/ui/appBar/bloc/home_search_bloc.dart';
import 'package:lumi_care/feature/home/presentation/ui/home/bloc/home_bloc.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: HomePath.splashScreen,
  debugLogDiagnostics: true,
  routes: HomeRouter.routeStructure(_rootNavigatorKey),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<NotificationBloc>()),
        BlocProvider(create: (context) => getIt<HomeSearchBloc>()),
        BlocProvider(create: (context) => getIt<HomeBloc>()),
      ],
      child: MaterialApp.router(
        title: 'LumiCare',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        routerConfig: _router,
      ),
    );
  }
}
