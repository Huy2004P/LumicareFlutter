import 'package:equatable/equatable.dart';

/// ============================================================================
/// ENTITIES - DOMAIN LAYER
/// All entities follow consistent patterns:
/// - Extend Equatable for value comparison
/// - Use const constructors
/// - Include props for Equatable
/// - Factory methods for proto conversion where needed
/// - copyWith methods for state management
/// ============================================================================

// =============================================================================
// AUTHENTICATION ENTITIES
// =============================================================================

/// User information entity for authentication responses
class UserInfoEntity extends Equatable {
  final int id;
  final String email;
  final String role;
  final String fullName;
  final String avatar;
  final String phone;
  final String birthday;

  const UserInfoEntity({
    required this.id,
    required this.email,
    required this.role,
    required this.fullName,
    required this.avatar,
    required this.phone,
    required this.birthday,
  });

  @override
  List<Object?> get props => [
    id,
    email,
    role,
    fullName,
    avatar,
    phone,
    birthday,
  ];
}

/// Authentication response entity
class AuthResponseEntity extends Equatable {
  final String accessToken;
  final String refreshToken;
  final UserInfoEntity user;

  const AuthResponseEntity({
    required this.accessToken,
    required this.refreshToken,
    required this.user,
  });

  @override
  List<Object?> get props => [accessToken, refreshToken, user];
}

/// Simple status response entity
class SimpleStatusEntity extends Equatable {
  final bool success;
  final String message;

  const SimpleStatusEntity({required this.success, required this.message});

  @override
  List<Object?> get props => [success, message];
}

// =============================================================================
// BOOKING ENTITIES
// =============================================================================

/// Patient booking information for doctor appointments
class PatientBookingEntity extends Equatable {
  final int bookingId;
  final int patientId;
  final String patientName;
  final String phoneNumber;
  final String timeType;
  final String timeDisplay;
  final String reason;
  final String status;
  final String gender;
  final String birthday;
  final String address;

  const PatientBookingEntity({
    required this.bookingId,
    required this.patientId,
    required this.patientName,
    required this.phoneNumber,
    required this.timeType,
    required this.timeDisplay,
    required this.reason,
    required this.status,
    required this.gender,
    required this.birthday,
    required this.address,
  });

  @override
  List<Object?> get props => [
    bookingId,
    patientId,
    patientName,
    phoneNumber,
    timeType,
    timeDisplay,
    reason,
    status,
    gender,
    birthday,
    address,
  ];
}

/// Booking creation response entity
class BookingResponseEntity extends Equatable {
  final bool success;
  final String message;
  final int bookingId;

  const BookingResponseEntity({
    required this.success,
    required this.message,
    required this.bookingId,
  });

  @override
  List<Object?> get props => [success, message, bookingId];
}

/// Booking item entity for booking history
class BookingItemEntity extends Equatable {
  final int id;
  final int patientId;
  final int doctorId;
  final int clinicId;
  final int serviceId;
  final String doctorName;
  final String date;
  final String timeDisplay;
  final String status;
  final String reason;
  final String patientName;
  final String serviceName;
  final double price;
  final String address;
  final String cancelReason;
  final String paymentMethod;
  final int paymentStatus;

  const BookingItemEntity({
    required this.id,
    required this.patientId,
    required this.doctorId,
    required this.clinicId,
    required this.serviceId,
    required this.doctorName,
    required this.date,
    required this.timeDisplay,
    required this.status,
    required this.reason,
    required this.patientName,
    required this.serviceName,
    required this.price,
    required this.address,
    required this.cancelReason,
    required this.paymentMethod,
    required this.paymentStatus,
  });

  /// Create from protobuf data
  factory BookingItemEntity.fromProto(dynamic proto) {
    return BookingItemEntity(
      id: proto.id,
      patientId: proto.patientId,
      doctorId: proto.doctorId,
      clinicId: proto.clinicId,
      serviceId: proto.serviceId,
      doctorName: proto.doctorName,
      date: proto.date,
      timeDisplay: proto.timeDisplay,
      status: proto.status,
      reason: proto.reason,
      patientName: proto.patientName,
      serviceName: proto.serviceName,
      price: proto.price.toDouble(),
      address: proto.address,
      cancelReason: proto.cancelReason,
      paymentMethod: proto.paymentMethod,
      paymentStatus: proto.paymentStatus,
    );
  }

  /// Check if booking is cancelled
  bool get isCancelled => status.toLowerCase() == 'cancelled';

  @override
  List<Object?> get props => [
    id,
    patientId,
    doctorId,
    clinicId,
    serviceId,
    doctorName,
    date,
    timeDisplay,
    status,
    reason,
    patientName,
    serviceName,
    price,
    address,
    cancelReason,
    paymentMethod,
    paymentStatus,
  ];
}

// =============================================================================
// PAYMENT ENTITIES
// =============================================================================

/// Payment instruction entity for QR/bank transfer
class PaymentInstructionEntity extends Equatable {
  final bool success;
  final String qrUrl;
  final String bankInfo;
  final String message;

  const PaymentInstructionEntity({
    required this.success,
    required this.qrUrl,
    required this.bankInfo,
    required this.message,
  });

  @override
  List<Object?> get props => [success, qrUrl, bankInfo, message];
}

/// Payment status entity
class PaymentStatusEntity extends Equatable {
  final int status; // 0: Unpaid, 1: Paid, 2: Pending
  final String message;

  const PaymentStatusEntity({required this.status, required this.message});

  @override
  List<Object?> get props => [status, message];
}

// =============================================================================
// DOCTOR ENTITIES
// =============================================================================

/// Doctor information entity
class DoctorEntity extends Equatable {
  final int id;
  final String fullName;
  final String email;
  final String phone;
  final String position;
  final String description;
  final double price;
  final String avatar;
  final String specialtyName;
  final String roomName;
  final String clinicName;
  final bool active;
  final int specialtyId;
  final double rating;

  const DoctorEntity({
    required this.id,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.position,
    required this.description,
    required this.price,
    required this.avatar,
    required this.specialtyName,
    required this.roomName,
    required this.clinicName,
    required this.active,
    required this.specialtyId,
    required this.rating,
  });

  @override
  List<Object?> get props => [
    id,
    fullName,
    email,
    phone,
    position,
    description,
    price,
    avatar,
    specialtyName,
    roomName,
    clinicName,
    active,
    specialtyId,
    rating,
  ];
}

/// Doctor services response entity
class DoctorServiceEntity extends Equatable {
  final bool success;
  final String doctorName;
  final List<ServiceItemEntity> services;

  const DoctorServiceEntity({
    required this.success,
    required this.doctorName,
    required this.services,
  });

  @override
  List<Object?> get props => [success, doctorName, services];
}

/// Service item entity
class ServiceItemEntity extends Equatable {
  final int id;
  final String name;
  final double price;
  final String image;

  const ServiceItemEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  @override
  List<Object?> get props => [id, name, price, image];
}

// =============================================================================
// FEEDBACK ENTITIES
// =============================================================================

/// Individual feedback item entity
class FeedbackItemEntity extends Equatable {
  final int id;
  final String patientName;
  final String? patientAvatar;
  final String? doctorName;
  final int ratingDoctor;
  final int ratingClinic;
  final int ratingService;
  final int ratingBooking;
  final String comment;
  final String createdAt;

  const FeedbackItemEntity({
    required this.id,
    required this.patientName,
    this.patientAvatar,
    this.doctorName,
    required this.ratingDoctor,
    required this.ratingClinic,
    required this.ratingService,
    required this.ratingBooking,
    required this.comment,
    required this.createdAt,
  });

  /// Create from protobuf data
  factory FeedbackItemEntity.fromProto(dynamic proto) {
    return FeedbackItemEntity(
      id: proto.id,
      patientName: proto.patientName,
      patientAvatar: proto.patientAvatar,
      doctorName: proto.doctorName,
      ratingDoctor: proto.ratingDoctor,
      ratingClinic: proto.ratingClinic,
      ratingService: proto.ratingService,
      ratingBooking: proto.ratingBooking,
      comment: proto.comment,
      createdAt: proto.createdAt,
    );
  }

  @override
  List<Object?> get props => [
    id,
    patientName,
    patientAvatar,
    doctorName,
    ratingDoctor,
    ratingClinic,
    ratingService,
    ratingBooking,
    comment,
    createdAt,
  ];
}

/// Doctor feedback summary entity
class DoctorFeedbackEntity extends Equatable {
  final bool success;
  final List<FeedbackItemEntity> feedbacks;
  final double avgDoctor;
  final double avgBooking;

  const DoctorFeedbackEntity({
    required this.success,
    required this.feedbacks,
    required this.avgDoctor,
    required this.avgBooking,
  });

  @override
  List<Object?> get props => [success, feedbacks, avgDoctor, avgBooking];
}

/// Service feedback summary entity
class ServiceFeedbackEntity extends Equatable {
  final bool success;
  final List<FeedbackItemEntity> feedbacks;
  final double avgService;

  const ServiceFeedbackEntity({
    required this.success,
    required this.feedbacks,
    required this.avgService,
  });

  @override
  List<Object?> get props => [success, feedbacks, avgService];
}

/// Clinic feedback summary entity
class ClinicFeedbackEntity extends Equatable {
  final bool success;
  final List<FeedbackItemEntity> feedbacks;
  final double avgClinic;

  const ClinicFeedbackEntity({
    required this.success,
    required this.feedbacks,
    required this.avgClinic,
  });

  @override
  List<Object?> get props => [success, feedbacks, avgClinic];
}

// =============================================================================
// MASTER DATA ENTITIES
// =============================================================================

/// Specialty information entity
class SpecialtyEntity extends Equatable {
  final int id;
  final String name;
  final String description;
  final String image;
  final String contentHtml;
  final String contentMarkdown;

  const SpecialtyEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.contentHtml,
    required this.contentMarkdown,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    image,
    contentHtml,
    contentMarkdown,
  ];
}

/// Clinic information entity
class ClinicEntity extends Equatable {
  final int id;
  final String name;
  final String address;
  final String description;
  final String image;
  final String type;
  final String contentHtml;
  final double rating;

  const ClinicEntity({
    required this.id,
    required this.name,
    required this.address,
    required this.description,
    required this.image,
    required this.type,
    required this.contentHtml,
    required this.rating,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    address,
    description,
    image,
    type,
    contentHtml,
    rating,
  ];
}

/// Room information entity
class RoomEntity extends Equatable {
  final int id;
  final String name;
  final String clinicName;
  final int clinicId;
  final String location;
  final String description;

  const RoomEntity({
    required this.id,
    required this.name,
    required this.clinicName,
    required this.clinicId,
    required this.location,
    required this.description,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    clinicName,
    clinicId,
    location,
    description,
  ];
}

/// Service information entity
class ServiceEntity extends Equatable {
  final int id;
  final String name;
  final double price;
  final int specialtyId;
  final String description;
  final String image;
  final String contentHtml;
  final String contentMarkdown;
  final double? rating;

  const ServiceEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.specialtyId,
    required this.description,
    required this.image,
    required this.contentHtml,
    required this.contentMarkdown,
    required this.rating,
  });

  /// Create a copy with modified fields
  ServiceEntity copyWith({
    int? id,
    String? name,
    double? price,
    int? specialtyId,
    String? description,
    String? image,
    String? contentHtml,
    String? contentMarkdown,
    double? rating,
  }) {
    return ServiceEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      specialtyId: specialtyId ?? this.specialtyId,
      description: description ?? this.description,
      image: image ?? this.image,
      contentHtml: contentHtml ?? this.contentHtml,
      contentMarkdown: contentMarkdown ?? this.contentMarkdown,
      rating: rating ?? this.rating,
    );
  }

  @override
  List<Object?> get props => [
    id,
    name,
    price,
    specialtyId,
    description,
    image,
    contentHtml,
    contentMarkdown,
    rating,
  ];
}

/// Drug information entity
class DrugEntity extends Equatable {
  final int id;
  final String name;
  final String unit;
  final double price;
  final String description;

  const DrugEntity({
    required this.id,
    required this.name,
    required this.unit,
    required this.price,
    required this.description,
  });

  @override
  List<Object?> get props => [id, name, unit, price, description];
}

/// All codes entity for dropdowns
class AllCodeEntity extends Equatable {
  final int id;
  final String type;
  final String key;
  final String valueVi;
  final String valueEn;

  const AllCodeEntity({
    required this.id,
    required this.type,
    required this.key,
    required this.valueVi,
    required this.valueEn,
  });

  @override
  List<Object?> get props => [id, type, key, valueVi, valueEn];
}

// =============================================================================
// NOTIFICATION ENTITIES
// =============================================================================

/// Notification item entity
class NotificationItemEntity extends Equatable {
  final int id;
  final int userId;
  final String title;
  final String message;
  final String type;
  final bool isRead;
  final String createdAt;

  const NotificationItemEntity({
    required this.id,
    required this.userId,
    required this.title,
    required this.message,
    required this.type,
    required this.isRead,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
    id,
    userId,
    title,
    message,
    type,
    isRead,
    createdAt,
  ];
}

/// Notification list entity
class NotificationListEntity extends Equatable {
  final bool success;
  final String message;
  final List<NotificationItemEntity> notifications;

  const NotificationListEntity({
    required this.success,
    required this.message,
    required this.notifications,
  });

  @override
  List<Object?> get props => [success, message, notifications];
}

// =============================================================================
// PATIENT PROFILE ENTITIES
// =============================================================================

/// Patient profile entity
class PatientProfileEntity extends Equatable {
  final int id;
  final int userId;
  final String fullName;
  final String birthday;
  final String gender;
  final String phoneNumber;
  final String address;
  final String relationship;

  const PatientProfileEntity({
    required this.id,
    required this.userId,
    required this.fullName,
    required this.birthday,
    required this.gender,
    required this.phoneNumber,
    required this.address,
    required this.relationship,
  });

  @override
  List<Object?> get props => [
    id,
    userId,
    fullName,
    birthday,
    gender,
    phoneNumber,
    address,
    relationship,
  ];
}

/// Patient profile list entity
class PatientProfileListEntity extends Equatable {
  final bool success;
  final List<PatientProfileEntity> profiles;

  const PatientProfileListEntity({
    required this.success,
    required this.profiles,
  });

  @override
  List<Object?> get props => [success, profiles];
}

// =============================================================================
// USER PROFILE ENTITIES
// =============================================================================

/// User profile entity
class UserProfileEntity extends Equatable {
  final int id;
  final String email;
  final String role;
  final String fullName;
  final String phone;
  final String avatar;
  final String birthday;
  final String createdAt;

  const UserProfileEntity({
    required this.id,
    required this.email,
    required this.role,
    required this.fullName,
    required this.phone,
    required this.avatar,
    required this.birthday,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
    id,
    email,
    role,
    fullName,
    phone,
    avatar,
    birthday,
    createdAt,
  ];
}

// =============================================================================
// SCHEDULE ENTITIES
// =============================================================================

/// Schedule item entity
class ScheduleItemEntity extends Equatable {
  final int id;
  final String timeType;
  final String timeDisplay;
  final int maxBooking;
  final int currentBooking;
  final bool isAvailable;

  const ScheduleItemEntity({
    required this.id,
    required this.timeType,
    required this.timeDisplay,
    required this.maxBooking,
    required this.currentBooking,
    required this.isAvailable,
  });

  @override
  List<Object?> get props => [
    id,
    timeType,
    timeDisplay,
    maxBooking,
    currentBooking,
    isAvailable,
  ];
}

/// Bulk schedule response entity
class BulkScheduleResponseEntity extends Equatable {
  final bool success;
  final String message;
  final List<String> conflictTimes;

  const BulkScheduleResponseEntity({
    required this.success,
    required this.message,
    required this.conflictTimes,
  });

  @override
  List<Object?> get props => [success, message, conflictTimes];
}

// =============================================================================
// DASHBOARD ENTITIES
// =============================================================================

/// Doctor dashboard entity
class DoctorDashboardEntity extends Equatable {
  final bool success;
  final int totalPatientsToday;
  final int pendingBookings;
  final int completedBookings;
  final int cancelledBookings;
  final double totalRevenue;
  final double averageRating;
  final int totalFeedbacks;
  final List<ChartDataEntity> weeklyActivity;
  final List<RecentBookingEntity> recentBookings;
  final List<PatientAgeGroupEntity> patientAgeGroups;

  const DoctorDashboardEntity({
    required this.success,
    required this.totalPatientsToday,
    required this.pendingBookings,
    required this.completedBookings,
    required this.cancelledBookings,
    required this.totalRevenue,
    required this.averageRating,
    required this.totalFeedbacks,
    required this.weeklyActivity,
    required this.recentBookings,
    required this.patientAgeGroups,
  });

  @override
  List<Object?> get props => [
    success,
    totalPatientsToday,
    pendingBookings,
    completedBookings,
    cancelledBookings,
    totalRevenue,
    averageRating,
    totalFeedbacks,
    weeklyActivity,
    recentBookings,
    patientAgeGroups,
  ];
}

/// Recent booking entity for dashboard
class RecentBookingEntity extends Equatable {
  final int id;
  final String patientName;
  final String time;
  final String status;
  final String serviceName;

  const RecentBookingEntity({
    required this.id,
    required this.patientName,
    required this.time,
    required this.status,
    required this.serviceName,
  });

  @override
  List<Object?> get props => [id, patientName, time, status, serviceName];
}

/// Patient age group entity for analytics
class PatientAgeGroupEntity extends Equatable {
  final String groupName;
  final int count;

  const PatientAgeGroupEntity({required this.groupName, required this.count});

  @override
  List<Object?> get props => [groupName, count];
}

/// Chart data entity
class ChartDataEntity extends Equatable {
  final String label;
  final double value;

  const ChartDataEntity({required this.label, required this.value});

  @override
  List<Object?> get props => [label, value];
}

// =============================================================================
// SEARCH ENTITIES
// =============================================================================

/// Global search result entity
class SearchResultEntity extends Equatable {
  final int id;
  final String name;
  final String subTitle;
  final String avatar;
  final String type;

  const SearchResultEntity({
    required this.id,
    required this.name,
    required this.subTitle,
    required this.avatar,
    required this.type,
  });

  @override
  List<Object?> get props => [id, name, subTitle, avatar, type];
}

/// Home global search entity
class HomeGlobalSearchEntity extends Equatable {
  final String id;
  final String type;
  final String title;
  final String subtitle;
  final String image;

  const HomeGlobalSearchEntity({
    required this.id,
    required this.type,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  /// Create from protobuf data
  factory HomeGlobalSearchEntity.fromProto(dynamic item) {
    return HomeGlobalSearchEntity(
      id: item.id,
      type: item.type,
      title: item.title,
      subtitle: item.subtitle,
      image: item.image,
    );
  }

  @override
  List<Object?> get props => [id, type, title, subtitle, image];
}

/// Search suggestion entity
class SearchSuggestionEntity extends Equatable {
  final List<String> keywords;

  const SearchSuggestionEntity({required this.keywords});

  @override
  List<Object?> get props => [keywords];
}

// =============================================================================
// LOCATION ENTITIES
// =============================================================================

/// Location entity for user addresses
class LocationEntity extends Equatable {
  final int id;
  final int userId;
  final String label;
  final String addressDetail;
  final String province;
  final String district;
  final String ward;
  final double latitude;
  final double longitude;
  final bool isDefault;

  const LocationEntity({
    required this.id,
    required this.userId,
    required this.label,
    required this.addressDetail,
    required this.province,
    required this.district,
    required this.ward,
    required this.latitude,
    required this.longitude,
    required this.isDefault,
  });

  /// Create a copy with modified fields
  LocationEntity copyWith({
    int? id,
    int? userId,
    String? label,
    String? addressDetail,
    String? province,
    String? district,
    String? ward,
    double? latitude,
    double? longitude,
    bool? isDefault,
  }) {
    return LocationEntity(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      label: label ?? this.label,
      addressDetail: addressDetail ?? this.addressDetail,
      province: province ?? this.province,
      district: district ?? this.district,
      ward: ward ?? this.ward,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      isDefault: isDefault ?? this.isDefault,
    );
  }

  /// Get full address string
  String get fullAddress => "$addressDetail, $ward, $district, $province";

  @override
  List<Object?> get props => [
    id,
    userId,
    label,
    addressDetail,
    province,
    district,
    ward,
    latitude,
    longitude,
    isDefault,
  ];
}

/// Location list entity
class LocationListEntity extends Equatable {
  final List<LocationEntity> locations;

  const LocationListEntity({required this.locations});

  @override
  List<Object?> get props => [locations];
}

/// Location operation status entity
class LocationStatusEntity extends Equatable {
  final bool success;
  final String message;
  final int locationId;

  const LocationStatusEntity({
    required this.success,
    required this.message,
    required this.locationId,
  });

  @override
  List<Object?> get props => [success, message, locationId];
}

// =============================================================================
// TREATMENT ENTITIES
// =============================================================================

/// Medical record summary entity
class MedicalRecordSummaryEntity extends Equatable {
  final int bookingId;
  final String examDate;
  final String doctorName;
  final String diagnosis;
  final String specialtyName;

  const MedicalRecordSummaryEntity({
    required this.bookingId,
    required this.examDate,
    required this.doctorName,
    required this.diagnosis,
    required this.specialtyName,
  });

  @override
  List<Object?> get props => [
    bookingId,
    examDate,
    doctorName,
    diagnosis,
    specialtyName,
  ];
}

/// Medicine data entity for prescriptions
class MedicineDataEntity extends Equatable {
  final String medicineName;
  final int quantity;
  final String instruction;

  const MedicineDataEntity({
    required this.medicineName,
    required this.quantity,
    required this.instruction,
  });

  @override
  List<Object?> get props => [medicineName, quantity, instruction];
}

/// Detailed instruction entity for treatment plans
class DetailedInstructionEntity extends Equatable {
  final String name;
  final String times;
  final String instruction;

  const DetailedInstructionEntity({
    required this.name,
    required this.times,
    required this.instruction,
  });

  @override
  List<Object?> get props => [name, times, instruction];
}

/// Treatment data entity containing full treatment information
class TreatmentDataEntity extends Equatable {
  final String diagnosis;
  final String symptoms;
  final String treatmentPlan;
  final String reExamDate;
  final List<DetailedInstructionEntity> instructions;
  final List<MedicineDataEntity> medicines;

  const TreatmentDataEntity({
    required this.diagnosis,
    required this.symptoms,
    required this.treatmentPlan,
    required this.reExamDate,
    required this.instructions,
    required this.medicines,
  });

  @override
  List<Object?> get props => [
    diagnosis,
    symptoms,
    treatmentPlan,
    reExamDate,
    instructions,
    medicines,
  ];
}

// =============================================================================
// PRACTITIONER DASHBOARD ENTITIES
// =============================================================================

/// Practitioner dashboard entity
class PractitionerDashboardEntity extends Equatable {
  final bool success;
  final int totalPatientsToday;
  final int pendingBookings;
  final int completedBookings;
  final int cancelledBookings;
  final double totalRevenue;
  final double averageRating;
  final int totalFeedbacks;
  final List<PractitionerChartDataEntity> weeklyActivity;
  final List<PractitionerRecentBookingEntity> recentBookings;
  final List<PractitionerPatientAgeGroupEntity> patientAgeGroups;

  const PractitionerDashboardEntity({
    required this.success,
    required this.totalPatientsToday,
    required this.pendingBookings,
    required this.completedBookings,
    required this.cancelledBookings,
    required this.totalRevenue,
    required this.averageRating,
    required this.totalFeedbacks,
    required this.weeklyActivity,
    required this.recentBookings,
    required this.patientAgeGroups,
  });

  @override
  List<Object?> get props => [
    success,
    totalPatientsToday,
    pendingBookings,
    completedBookings,
    cancelledBookings,
    totalRevenue,
    averageRating,
    totalFeedbacks,
    weeklyActivity,
    recentBookings,
    patientAgeGroups,
  ];
}

/// Practitioner chart data entity
class PractitionerChartDataEntity extends Equatable {
  final String label;
  final double value;

  const PractitionerChartDataEntity({required this.label, required this.value});

  @override
  List<Object?> get props => [label, value];
}

/// Practitioner recent booking entity
class PractitionerRecentBookingEntity extends Equatable {
  final int id;
  final String patientName;
  final String time;
  final String status;
  final String serviceName;

  const PractitionerRecentBookingEntity({
    required this.id,
    required this.patientName,
    required this.time,
    required this.status,
    required this.serviceName,
  });

  @override
  List<Object?> get props => [id, patientName, time, status, serviceName];
}

/// Practitioner patient age group entity
class PractitionerPatientAgeGroupEntity extends Equatable {
  final String groupName;
  final int count;

  const PractitionerPatientAgeGroupEntity({
    required this.groupName,
    required this.count,
  });

  @override
  List<Object?> get props => [groupName, count];
}

// =============================================================================
// LEGACY ENTITIES (TO BE REMOVED)
// =============================================================================

/// @deprecated Use MedicineDataEntity instead
class MedicineEntity extends Equatable {
  final int drugId;
  final int quantity;
  final String instruction;

  const MedicineEntity({
    required this.drugId,
    required this.quantity,
    required this.instruction,
  });

  @override
  List<Object?> get props => [drugId, quantity, instruction];
}

/// @deprecated Use DetailedInstructionEntity instead
class TreatmentEntity extends Equatable {
  final String name;
  final String times;
  final String instruction;
  final String repeatDays;

  const TreatmentEntity({
    required this.name,
    required this.times,
    required this.instruction,
    required this.repeatDays,
  });

  @override
  List<Object?> get props => [name, times, instruction, repeatDays];
}

/// @deprecated Use ServiceItemEntity instead
class ServiceItemDoctorEntity extends Equatable {
  final int id;
  final String name;
  final double price;
  final String? description;
  final String? image;

  const ServiceItemDoctorEntity({
    required this.id,
    required this.name,
    required this.price,
    this.description,
    this.image,
  });

  @override
  List<Object?> get props => [id, name, price, description, image];
}
