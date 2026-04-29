import 'package:get_it/get_it.dart';
import 'package:lumi_care/core/services/onesignal_services.dart';
import 'package:lumi_care/feature/auth/application/injection/di.dart';
import 'package:lumi_care/feature/booking/application/injection/di.dart';
import 'package:lumi_care/feature/clinic/application/injection/di.dart';
import 'package:lumi_care/feature/doctor/application/injection/di.dart';
import 'package:lumi_care/feature/home/application/injection/di.dart';
import 'package:lumi_care/feature/location/application/injection/di.dart';
import 'package:lumi_care/feature/patient/application/injection/di.dart';
import 'package:lumi_care/feature/payment/application/injection/di.dart';
import 'package:lumi_care/feature/profile/application/injection/di.dart';
import 'package:lumi_care/feature/services/application/injection/di.dart';
import 'package:lumi_care/feature/specialty/application/injection/di.dart';
import 'package:lumi_care/feature/treatment/application/injection/di.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lumi_care/core/network/core/injection/di.dart';

final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  await AuthInjector().inject();
  await ServerInjector().inject();
  await OneSignalService.init();
  await HomeInjector().inject();
  await BookingInjector().inject();
  await ProfileInjector().inject();
  await TreatmentInjector().inject();
  await ClinicInjector().inject();
  await DoctorInjector().inject();
  await LocationInjector().inject();
  await PaymentInjector().inject();
  await ServiceInjector().inject();
  await SpecialtyInjector().inject();
  await PatientInjector().inject();
}
