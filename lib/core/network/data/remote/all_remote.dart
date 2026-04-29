import 'package:grpc/grpc.dart';
import 'package:lumi_care/core/network/core/auth_interceptor/auth_interceptor.dart';
import 'package:lumi_care/core/network/data/models/generated/search.pbgrpc.dart';
import '../models/generated/appointment.pbgrpc.dart';
import '../models/generated/auth.pbgrpc.dart';
import '../models/generated/booking.pbgrpc.dart';
import '../models/generated/doctor.pbgrpc.dart';
import '../models/generated/feedback.pbgrpc.dart';
import '../models/generated/master_data.pbgrpc.dart';
import '../models/generated/notification.pbgrpc.dart';
import '../models/generated/patientProfile.pbgrpc.dart';
import '../models/generated/profile.pbgrpc.dart';
import '../models/generated/schedule.pbgrpc.dart';
import '../models/generated/statistic.pbgrpc.dart';
import '../models/generated/location.pbgrpc.dart';
import '../models/generated/treatment.pbgrpc.dart';
import '../models/generated/payment.pbgrpc.dart';

class AllRemotes {
  // Định nghĩa các Client cho từng dịch vụ
  final AppointmentServiceClient appointment;
  final AuthServiceClient auth;
  final BookingServiceClient booking;
  final DoctorServiceClient doctor;
  final FeedbackServiceClient feedback;
  final MasterDataServiceClient masterData;
  final NotificationServiceClient notification;
  final PatientProfileServiceClient patientProfile;
  final ProfileServiceClient profile;
  final ScheduleServiceClient schedule;
  final StatisticServiceClient statistic;
  final LocationServiceClient location;
  final SearchServiceClient search;
  final TreatmentServiceClient treatment;
  final PaymentServiceClient payment;

  // Constructor nhận vào một Channel chung
  AllRemotes(
    ClientChannel channel, {
    required List<AuthInterceptor> interceptors,
  }) : appointment = AppointmentServiceClient(
         channel,
         interceptors: interceptors,
       ),
       auth = AuthServiceClient(channel),
       booking = BookingServiceClient(channel, interceptors: interceptors),
       doctor = DoctorServiceClient(channel, interceptors: interceptors),
       feedback = FeedbackServiceClient(channel, interceptors: interceptors),
       masterData = MasterDataServiceClient(
         channel,
         interceptors: interceptors,
       ),
       notification = NotificationServiceClient(
         channel,
         interceptors: interceptors,
       ),
       patientProfile = PatientProfileServiceClient(
         channel,
         interceptors: interceptors,
       ),
       profile = ProfileServiceClient(channel, interceptors: interceptors),
       schedule = ScheduleServiceClient(channel, interceptors: interceptors),
       statistic = StatisticServiceClient(channel, interceptors: interceptors),
       location = LocationServiceClient(channel, interceptors: interceptors),
       search = SearchServiceClient(channel, interceptors: interceptors),
       treatment = TreatmentServiceClient(channel, interceptors: interceptors),
       payment = PaymentServiceClient(channel, interceptors: interceptors);
}
