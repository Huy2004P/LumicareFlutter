import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:lumi_care/core/network/data/models/generated/location.pb.dart';
import 'package:lumi_care/core/network/data/remote/all_remote.dart';
import 'package:lumi_care/core/network/data/models/generated/search.pb.dart'
    as searchgb;
import 'package:lumi_care/core/network/data/models/generated/appointment.pb.dart';

import 'package:lumi_care/core/network/data/models/generated/booking.pb.dart';
import 'package:lumi_care/core/network/data/models/generated/doctor.pb.dart'
    as doc;
import 'package:lumi_care/core/network/data/models/generated/feedback.pb.dart'
    as fb;
import 'package:lumi_care/core/network/data/models/generated/master_data.pb.dart'
    as md;
import 'package:lumi_care/core/network/data/models/generated/notification.pb.dart'
    as not;
import 'package:lumi_care/core/network/data/models/generated/patientProfile.pb.dart'
    as pp;
import 'package:lumi_care/core/network/data/models/generated/profile.pb.dart'
    as prof;
import 'package:lumi_care/core/network/data/models/generated/schedule.pb.dart';
import 'package:lumi_care/core/network/data/models/generated/treatment.pb.dart'
    as trt;
import 'package:lumi_care/feature/auth/data/datasources/auth_local_datasource.dart';
import '../../domain/entities/entities.dart';
import 'cloudinary_datasource.dart';
import 'dart:developer' as dev;

/// Datasource layer for handling all remote data operations
class AppDataSource {
  final AllRemotes remote;
  final CloudinaryDataSource cloudinaryDataSource;
  final AuthLocalDataSource localDataSource;

  AppDataSource({
    required this.remote,
    required this.cloudinaryDataSource,
    required this.localDataSource,
  });

  // Hàm search
  Future<List<HomeGlobalSearchEntity>> homeSearch(
    String query, {
    int limit = 15,
  }) async {
    try {
      final request = searchgb.SearchRequest()
        ..query = query
        ..limit = limit;

      final res = await remote.search.globalSearch(request);
      if (!res.success) {
        dev.log("HomeSearch khong co ket qua: ${res.message}");
        return [];
      }

      return res.data.map((item) {
        return HomeGlobalSearchEntity(
          id: item.id,
          type: item.type,
          title: item.title,
          subtitle: item.subtitle,
          image: item.image,
        );
      }).toList();
    } catch (e) {
      dev.log("homeSearch Crash: $e");
      rethrow;
    }
  }

  // Hàm lấy gợi ý khi search
  Future<List<String>> getSearchSuggestions(String query) async {
    try {
      final request = searchgb.SearchRequest()..query = query;
      final res = await remote.search.getSuggestions(request);
      if (res.success) {
        return res.keywords;
      }
      return [];
    } catch (e) {
      dev.log("getSuggestions Crash: $e");
      return [];
    }
  }

  // Hàm stream notification
  Stream<NotificationItemEntity> listenNotifications(int pId) {
    final stream = remote.notification.streamNotifications(
      not.StreamRequest()..userId = pId,
    );

    return stream.map(
      (item) => NotificationItemEntity(
        id: item.id,
        userId: item.userId,
        title: item.title,
        message: item.message,
        type: item.type,
        isRead: item.isRead,
        createdAt: item.createdAt,
      ),
    );
  }

  // Hàm get my notifications
  Future<List<NotificationItemEntity>> getMyNotifications(int uId) async {
    try {
      final res = await remote.notification.getMyNotifications(
        not.GetMyNotificationsRequest()..userId = uId,
      );
      return res.data
          .map(
            (n) => NotificationItemEntity(
              id: n.id,
              userId: n.userId,
              title: n.title,
              message: n.message,
              type: n.type,
              isRead: n.isRead,
              createdAt: n.createdAt,
            ),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  // Hàm mark notification as read
  Future<bool> markNotificationAsRead(int notificationId, int userId) async {
    try {
      final request = not.MarkAsReadRequest()
        ..id = notificationId
        ..userId = userId;

      final res = await remote.notification.markAsRead(request);
      return res.success;
    } catch (e) {
      rethrow;
    }
  }

  // Hàm mark all notifications as read
  Future<bool> markAllNotificationsAsRead(int userId) async {
    try {
      final request = not.MarkAllAsReadRequest()..userId = userId;
      final res = await remote.notification.markAllAsRead(request);
      return res.success;
    } catch (e) {
      rethrow;
    }
  }

  // Hàm tạo notification
  Future<bool> createNotification({
    required int userId,
    required String title,
    required String message,
    required String type,
  }) async {
    try {
      final request = not.CreateNotificationRequest()
        ..userId = userId
        ..title = title
        ..message = message
        ..type = type;

      final res = await remote.notification.createNotification(request);
      return res.success;
    } catch (e) {
      rethrow;
    }
  }

  // Hàm get all patient profiles
  Future<List<PatientProfileEntity>> getAllPatientProfiles(int uId) async {
    final res = await remote.patientProfile.getAllProfiles(
      pp.GetProfilesRequest()..userId = uId,
    );
    return res.data
        .map(
          (p) => PatientProfileEntity(
            id: p.id,
            userId: p.userId,
            fullName: p.fullName,
            birthday: p.birthday,
            gender: p.gender,
            phoneNumber: p.phoneNumber,
            address: p.address,
            relationship: p.relationship,
          ),
        )
        .toList();
  }

  // Hàm create patient profile
  Future<PatientProfileEntity> createPatientProfile(
    PatientProfileEntity profile,
  ) async {
    try {
      final request = pp.CreateProfileRequest()
        ..userId = profile.userId
        ..fullName = profile.fullName
        ..birthday = profile.birthday
        ..gender = profile.gender
        ..phoneNumber = profile.phoneNumber
        ..address = profile.address
        ..relationship = profile.relationship;

      final res = await remote.patientProfile.createProfile(request);

      return PatientProfileEntity(
        id: res.id,
        userId: res.userId,
        fullName: res.fullName,
        birthday: res.birthday,
        gender: res.gender,
        phoneNumber: res.phoneNumber,
        address: res.address,
        relationship: res.relationship,
      );
    } catch (e) {
      rethrow;
    }
  }

  // Hàm update patient profile
  Future<PatientProfileEntity> updatePatientProfile(
    PatientProfileEntity profile,
  ) async {
    try {
      final request = pp.UpdateProfileRequest()
        ..id = profile.id
        ..userId = profile.userId
        ..fullName = profile.fullName
        ..birthday = profile.birthday
        ..gender = profile.gender
        ..phoneNumber = profile.phoneNumber
        ..address = profile.address
        ..relationship = profile.relationship;

      final res = await remote.patientProfile.updateProfile(request);

      return PatientProfileEntity(
        id: res.id,
        userId: res.userId,
        fullName: res.fullName,
        birthday: res.birthday,
        gender: res.gender,
        phoneNumber: res.phoneNumber,
        address: res.address,
        relationship: res.relationship,
      );
    } catch (e) {
      rethrow;
    }
  }

  // Hàm delete patient profile
  Future<bool> deletePatientProfile(int id, int userId) async {
    try {
      final request = pp.DeleteProfileRequest()
        ..id = id
        ..userId = userId;

      final res = await remote.patientProfile.deleteProfile(request);
      return res.success;
    } catch (e) {
      rethrow;
    }
  }

  // Hàm get patient profile by id
  Future<PatientProfileEntity> getPatientProfileById(int id, int userId) async {
    try {
      final request = pp.GetByIdRequest()
        ..id = id
        ..userId = userId;

      final res = await remote.patientProfile.getProfileById(request);

      return PatientProfileEntity(
        id: res.id,
        userId: res.userId,
        fullName: res.fullName,
        birthday: res.birthday,
        gender: res.gender,
        phoneNumber: res.phoneNumber,
        address: res.address,
        relationship: res.relationship,
      );
    } catch (e) {
      rethrow;
    }
  }

  // ============ USER PROFILE ============

  // Hàm get my profile
  Future<UserProfileEntity> getMyProfile() async {
    try {
      final res = await remote.profile.getMyProfile(prof.Empty());
      return UserProfileEntity(
        id: res.id,
        email: res.email,
        role: res.role,
        fullName: res.fullName,
        phone: res.phone,
        avatar: res.avatar,
        birthday: res.birthday,
        createdAt: res.createdAt,
      );
    } catch (e) {
      rethrow;
    }
  }

  // Hàm update profile
  Future<UserProfileEntity> updateProfile(
    UserProfileEntity user, {
    List<int>? avatarBytes,
  }) async {
    try {
      final currentProfile = await getMyProfile();
      String finalAvatarUrl = user.avatar;

      if (avatarBytes != null && avatarBytes.isNotEmpty) {
        final uploadedUrl = await cloudinaryDataSource.uploadImage(avatarBytes);
        if (uploadedUrl != null) {
          finalAvatarUrl = uploadedUrl;
        } else {
          finalAvatarUrl = currentProfile.avatar;
        }
      } else {
        finalAvatarUrl = currentProfile.avatar;
      }

      final request = prof.UpdateProfileRequest()
        ..fullName = (user.fullName.isNotEmpty)
            ? user.fullName
            : currentProfile.fullName
        ..phone = (user.phone.isNotEmpty) ? user.phone : currentProfile.phone
        ..avatar = finalAvatarUrl;

      request.birthday = user.birthday.isNotEmpty
          ? user.birthday
          : currentProfile.birthday;

      final res = await remote.profile.updateProfile(request);

      return UserProfileEntity(
        id: res.id,
        email: res.email,
        role: res.role,
        fullName: res.fullName,
        phone: res.phone,
        avatar: res.avatar,
        birthday: res.birthday,
        createdAt: res.createdAt,
      );
    } catch (e) {
      rethrow;
    }
  }

  // ============ DOCTORS ============

  // Hàm get all doctors
  Future<List<DoctorEntity>> getAllDoctors({
    int? specialtyId,
    String? searchQuery,
  }) async {
    try {
      final filter = doc.DoctorFilter();

      if (specialtyId != null) {
        filter.specialtyId = specialtyId;
      }

      if (searchQuery != null && searchQuery.isNotEmpty) {
        filter.searchTerm = searchQuery;
      }

      final res = await remote.doctor.getAllDoctors(filter);

      return res.doctors
          .map(
            (d) => DoctorEntity(
              id: d.id,
              fullName: d.fullName,
              email: d.email,
              phone: d.phone,
              position: d.position,
              description: d.description,
              price: d.price,
              avatar: d.avatar,
              specialtyName: d.specialtyName,
              roomName: d.roomName,
              clinicName: d.clinicName,
              active: d.active,
              specialtyId: d.specialtyId,
              rating: d.rating,
            ),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  // Hàm get doctor by id
  Future<DoctorEntity> getDoctorById(int dId) async {
    try {
      final res = await remote.doctor.getDoctorById(
        doc.DoctorIdRequest()..id = dId,
      );
      return DoctorEntity(
        id: res.id,
        fullName: res.fullName,
        email: res.email,
        phone: res.phone,
        position: res.position,
        description: res.description,
        price: res.price,
        avatar: res.avatar,
        specialtyName: res.specialtyName,
        roomName: res.roomName,
        clinicName: res.clinicName,
        active: res.active,
        specialtyId: res.specialtyId,
        rating: res.rating,
      );
    } catch (e) {
      rethrow;
    }
  }

  // Hàm get doctors by room id
  Future<List<DoctorEntity>> getDoctorsByRoomId(int roomId) async {
    try {
      final res = await remote.masterData.getDoctorsByRoomId(
        md.GetByIdRequest()..id = roomId,
      );
      return res.data
          .map(
            (d) => DoctorEntity(
              id: d.id,
              fullName: d.fullName,
              avatar: d.avatar,
              specialtyName: d.specialtyName,
              email: '',
              phone: d.phone,
              position: d.position,
              description: d.description,
              price: d.price.toDouble(),
              roomName: '',
              clinicName: '',
              active: true,
              specialtyId: d.specialtyId,
              rating: d.rating,
            ),
          )
          .toList();
    } catch (e) {
      return [];
    }
  }

  // Hàm get doctor services
  Future<DoctorServiceEntity> getDoctorServices(int doctorId) async {
    try {
      final res = await remote.doctor.getDoctorServices(
        doc.DoctorIdRequest()..id = doctorId,
      );

      return DoctorServiceEntity(
        success: res.success,
        doctorName: res.doctorName,
        services: res.data
            .map(
              (s) => ServiceItemEntity(
                id: s.id,
                name: s.name,
                price: s.price,
                image: s.image,
              ),
            )
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  // Hàm global search
  Future<List<SearchResultEntity>> globalSearch(
    String query, {
    int limit = 10,
  }) async {
    try {
      final res = await remote.doctor.globalSearch(
        doc.GlobalSearchRequest()
          ..query = query
          ..limit = limit,
      );

      if (!res.success) return [];

      return res.results
          .map(
            (item) => SearchResultEntity(
              id: item.id,
              name: item.name,
              subTitle: item.subTitle,
              avatar: item.avatar,
              type: item.type,
            ),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  // ============ SPECIALTIES ============

  // Hàm get all specialties
  Future<List<SpecialtyEntity>> getAllSpecialties() async {
    try {
      final res = await remote.masterData.getAllSpecialties(
        md.SearchRequest()..limit = 100,
      );
      return res.data
          .map(
            (s) => SpecialtyEntity(
              id: s.id,
              name: s.name,
              description: s.description,
              image: s.image,
              contentHtml: s.contentHtml,
              contentMarkdown: s.contentMarkdown,
            ),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  // Hàm get specialty by id
  Future<SpecialtyEntity> getSpecialtyById(int id) async {
    try {
      final res = await remote.masterData.getSpecialtyById(
        md.GetByIdRequest()..id = id,
      );

      return SpecialtyEntity(
        id: res.id,
        name: res.name,
        description: res.description,
        image: res.image,
        contentHtml: res.contentHtml,
        contentMarkdown: res.contentMarkdown,
      );
    } catch (e) {
      rethrow;
    }
  }

  // ============ CLINICS ============

  // Hàm get clinics
  Future<List<ClinicEntity>> getClinics() async {
    try {
      final res = await remote.masterData.getAllClinics(
        md.SearchRequest()..limit = 100,
      );
      return res.data
          .map(
            (c) => ClinicEntity(
              id: c.id,
              name: c.name,
              address: c.address,
              description: c.description,
              image: c.image,
              type: c.type,
              contentHtml: c.contentHtml,
              rating: c.rating,
            ),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  // Hàm get clinic by id
  Future<ClinicEntity> getClinicById(int cId) async {
    try {
      final res = await remote.masterData.getClinicById(
        md.GetByIdRequest()..id = cId,
      );
      return ClinicEntity(
        id: res.id,
        name: res.name,
        address: res.address,
        description: res.description,
        image: res.image,
        type: res.type,
        contentHtml: res.contentHtml,
        rating: res.rating,
      );
    } catch (e) {
      rethrow;
    }
  }

  // ============ ROOMS ============

  // Hàm get rooms by clinic id
  Future<List<RoomEntity>> getRoomsByClinicId(int cId) async {
    try {
      final request = md.GetByIdRequest()..id = cId;
      final res = await remote.masterData.getRoomsByClinicId(request);
      return res.data
          .map(
            (r) => RoomEntity(
              id: r.id,
              name: r.name,
              clinicId: r.clinicId,
              clinicName: r.clinicName,
              description: r.description,
              location: r.location,
            ),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  // ============ SERVICES ============

  // Hàm get all services
  Future<List<ServiceEntity>> getAllServices() async {
    try {
      final res = await remote.masterData.getAllServices(
        md.SearchRequest()..limit = 100,
      );
      return res.data
          .map(
            (s) => ServiceEntity(
              id: s.id,
              name: s.name,
              price: s.price,
              specialtyId: s.specialtyId,
              description: s.description,
              image: s.image,
              contentHtml: s.contentHtml,
              contentMarkdown: s.contentMarkdown,
              rating: s.rating,
            ),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  // Hàm get service by id
  Future<ServiceEntity> getServiceById(int sId) async {
    try {
      final res = await remote.masterData.getServiceById(
        md.GetByIdRequest()..id = sId,
      );
      return ServiceEntity(
        id: res.id,
        name: res.name,
        price: res.price,
        specialtyId: res.specialtyId,
        description: res.description,
        image: res.image,
        contentHtml: res.contentHtml,
        contentMarkdown: res.contentMarkdown,
        rating: res.rating,
      );
    } catch (e) {
      rethrow;
    }
  }

  // Hàm get doctors by service id
  Future<List<dynamic>> getDoctorsByServiceId(int serviceId) async {
    try {
      final res = await remote.masterData.getDoctorsByService(
        md.GetByIdRequest()..id = serviceId,
      );
      return res.data;
    } catch (e) {
      rethrow;
    }
  }

  // ============ CODES ============

  // Hàm get all codes
  Future<List<AllCodeEntity>> getAllCodes(String type) async {
    try {
      final res = await remote.masterData.getAllCodes(
        md.GetAllCodesRequest()..type = type,
      );
      return res.data
          .map(
            (a) => AllCodeEntity(
              id: a.id,
              type: a.type,
              key: a.key,
              valueVi: a.valueVi,
              valueEn: a.valueEn,
            ),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  // ============ SCHEDULES ============

  // Hàm get schedules by id
  Future<List<ScheduleItemEntity>> getSchedulesById(
    int dId,
    String date,
  ) async {
    try {
      final res = await remote.schedule.getScheduleByDate(
        GetScheduleRequest()
          ..doctorId = dId
          ..date = date,
      );
      if (!res.success) return [];

      return res.data.map((s) {
        return ScheduleItemEntity(
          id: s.id,
          timeType: s.timeType,
          timeDisplay: s.timeDisplay,
          maxBooking: s.maxBooking,
          currentBooking: s.currentBooking,
          isAvailable: s.isAvailable,
        );
      }).toList();
    } catch (e) {
      rethrow;
    }
  }

  // ============ LOCATIONS ============

  // Hàm get patient locations
  Future<List<LocationEntity>> getPatientLocations(int patientId) async {
    final request = PatientIdRequest()..userId = patientId;
    final res = await remote.location.getPatientLocations(request);

    return res.locations
        .map(
          (loc) => LocationEntity(
            id: loc.id,
            userId: loc.userId,
            label: loc.label,
            addressDetail: loc.addressDetail,
            province: loc.province,
            district: loc.district,
            ward: loc.ward,
            latitude: loc.latitude,
            longitude: loc.longitude,
            isDefault: loc.isDefault,
          ),
        )
        .toList();
  }

  // Hàm add new location
  Future<LocationStatusEntity> addNewLocation(LocationEntity location) async {
    final request = LocationMessage()
      ..userId = location.userId
      ..label = location.label
      ..addressDetail = location.addressDetail
      ..province = location.province
      ..district = location.district
      ..ward = location.ward
      ..latitude = location.latitude
      ..longitude = location.longitude
      ..isDefault = location.isDefault;

    final res = await remote.location.addNewLocation(request);

    return LocationStatusEntity(
      success: res.success,
      message: res.message,
      locationId: res.locationId,
    );
  }

  // Hàm delete location
  Future<bool> deleteLocation(int locationId) async {
    final request = LocationIdRequest()..locationId = locationId;
    await remote.location.deleteLocation(request);
    return true;
  }

  // Hàm set default location
  Future<bool> setDefaultLocation(int locationId) async {
    final request = LocationIdRequest()..locationId = locationId;
    await remote.location.setDefaultLocation(request);
    return true;
  }

  // ============ TREATMENTS ============

  // Hàm get treatment by booking
  Future<TreatmentDataEntity> getTreatmentByBooking(int bookingId) async {
    try {
      final request = trt.TreatmentRequest()..bookingId = bookingId;
      final res = await remote.treatment.getTreatmentByBooking(request);
      if (!res.success) throw Exception(res.message);

      final d = res.data;
      return TreatmentDataEntity(
        diagnosis: d.diagnosis,
        symptoms: d.symptoms,
        treatmentPlan: d.treatmentPlan,
        reExamDate: d.reExamDate,
        instructions: d.instructions
            .map(
              (i) => DetailedInstructionEntity(
                name: i.name,
                times: i.times,
                instruction: i.instruction,
              ),
            )
            .toList(),
        medicines: d.medicines
            .map(
              (m) => MedicineDataEntity(
                medicineName: m.medicineName,
                quantity: m.quantity,
                instruction: m.instruction,
              ),
            )
            .toList(),
      );
    } catch (e) {
      dev.log("getTreatmentByBooking Crash: $e");
      rethrow;
    }
  }

  // Hàm get user medical records
  Future<List<MedicalRecordSummaryEntity>> getUserMedicalRecords(
    int userId,
  ) async {
    try {
      final request = trt.UserRecordsRequest()..userId = userId;
      final res = await remote.treatment.getUserMedicalRecords(request);
      if (!res.success) return [];

      return res.data.map((item) {
        return MedicalRecordSummaryEntity(
          bookingId: item.bookingId,
          examDate: item.examDate,
          doctorName: item.doctorName,
          diagnosis: item.diagnosis,
          specialtyName: item.specialtyName,
        );
      }).toList();
    } catch (e) {
      dev.log("getUserMedicalRecords Crash: $e");
      rethrow;
    }
  }

  // ============ FEEDBACKS ============

  // Hàm send feedback
  Future<bool> sendFeedback(Map<String, dynamic> data) async {
    try {
      final req = fb.FeedbackRequest()
        ..bookingId = data['booking_id'] ?? 0
        ..patientId = data['patient_id'] ?? 0
        ..doctorId = data['doctor_id'] ?? 0
        ..clinicId = data['clinic_id'] ?? 0
        ..serviceId = data['service_id'] ?? 0
        ..ratingDoctor = data['rating_doctor'] ?? 0
        ..ratingClinic = data['rating_clinic'] ?? 0
        ..ratingService = data['rating_service'] ?? 0
        ..ratingBooking = data['rating_booking'] ?? 0
        ..comment = data['comment'] ?? "";

      final res = await remote.feedback.sendFeedback(req);

      if (res.success) {
        dev.log("✅ [Feedback] Gửi thành công: ${res.message}");
      } else {
        dev.log("⚠️ [Feedback] Server trả về thất bại: ${res.message}");
      }

      return res.success;
    } catch (e) {
      dev.log("❌ [Feedback Error] Lỗi khi bắn gRPC: $e");
      rethrow;
    }
  }

  // Hàm get all feedbacks
  Future<DoctorFeedbackEntity> getAllFeedbacks() async {
    try {
      final res = await remote.feedback.getAllFeedbacks(fb.Empty());

      return DoctorFeedbackEntity(
        success: res.success,
        avgDoctor: res.avgRating,
        avgBooking: 5.0,
        feedbacks: res.data.map((f) {
          return FeedbackItemEntity(
            id: f.id,
            patientName: f.patientName,
            patientAvatar: f.patientAvatar,
            doctorName: f.doctorName,
            ratingDoctor: f.ratingDoctor,
            ratingClinic: f.ratingClinic,
            ratingService: f.ratingService,
            ratingBooking: f.ratingBooking,
            comment: f.comment,
            createdAt: f.createdAt,
          );
        }).toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  // Hàm get doctor feedbacks
  Future<DoctorFeedbackEntity> getDoctorFeedbacks(int dId) async {
    try {
      final res = await remote.feedback.getDoctorFeedbacks(
        fb.DoctorIdRequest()..doctorId = dId,
      );
      return DoctorFeedbackEntity(
        success: res.success,
        avgDoctor: res.avgRating,
        avgBooking: 5.0,
        feedbacks: res.data
            .map(
              (f) => FeedbackItemEntity(
                id: f.id,
                patientName: f.patientName,
                patientAvatar: f.patientAvatar,
                ratingDoctor: f.ratingDoctor,
                ratingClinic: f.ratingClinic,
                ratingService: f.ratingService,
                ratingBooking: f.ratingBooking,
                comment: f.comment,
                createdAt: f.createdAt,
              ),
            )
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  // Hàm get clinic feedbacks
  Future<ClinicFeedbackEntity> getClinicFeedbacks(int cId) async {
    try {
      final res = await remote.feedback.getClinicFeedbacks(
        fb.ClinicIdRequest()..clinicId = cId,
      );
      return ClinicFeedbackEntity(
        success: res.success,
        avgClinic: res.avgRating,
        feedbacks: res.data
            .map(
              (f) => FeedbackItemEntity(
                id: f.id,
                patientName: f.patientName,
                patientAvatar: f.patientAvatar,
                ratingDoctor: f.ratingDoctor,
                ratingClinic: f.ratingClinic,
                ratingService: f.ratingService,
                ratingBooking: f.ratingBooking,
                comment: f.comment,
                createdAt: f.createdAt,
              ),
            )
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  // Hàm get service feedbacks
  Future<ServiceFeedbackEntity> getServiceFeedbacks(int sId) async {
    try {
      final res = await remote.feedback.getServiceFeedbacks(
        fb.ServiceIdRequest()..serviceId = sId,
      );
      return ServiceFeedbackEntity(
        success: res.success,
        avgService: res.avgRating,
        feedbacks: res.data
            .map(
              (f) => FeedbackItemEntity(
                id: f.id,
                patientName: f.patientName,
                patientAvatar: f.patientAvatar,
                ratingDoctor: f.ratingDoctor,
                ratingClinic: f.ratingClinic,
                ratingService: f.ratingService,
                ratingBooking: f.ratingBooking,
                comment: f.comment,
                createdAt: f.createdAt,
              ),
            )
            .toList(),
      );
    } catch (e) {
      rethrow;
    }
  }

  // ============ BOOKING ============

  // Hàm get booking history
  Future<List<BookingItemEntity>> getBookingHistory(int pId) async {
    try {
      final res = await remote.booking.getBookingHistory(
        GetHistoryRequest()..patientId = pId,
      );

      dev.log("gRPC RAW Data: ${res.toProto3Json()}");

      return res.data.map((i) {
        return BookingItemEntity(
          id: i.id,
          patientId: i.patientId,
          doctorId: i.doctorId,
          clinicId: i.clinicId,
          serviceId: i.serviceId,
          doctorName: i.doctorName,
          date: i.date,
          timeDisplay: i.timeDisplay,
          status: i.status,
          reason: i.reason,
          patientName: i.patientName,
          serviceName: i.serviceName,
          price: i.price.toDouble(),
          address: i.address,
          cancelReason: i.cancelReason,
          paymentMethod: i.paymentMethod,
          paymentStatus: i.paymentStatus,
        );
      }).toList();
    } catch (e) {
      rethrow;
    }
  }

  // Hàm create booking
  Future<BookingResponseEntity> createBooking(
    Map<String, dynamic> payload,
    List<XFile> imageFiles,
  ) async {
    try {
      List<String> imageUrls = [];
      if (imageFiles.isNotEmpty) {
        for (var file in imageFiles) {
          final bytes = await File(file.path).readAsBytes();
          final url = await cloudinaryDataSource.uploadImage(bytes);
          if (url != null) imageUrls.add(url);
        }
      }

      final request = CreateBookingRequest()
        ..doctorId = payload['doctor_id']
        ..patientId = payload['patient_id']
        ..profileId = payload['profile_id']
        ..date = payload['date']
        ..timeType = payload['time_type']
        ..reason = payload['reason']
        ..serviceId = payload['service_id']
        ..locationId = payload['location_id']
        ..paymentMethod = payload['payment_method'] ?? 'PAY1'
        ..photos.addAll(imageUrls);

      final res = await remote.booking.createBooking(request);

      return BookingResponseEntity(
        success: res.success,
        message: res.message,
        bookingId: res.bookingId,
      );
    } catch (e) {
      rethrow;
    }
  }

  // Hàm cancel booking
  Future<bool> cancelBooking(int bId, int pId, String reason) async {
    try {
      final request = CancelBookingRequest()
        ..bookingId = bId
        ..patientId = pId
        ..reason = reason;

      dev.log("gRPC SENDING Cancel Request: ID Don ${request.bookingId}");

      final res = await remote.booking.cancelBooking(request);
      return res.success;
    } catch (e) {
      dev.log("cancelBooking Crash: $e");
      rethrow;
    }
  }

  // Hàm delete booking
  Future<bool> deleteBooking(int bId) async {
    try {
      final request = DeleteBookingRequest()..bookingId = bId;
      final res = await remote.booking.deleteBooking(request);
      return res.success;
    } catch (e) {
      rethrow;
    }
  }

  // ============ APPOINTMENTS ============

  // Hàm get list patient for doctor
  Future<List<PatientBookingEntity>> getListPatientForDoctor(
    int dId,
    String date,
  ) async {
    try {
      final res = await remote.appointment.getListPatientForDoctor(
        GetListPatientRequest()
          ..doctorId = dId
          ..date = date,
      );
      return res.data
          .map(
            (i) => PatientBookingEntity(
              bookingId: i.bookingId,
              patientId: i.patientId,
              patientName: i.patientName,
              phoneNumber: i.phoneNumber,
              timeType: i.timeType,
              timeDisplay: i.timeDisplay,
              reason: i.reason,
              status: i.status,
              gender: i.gender,
              birthday: i.birthday,
              address: i.address,
            ),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  // Hàm finish appointment
  Future<int> finishAppointment(FinishAppointmentRequest req) async {
    try {
      final res = await remote.appointment.finishAppointment(req);
      return res.recordId;
    } catch (e) {
      rethrow;
    }
  }
}
