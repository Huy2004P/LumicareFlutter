import 'package:lumi_care/core/network/data/models/generated/payment.pb.dart'
    as pay;
import 'package:grpc/grpc.dart';
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'dart:developer' as dev;

import '../../domain/entities/entities.dart';
import '../models/generated/auth.pb.dart' as auth;
import '../models/generated/profile.pb.dart' as prof;
import '../remote/all_remote.dart';
import '../datasources/cloudinary_datasource.dart';
import '../datasources/app_datasource.dart';

class AppRepositoryImpl {
  final AllRemotes remote;
  final CloudinaryDataSource cloudinaryDataSource;
  final AuthLocalDataSource localDataSource;
  late final AppDataSource _appDataSource;

  AppRepositoryImpl({
    required this.remote,
    required this.cloudinaryDataSource,
    required this.localDataSource,
  }) {
    _appDataSource = AppDataSource(
      remote: remote,
      cloudinaryDataSource: cloudinaryDataSource,
      localDataSource: localDataSource,
    );
  }

  // ============ SEARCH ============

  Future<List<HomeGlobalSearchEntity>> homeSearch(
    String query, {
    int limit = 15,
  }) async {
    return _authenticatedRequest(
      () => _appDataSource.homeSearch(query, limit: limit),
    );
  }

  Future<List<String>> getSearchSuggestions(String query) async {
    return _authenticatedRequest(
      () => _appDataSource.getSearchSuggestions(query),
    );
  }

  // ============ NOTIFICATIONS ============

  Stream<NotificationItemEntity> listenNotifications(int pId) {
    return _appDataSource.listenNotifications(pId);
  }

  Future<List<NotificationItemEntity>> getMyNotifications(int uId) async {
    return _authenticatedRequest(() => _appDataSource.getMyNotifications(uId));
  }

  Future<bool> markNotificationAsRead(int notificationId, int userId) async {
    return _authenticatedRequest(
      () => _appDataSource.markNotificationAsRead(notificationId, userId),
    );
  }

  Future<bool> markAllNotificationsAsRead(int userId) async {
    return _authenticatedRequest(
      () => _appDataSource.markAllNotificationsAsRead(userId),
    );
  }

  Future<bool> createNotification({
    required int userId,
    required String title,
    required String message,
    required String type,
  }) async {
    return _authenticatedRequest(
      () => _appDataSource.createNotification(
        userId: userId,
        title: title,
        message: message,
        type: type,
      ),
    );
  }

  // ============ PATIENT PROFILES ============

  Future<List<PatientProfileEntity>> getAllPatientProfiles(int uId) async {
    return _authenticatedRequest(
      () => _appDataSource.getAllPatientProfiles(uId),
    );
  }

  Future<PatientProfileEntity> createPatientProfile(
    PatientProfileEntity profile,
  ) async {
    return _authenticatedRequest(
      () => _appDataSource.createPatientProfile(profile),
    );
  }

  Future<PatientProfileEntity> updatePatientProfile(
    PatientProfileEntity profile,
  ) async {
    return _authenticatedRequest(
      () => _appDataSource.updatePatientProfile(profile),
    );
  }

  Future<bool> deletePatientProfile(int id, int userId) async {
    return _authenticatedRequest(
      () => _appDataSource.deletePatientProfile(id, userId),
    );
  }

  Future<PatientProfileEntity> getPatientProfileById(int id, int userId) async {
    return _authenticatedRequest(
      () => _appDataSource.getPatientProfileById(id, userId),
    );
  }

  // ============ USER PROFILE ============

  Future<UserProfileEntity> getMyProfile() async {
    return _appDataSource.getMyProfile();
  }

  Future<UserProfileEntity> updateProfile(
    UserProfileEntity user, {
    List<int>? avatarBytes,
  }) async {
    return _appDataSource.updateProfile(user, avatarBytes: avatarBytes);
  }

  // ============ DOCTORS ============

  Future<List<DoctorEntity>> getAllDoctors({
    int? specialtyId,
    String? searchQuery,
  }) async {
    return _appDataSource.getAllDoctors(
      specialtyId: specialtyId,
      searchQuery: searchQuery,
    );
  }

  Future<DoctorEntity> getDoctorById(int dId) async {
    return _appDataSource.getDoctorById(dId);
  }

  Future<List<DoctorEntity>> getDoctorsByRoomId(int roomId) async {
    return _appDataSource.getDoctorsByRoomId(roomId);
  }

  Future<DoctorServiceEntity> getDoctorServices(int doctorId) async {
    return _appDataSource.getDoctorServices(doctorId);
  }

  Future<List<SearchResultEntity>> globalSearch(
    String query, {
    int limit = 10,
  }) async {
    return _appDataSource.globalSearch(query, limit: limit);
  }

  // ============ SPECIALTIES ============

  Future<List<SpecialtyEntity>> getAllSpecialties() async {
    return _appDataSource.getAllSpecialties();
  }

  Future<SpecialtyEntity> getSpecialtyById(int id) async {
    return _appDataSource.getSpecialtyById(id);
  }

  // ============ CLINICS ============

  Future<List<ClinicEntity>> getClinics() async {
    return _appDataSource.getClinics();
  }

  Future<ClinicEntity> getClinicById(int cId) async {
    return _appDataSource.getClinicById(cId);
  }

  // ============ ROOMS ============

  Future<List<RoomEntity>> getRoomsByClinicId(int cId) async {
    return _appDataSource.getRoomsByClinicId(cId);
  }

  // ============ SERVICES ============

  Future<List<ServiceEntity>> getAllServices() async {
    return _appDataSource.getAllServices();
  }

  Future<ServiceEntity> getServiceById(int sId) async {
    return _appDataSource.getServiceById(sId);
  }

  Future<List<dynamic>> getDoctorsByServiceId(int serviceId) async {
    return _appDataSource.getDoctorsByServiceId(serviceId);
  }

  // ============ CODES ============

  Future<List<AllCodeEntity>> getAllCodes(String type) async {
    return _appDataSource.getAllCodes(type);
  }

  // ============ SCHEDULES ============

  Future<List<ScheduleItemEntity>> getSchedulesById(
    int dId,
    String date,
  ) async {
    return _appDataSource.getSchedulesById(dId, date);
  }

  // ============ LOCATIONS ============

  Future<List<LocationEntity>> getPatientLocations(int patientId) async {
    return _authenticatedRequest(
      () => _appDataSource.getPatientLocations(patientId),
    );
  }

  Future<LocationStatusEntity> addNewLocation(LocationEntity location) async {
    return _authenticatedRequest(() => _appDataSource.addNewLocation(location));
  }

  Future<bool> deleteLocation(int locationId) async {
    return _authenticatedRequest(
      () => _appDataSource.deleteLocation(locationId),
    );
  }

  Future<bool> setDefaultLocation(int locationId) async {
    return _authenticatedRequest(
      () => _appDataSource.setDefaultLocation(locationId),
    );
  }

  // ============ TREATMENTS ============

  Future<TreatmentDataEntity> getTreatmentByBooking(int bookingId) async {
    return _authenticatedRequest(
      () => _appDataSource.getTreatmentByBooking(bookingId),
    );
  }

  Future<List<MedicalRecordSummaryEntity>> getUserMedicalRecords(
    int userId,
  ) async {
    return _authenticatedRequest(
      () => _appDataSource.getUserMedicalRecords(userId),
    );
  }

  // ============ FEEDBACKS ============

  Future<bool> sendFeedback(Map<String, dynamic> data) async {
    return _authenticatedRequest(() => _appDataSource.sendFeedback(data));
  }

  Future<DoctorFeedbackEntity> getAllFeedbacks() async {
    return _authenticatedRequest(() => _appDataSource.getAllFeedbacks());
  }

  Future<DoctorFeedbackEntity> getDoctorFeedbacks(int dId) async {
    return _appDataSource.getDoctorFeedbacks(dId);
  }

  Future<ClinicFeedbackEntity> getClinicFeedbacks(int cId) async {
    return _appDataSource.getClinicFeedbacks(cId);
  }

  Future<ServiceFeedbackEntity> getServiceFeedbacks(int sId) async {
    return _appDataSource.getServiceFeedbacks(sId);
  }

  // ============ BOOKING ============

  Future<List<BookingItemEntity>> getBookingHistory(int pId) async {
    return _authenticatedRequest(() => _appDataSource.getBookingHistory(pId));
  }

  Future<BookingResponseEntity> createBooking(
    Map<String, dynamic> payload,
    List<dynamic> imageFiles,
  ) async {
    return _authenticatedRequest(
      () => _appDataSource.createBooking(payload, imageFiles.cast()),
    );
  }

  Future<bool> cancelBooking(int bId, int pId, String reason) async {
    return _authenticatedRequest(
      () => _appDataSource.cancelBooking(bId, pId, reason),
    );
  }

  Future<bool> deleteBooking(int bId) async {
    return _authenticatedRequest(() => _appDataSource.deleteBooking(bId));
  }

  // ============ APPOINTMENTS ============

  Future<List<PatientBookingEntity>> getListPatientForDoctor(
    int dId,
    String date,
  ) async {
    return _authenticatedRequest(
      () => _appDataSource.getListPatientForDoctor(dId, date),
    );
  }

  Future<int> finishAppointment(dynamic req) async {
    return _authenticatedRequest(() => _appDataSource.finishAppointment(req));
  }

  // ============ HELPER METHODS ============

  int? getAutoLoginUserId() {
    try {
      final user = localDataSource.getUser();
      return user?.id;
    } catch (e) {
      return null;
    }
  }

  void initOneSignalOnStartup() {
    final userId = getAutoLoginUserId();
    if (userId != null && userId != 0) {
      OneSignal.login(userId.toString());
    }
  }

  Future<T> _authenticatedRequest<T>(Future<T> Function() request) async {
    try {
      return await request();
    } catch (e) {
      if (e is GrpcError && e.code == StatusCode.unauthenticated) {
        try {
          final res = await remote.auth.refreshToken(
            auth.RefreshTokenRequest()
              ..refreshToken = localDataSource.getRefreshToken() ?? "",
          );

          await localDataSource.saveTokens(
            access: res.accessToken,
            refresh: res.refreshToken,
          );
          return await request();
        } catch (refreshErr) {
          rethrow;
        }
      }
      rethrow;
    }
  }

  // ============ AUTH METHODS ============

  Future<void> requestChangePasswordOTP() async {
    try {
      await remote.profile.requestChangePasswordOTP(prof.Empty());
    } catch (e) {
      rethrow;
    }
  }

  Future<auth.StatusResponse> verifyOTP({
    required String email,
    required String otp,
  }) async {
    try {
      final request = auth.VerifyOTPRequest()
        ..email = email
        ..otp = otp;
      return await remote.auth.verifyOTP(request);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
    required String otp,
  }) async {
    try {
      final request = prof.ChangePasswordRequest()
        ..oldPassword = oldPassword
        ..newPassword = newPassword
        ..otp = otp;
      await remote.profile.changePassword(request);
    } catch (e) {
      rethrow;
    }
  }

  Future<AuthResponseEntity> login(String e, String p) async {
    try {
      final res = await remote.auth.login(
        auth.LoginRequest()
          ..email = e
          ..password = p,
      );

      if (res.user.id != 0) {
        OneSignal.login(res.user.id.toString());
      }

      return AuthResponseEntity(
        accessToken: res.accessToken,
        refreshToken: res.refreshToken,
        user: UserInfoEntity(
          id: res.user.id,
          email: res.user.email,
          role: res.user.role,
          fullName: res.user.fullName,
          avatar: res.user.avatar,
          phone: res.user.phone,
          birthday: res.user.birthday,
        ),
      );
    } catch (err) {
      rethrow;
    }
  }

  Future<AuthResponseEntity> register(auth.RegisterRequest req) async {
    try {
      final res = await remote.auth.register(req);
      return AuthResponseEntity(
        accessToken: res.accessToken,
        refreshToken: res.refreshToken,
        user: UserInfoEntity(
          id: res.user.id,
          email: res.user.email,
          role: res.user.role,
          fullName: res.user.fullName,
          avatar: res.user.avatar,
          phone: res.user.phone,
          birthday: res.user.birthday,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<AuthResponseEntity> refreshToken(String token) async {
    try {
      final res = await remote.auth.refreshToken(
        auth.RefreshTokenRequest()..refreshToken = token,
      );

      return AuthResponseEntity(
        accessToken: res.accessToken,
        refreshToken: res.refreshToken,
        user: UserInfoEntity(
          id: res.user.id,
          email: res.user.email,
          role: res.user.role,
          fullName: res.user.fullName,
          avatar: res.user.avatar,
          phone: res.user.phone,
          birthday: res.user.birthday,
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<auth.ForgotPasswordResponse> forgotPassword(String email) async {
    try {
      return await remote.auth.forgotPassword(
        auth.ForgotPasswordRequest()..email = email,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<auth.ResetPasswordResponse> resetPassword(
    auth.ResetPasswordRequest req,
  ) async {
    try {
      return await remote.auth.resetPassword(req);
    } catch (e) {
      rethrow;
    }
  }

  Future<auth.StatusResponse> logout() async {
    try {
      return await remote.auth.logout(auth.Empty());
    } catch (e) {
      rethrow;
    }
  }

  // ============ PAYMENT METHODS ============

  Future<PaymentInstructionEntity> getPaymentInstruction(
    int bookingId,
    String method,
    double totalPrice,
  ) async {
    return _authenticatedRequest(() async {
      try {
        final request = pay.PaymentRequest()
          ..bookingId = bookingId
          ..paymentMethod = method
          ..totalPrice = totalPrice;

        final res = await remote.payment.getPaymentInstruction(request);
        return PaymentInstructionEntity(
          success: res.success,
          qrUrl: res.qrUrl,
          bankInfo: res.bankInfo,
          message: res.message,
        );
      } catch (e) {
        rethrow;
      }
    });
  }

  Future<bool> patientConfirmTransfer(
    int bookingId,
    String transactionId,
  ) async {
    return _authenticatedRequest(() async {
      try {
        final request = pay.ConfirmRequest()
          ..bookingId = bookingId
          ..transactionId = transactionId;

        final res = await remote.payment.patientConfirmTransfer(request);
        return res.success;
      } catch (e) {
        dev.log("patientConfirmTransfer Crash: $e");
        return false;
      }
    });
  }

  Future<bool> adminVerifyPayment(int bookingId) async {
    return _authenticatedRequest(() async {
      try {
        final request = pay.AdminVerifyRequest()..bookingId = bookingId;
        final res = await remote.payment.adminVerifyPayment(request);
        return res.success;
      } catch (e) {
        dev.log("adminVerifyPayment Crash: $e");
        return false;
      }
    });
  }

  Future<PaymentStatusEntity> getPaymentStatus(int bookingId) async {
    return _authenticatedRequest(() async {
      try {
        final request = pay.PaymentStatusRequest()..bookingId = bookingId;
        final res = await remote.payment.getPaymentStatus(request);
        return PaymentStatusEntity(status: res.status, message: res.message);
      } catch (e) {
        rethrow;
      }
    });
  }

  // ============ ACCOUNT VERIFICATION ============

  Future<bool> verifyAccountStatus() async {
    return _authenticatedRequest(() async {
      try {
        dev.log("📡 [Anti-Ban] Đang gọi getMyProfile để check status...");
        final res = await remote.profile.getMyProfile(prof.Empty());

        dev.log("📥 [Anti-Ban] Response ID: ${res.id}");
        dev.log("📥 [Anti-Ban] Response Email: ${res.email}");

        bool isAlive = res.id != 0;

        dev.log("📊 [Anti-Ban] Kết quả cuối cùng: $isAlive");
        return isAlive;
      } catch (e) {
        dev.log("❌ [Anti-Ban] CATCH ERROR: $e");
        return false;
      }
    });
  }

  Future<void> clearSession() async {
    try {
      dev.log("🧹 [Session] Đang xóa Token và Logout OneSignal...");
      await localDataSource.clearTokens();
      await OneSignal.logout();
      dev.log("✅ [Session] Đã dọn dẹp sạch sẽ!");
    } catch (e) {
      dev.log("❌ [Session] Lỗi khi dọn dẹp: $e");
    }
  }
}
