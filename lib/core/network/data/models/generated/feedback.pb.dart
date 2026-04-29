//
//  Generated code. Do not modify.
//  source: feedback.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Empty extends $pb.GeneratedMessage {
  factory Empty() => create();
  Empty._() : super();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Empty', package: const $pb.PackageName(_omitMessageNames ? '' : 'feedback'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class FeedbackRequest extends $pb.GeneratedMessage {
  factory FeedbackRequest({
    $core.int? bookingId,
    $core.int? patientId,
    $core.int? doctorId,
    $core.int? clinicId,
    $core.int? serviceId,
    $core.int? ratingDoctor,
    $core.int? ratingClinic,
    $core.int? ratingService,
    $core.int? ratingBooking,
    $core.String? comment,
  }) {
    final $result = create();
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    if (patientId != null) {
      $result.patientId = patientId;
    }
    if (doctorId != null) {
      $result.doctorId = doctorId;
    }
    if (clinicId != null) {
      $result.clinicId = clinicId;
    }
    if (serviceId != null) {
      $result.serviceId = serviceId;
    }
    if (ratingDoctor != null) {
      $result.ratingDoctor = ratingDoctor;
    }
    if (ratingClinic != null) {
      $result.ratingClinic = ratingClinic;
    }
    if (ratingService != null) {
      $result.ratingService = ratingService;
    }
    if (ratingBooking != null) {
      $result.ratingBooking = ratingBooking;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    return $result;
  }
  FeedbackRequest._() : super();
  factory FeedbackRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedbackRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FeedbackRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'feedback'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'patientId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'doctorId', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'clinicId', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'serviceId', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'ratingDoctor', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'ratingClinic', $pb.PbFieldType.O3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'ratingService', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'ratingBooking', $pb.PbFieldType.O3)
    ..aOS(10, _omitFieldNames ? '' : 'comment')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeedbackRequest clone() => FeedbackRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeedbackRequest copyWith(void Function(FeedbackRequest) updates) => super.copyWith((message) => updates(message as FeedbackRequest)) as FeedbackRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedbackRequest create() => FeedbackRequest._();
  FeedbackRequest createEmptyInstance() => create();
  static $pb.PbList<FeedbackRequest> createRepeated() => $pb.PbList<FeedbackRequest>();
  @$core.pragma('dart2js:noInline')
  static FeedbackRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedbackRequest>(create);
  static FeedbackRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bookingId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bookingId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBookingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBookingId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get patientId => $_getIZ(1);
  @$pb.TagNumber(2)
  set patientId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPatientId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPatientId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get doctorId => $_getIZ(2);
  @$pb.TagNumber(3)
  set doctorId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDoctorId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDoctorId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get clinicId => $_getIZ(3);
  @$pb.TagNumber(4)
  set clinicId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasClinicId() => $_has(3);
  @$pb.TagNumber(4)
  void clearClinicId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get serviceId => $_getIZ(4);
  @$pb.TagNumber(5)
  set serviceId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasServiceId() => $_has(4);
  @$pb.TagNumber(5)
  void clearServiceId() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get ratingDoctor => $_getIZ(5);
  @$pb.TagNumber(6)
  set ratingDoctor($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRatingDoctor() => $_has(5);
  @$pb.TagNumber(6)
  void clearRatingDoctor() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get ratingClinic => $_getIZ(6);
  @$pb.TagNumber(7)
  set ratingClinic($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRatingClinic() => $_has(6);
  @$pb.TagNumber(7)
  void clearRatingClinic() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get ratingService => $_getIZ(7);
  @$pb.TagNumber(8)
  set ratingService($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRatingService() => $_has(7);
  @$pb.TagNumber(8)
  void clearRatingService() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get ratingBooking => $_getIZ(8);
  @$pb.TagNumber(9)
  set ratingBooking($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRatingBooking() => $_has(8);
  @$pb.TagNumber(9)
  void clearRatingBooking() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get comment => $_getSZ(9);
  @$pb.TagNumber(10)
  set comment($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasComment() => $_has(9);
  @$pb.TagNumber(10)
  void clearComment() => clearField(10);
}

class FeedbackResponse extends $pb.GeneratedMessage {
  factory FeedbackResponse({
    $core.bool? success,
    $core.String? message,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  FeedbackResponse._() : super();
  factory FeedbackResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedbackResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FeedbackResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'feedback'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeedbackResponse clone() => FeedbackResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeedbackResponse copyWith(void Function(FeedbackResponse) updates) => super.copyWith((message) => updates(message as FeedbackResponse)) as FeedbackResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedbackResponse create() => FeedbackResponse._();
  FeedbackResponse createEmptyInstance() => create();
  static $pb.PbList<FeedbackResponse> createRepeated() => $pb.PbList<FeedbackResponse>();
  @$core.pragma('dart2js:noInline')
  static FeedbackResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedbackResponse>(create);
  static FeedbackResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class DoctorIdRequest extends $pb.GeneratedMessage {
  factory DoctorIdRequest({
    $core.int? doctorId,
  }) {
    final $result = create();
    if (doctorId != null) {
      $result.doctorId = doctorId;
    }
    return $result;
  }
  DoctorIdRequest._() : super();
  factory DoctorIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoctorIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DoctorIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'feedback'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'doctorId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoctorIdRequest clone() => DoctorIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoctorIdRequest copyWith(void Function(DoctorIdRequest) updates) => super.copyWith((message) => updates(message as DoctorIdRequest)) as DoctorIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoctorIdRequest create() => DoctorIdRequest._();
  DoctorIdRequest createEmptyInstance() => create();
  static $pb.PbList<DoctorIdRequest> createRepeated() => $pb.PbList<DoctorIdRequest>();
  @$core.pragma('dart2js:noInline')
  static DoctorIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoctorIdRequest>(create);
  static DoctorIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get doctorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set doctorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDoctorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDoctorId() => clearField(1);
}

class ClinicIdRequest extends $pb.GeneratedMessage {
  factory ClinicIdRequest({
    $core.int? clinicId,
  }) {
    final $result = create();
    if (clinicId != null) {
      $result.clinicId = clinicId;
    }
    return $result;
  }
  ClinicIdRequest._() : super();
  factory ClinicIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClinicIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClinicIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'feedback'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'clinicId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClinicIdRequest clone() => ClinicIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClinicIdRequest copyWith(void Function(ClinicIdRequest) updates) => super.copyWith((message) => updates(message as ClinicIdRequest)) as ClinicIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClinicIdRequest create() => ClinicIdRequest._();
  ClinicIdRequest createEmptyInstance() => create();
  static $pb.PbList<ClinicIdRequest> createRepeated() => $pb.PbList<ClinicIdRequest>();
  @$core.pragma('dart2js:noInline')
  static ClinicIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClinicIdRequest>(create);
  static ClinicIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get clinicId => $_getIZ(0);
  @$pb.TagNumber(1)
  set clinicId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClinicId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClinicId() => clearField(1);
}

class ServiceIdRequest extends $pb.GeneratedMessage {
  factory ServiceIdRequest({
    $core.int? serviceId,
  }) {
    final $result = create();
    if (serviceId != null) {
      $result.serviceId = serviceId;
    }
    return $result;
  }
  ServiceIdRequest._() : super();
  factory ServiceIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'feedback'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'serviceId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceIdRequest clone() => ServiceIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceIdRequest copyWith(void Function(ServiceIdRequest) updates) => super.copyWith((message) => updates(message as ServiceIdRequest)) as ServiceIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceIdRequest create() => ServiceIdRequest._();
  ServiceIdRequest createEmptyInstance() => create();
  static $pb.PbList<ServiceIdRequest> createRepeated() => $pb.PbList<ServiceIdRequest>();
  @$core.pragma('dart2js:noInline')
  static ServiceIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceIdRequest>(create);
  static ServiceIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get serviceId => $_getIZ(0);
  @$pb.TagNumber(1)
  set serviceId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServiceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceId() => clearField(1);
}

class FeedbackItem extends $pb.GeneratedMessage {
  factory FeedbackItem({
    $core.int? id,
    $core.String? patientName,
    $core.String? patientAvatar,
    $core.int? ratingDoctor,
    $core.int? ratingClinic,
    $core.int? ratingService,
    $core.int? ratingBooking,
    $core.String? comment,
    $core.String? createdAt,
    $core.String? doctorName,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (patientName != null) {
      $result.patientName = patientName;
    }
    if (patientAvatar != null) {
      $result.patientAvatar = patientAvatar;
    }
    if (ratingDoctor != null) {
      $result.ratingDoctor = ratingDoctor;
    }
    if (ratingClinic != null) {
      $result.ratingClinic = ratingClinic;
    }
    if (ratingService != null) {
      $result.ratingService = ratingService;
    }
    if (ratingBooking != null) {
      $result.ratingBooking = ratingBooking;
    }
    if (comment != null) {
      $result.comment = comment;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (doctorName != null) {
      $result.doctorName = doctorName;
    }
    return $result;
  }
  FeedbackItem._() : super();
  factory FeedbackItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedbackItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FeedbackItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'feedback'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'patientName')
    ..aOS(3, _omitFieldNames ? '' : 'patientAvatar')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'ratingDoctor', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'ratingClinic', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'ratingService', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'ratingBooking', $pb.PbFieldType.O3)
    ..aOS(8, _omitFieldNames ? '' : 'comment')
    ..aOS(9, _omitFieldNames ? '' : 'createdAt')
    ..aOS(10, _omitFieldNames ? '' : 'doctorName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeedbackItem clone() => FeedbackItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeedbackItem copyWith(void Function(FeedbackItem) updates) => super.copyWith((message) => updates(message as FeedbackItem)) as FeedbackItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedbackItem create() => FeedbackItem._();
  FeedbackItem createEmptyInstance() => create();
  static $pb.PbList<FeedbackItem> createRepeated() => $pb.PbList<FeedbackItem>();
  @$core.pragma('dart2js:noInline')
  static FeedbackItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedbackItem>(create);
  static FeedbackItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get patientName => $_getSZ(1);
  @$pb.TagNumber(2)
  set patientName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPatientName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPatientName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get patientAvatar => $_getSZ(2);
  @$pb.TagNumber(3)
  set patientAvatar($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPatientAvatar() => $_has(2);
  @$pb.TagNumber(3)
  void clearPatientAvatar() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get ratingDoctor => $_getIZ(3);
  @$pb.TagNumber(4)
  set ratingDoctor($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRatingDoctor() => $_has(3);
  @$pb.TagNumber(4)
  void clearRatingDoctor() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get ratingClinic => $_getIZ(4);
  @$pb.TagNumber(5)
  set ratingClinic($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRatingClinic() => $_has(4);
  @$pb.TagNumber(5)
  void clearRatingClinic() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get ratingService => $_getIZ(5);
  @$pb.TagNumber(6)
  set ratingService($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRatingService() => $_has(5);
  @$pb.TagNumber(6)
  void clearRatingService() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get ratingBooking => $_getIZ(6);
  @$pb.TagNumber(7)
  set ratingBooking($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRatingBooking() => $_has(6);
  @$pb.TagNumber(7)
  void clearRatingBooking() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get comment => $_getSZ(7);
  @$pb.TagNumber(8)
  set comment($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasComment() => $_has(7);
  @$pb.TagNumber(8)
  void clearComment() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get createdAt => $_getSZ(8);
  @$pb.TagNumber(9)
  set createdAt($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCreatedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearCreatedAt() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get doctorName => $_getSZ(9);
  @$pb.TagNumber(10)
  set doctorName($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDoctorName() => $_has(9);
  @$pb.TagNumber(10)
  void clearDoctorName() => clearField(10);
}

class FeedbackListResponse extends $pb.GeneratedMessage {
  factory FeedbackListResponse({
    $core.bool? success,
    $core.Iterable<FeedbackItem>? data,
    $core.double? avgRating,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (data != null) {
      $result.data.addAll(data);
    }
    if (avgRating != null) {
      $result.avgRating = avgRating;
    }
    return $result;
  }
  FeedbackListResponse._() : super();
  factory FeedbackListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeedbackListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FeedbackListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'feedback'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..pc<FeedbackItem>(2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: FeedbackItem.create)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'avgRating', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeedbackListResponse clone() => FeedbackListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeedbackListResponse copyWith(void Function(FeedbackListResponse) updates) => super.copyWith((message) => updates(message as FeedbackListResponse)) as FeedbackListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FeedbackListResponse create() => FeedbackListResponse._();
  FeedbackListResponse createEmptyInstance() => create();
  static $pb.PbList<FeedbackListResponse> createRepeated() => $pb.PbList<FeedbackListResponse>();
  @$core.pragma('dart2js:noInline')
  static FeedbackListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeedbackListResponse>(create);
  static FeedbackListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<FeedbackItem> get data => $_getList(1);

  @$pb.TagNumber(3)
  $core.double get avgRating => $_getN(2);
  @$pb.TagNumber(3)
  set avgRating($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvgRating() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvgRating() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
