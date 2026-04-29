//
//  Generated code. Do not modify.
//  source: booking.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class BookingResponse extends $pb.GeneratedMessage {
  factory BookingResponse({
    $core.bool? success,
    $core.String? message,
    $core.int? bookingId,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    return $result;
  }
  BookingResponse._() : super();
  factory BookingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BookingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BookingResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booking'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BookingResponse clone() => BookingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BookingResponse copyWith(void Function(BookingResponse) updates) => super.copyWith((message) => updates(message as BookingResponse)) as BookingResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BookingResponse create() => BookingResponse._();
  BookingResponse createEmptyInstance() => create();
  static $pb.PbList<BookingResponse> createRepeated() => $pb.PbList<BookingResponse>();
  @$core.pragma('dart2js:noInline')
  static BookingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BookingResponse>(create);
  static BookingResponse? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.int get bookingId => $_getIZ(2);
  @$pb.TagNumber(3)
  set bookingId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBookingId() => $_has(2);
  @$pb.TagNumber(3)
  void clearBookingId() => clearField(3);
}

class CreateBookingRequest extends $pb.GeneratedMessage {
  factory CreateBookingRequest({
    $core.int? doctorId,
    $core.int? patientId,
    $core.int? profileId,
    $core.String? date,
    $core.String? timeType,
    $core.String? reason,
    $core.Iterable<$core.String>? photos,
    $core.int? serviceId,
    $core.int? locationId,
    $core.String? paymentMethod,
  }) {
    final $result = create();
    if (doctorId != null) {
      $result.doctorId = doctorId;
    }
    if (patientId != null) {
      $result.patientId = patientId;
    }
    if (profileId != null) {
      $result.profileId = profileId;
    }
    if (date != null) {
      $result.date = date;
    }
    if (timeType != null) {
      $result.timeType = timeType;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (photos != null) {
      $result.photos.addAll(photos);
    }
    if (serviceId != null) {
      $result.serviceId = serviceId;
    }
    if (locationId != null) {
      $result.locationId = locationId;
    }
    if (paymentMethod != null) {
      $result.paymentMethod = paymentMethod;
    }
    return $result;
  }
  CreateBookingRequest._() : super();
  factory CreateBookingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateBookingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateBookingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booking'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'doctorId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'patientId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'profileId', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'date')
    ..aOS(5, _omitFieldNames ? '' : 'timeType')
    ..aOS(6, _omitFieldNames ? '' : 'reason')
    ..pPS(7, _omitFieldNames ? '' : 'photos')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'serviceId', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'locationId', $pb.PbFieldType.O3)
    ..aOS(10, _omitFieldNames ? '' : 'paymentMethod')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateBookingRequest clone() => CreateBookingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateBookingRequest copyWith(void Function(CreateBookingRequest) updates) => super.copyWith((message) => updates(message as CreateBookingRequest)) as CreateBookingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateBookingRequest create() => CreateBookingRequest._();
  CreateBookingRequest createEmptyInstance() => create();
  static $pb.PbList<CreateBookingRequest> createRepeated() => $pb.PbList<CreateBookingRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateBookingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateBookingRequest>(create);
  static CreateBookingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get doctorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set doctorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDoctorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDoctorId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get patientId => $_getIZ(1);
  @$pb.TagNumber(2)
  set patientId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPatientId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPatientId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get profileId => $_getIZ(2);
  @$pb.TagNumber(3)
  set profileId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProfileId() => $_has(2);
  @$pb.TagNumber(3)
  void clearProfileId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get date => $_getSZ(3);
  @$pb.TagNumber(4)
  set date($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get timeType => $_getSZ(4);
  @$pb.TagNumber(5)
  set timeType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimeType() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get reason => $_getSZ(5);
  @$pb.TagNumber(6)
  set reason($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReason() => $_has(5);
  @$pb.TagNumber(6)
  void clearReason() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get photos => $_getList(6);

  @$pb.TagNumber(8)
  $core.int get serviceId => $_getIZ(7);
  @$pb.TagNumber(8)
  set serviceId($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasServiceId() => $_has(7);
  @$pb.TagNumber(8)
  void clearServiceId() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get locationId => $_getIZ(8);
  @$pb.TagNumber(9)
  set locationId($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLocationId() => $_has(8);
  @$pb.TagNumber(9)
  void clearLocationId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get paymentMethod => $_getSZ(9);
  @$pb.TagNumber(10)
  set paymentMethod($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPaymentMethod() => $_has(9);
  @$pb.TagNumber(10)
  void clearPaymentMethod() => clearField(10);
}

class GetHistoryRequest extends $pb.GeneratedMessage {
  factory GetHistoryRequest({
    $core.int? patientId,
  }) {
    final $result = create();
    if (patientId != null) {
      $result.patientId = patientId;
    }
    return $result;
  }
  GetHistoryRequest._() : super();
  factory GetHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetHistoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booking'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'patientId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetHistoryRequest clone() => GetHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetHistoryRequest copyWith(void Function(GetHistoryRequest) updates) => super.copyWith((message) => updates(message as GetHistoryRequest)) as GetHistoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetHistoryRequest create() => GetHistoryRequest._();
  GetHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<GetHistoryRequest> createRepeated() => $pb.PbList<GetHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetHistoryRequest>(create);
  static GetHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get patientId => $_getIZ(0);
  @$pb.TagNumber(1)
  set patientId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPatientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPatientId() => clearField(1);
}

class BookingItem extends $pb.GeneratedMessage {
  factory BookingItem({
    $core.int? id,
    $core.String? doctorName,
    $core.String? date,
    $core.String? timeDisplay,
    $core.String? status,
    $core.String? reason,
    $core.String? patientName,
    $core.String? serviceName,
    $core.double? price,
    $core.String? address,
    $core.String? cancelReason,
    $core.String? paymentMethod,
    $core.int? paymentStatus,
    $core.int? doctorId,
    $core.int? patientId,
    $core.int? clinicId,
    $core.int? serviceId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (doctorName != null) {
      $result.doctorName = doctorName;
    }
    if (date != null) {
      $result.date = date;
    }
    if (timeDisplay != null) {
      $result.timeDisplay = timeDisplay;
    }
    if (status != null) {
      $result.status = status;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (patientName != null) {
      $result.patientName = patientName;
    }
    if (serviceName != null) {
      $result.serviceName = serviceName;
    }
    if (price != null) {
      $result.price = price;
    }
    if (address != null) {
      $result.address = address;
    }
    if (cancelReason != null) {
      $result.cancelReason = cancelReason;
    }
    if (paymentMethod != null) {
      $result.paymentMethod = paymentMethod;
    }
    if (paymentStatus != null) {
      $result.paymentStatus = paymentStatus;
    }
    if (doctorId != null) {
      $result.doctorId = doctorId;
    }
    if (patientId != null) {
      $result.patientId = patientId;
    }
    if (clinicId != null) {
      $result.clinicId = clinicId;
    }
    if (serviceId != null) {
      $result.serviceId = serviceId;
    }
    return $result;
  }
  BookingItem._() : super();
  factory BookingItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BookingItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BookingItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'booking'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'doctorName')
    ..aOS(3, _omitFieldNames ? '' : 'date')
    ..aOS(4, _omitFieldNames ? '' : 'timeDisplay')
    ..aOS(5, _omitFieldNames ? '' : 'status')
    ..aOS(6, _omitFieldNames ? '' : 'reason')
    ..aOS(7, _omitFieldNames ? '' : 'patientName')
    ..aOS(8, _omitFieldNames ? '' : 'serviceName')
    ..a<$core.double>(9, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(10, _omitFieldNames ? '' : 'address')
    ..aOS(11, _omitFieldNames ? '' : 'cancelReason')
    ..aOS(12, _omitFieldNames ? '' : 'paymentMethod')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'paymentStatus', $pb.PbFieldType.O3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'doctorId', $pb.PbFieldType.O3)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'patientId', $pb.PbFieldType.O3)
    ..a<$core.int>(16, _omitFieldNames ? '' : 'clinicId', $pb.PbFieldType.O3)
    ..a<$core.int>(17, _omitFieldNames ? '' : 'serviceId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BookingItem clone() => BookingItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BookingItem copyWith(void Function(BookingItem) updates) => super.copyWith((message) => updates(message as BookingItem)) as BookingItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BookingItem create() => BookingItem._();
  BookingItem createEmptyInstance() => create();
  static $pb.PbList<BookingItem> createRepeated() => $pb.PbList<BookingItem>();
  @$core.pragma('dart2js:noInline')
  static BookingItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BookingItem>(create);
  static BookingItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get doctorName => $_getSZ(1);
  @$pb.TagNumber(2)
  set doctorName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDoctorName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoctorName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get date => $_getSZ(2);
  @$pb.TagNumber(3)
  set date($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get timeDisplay => $_getSZ(3);
  @$pb.TagNumber(4)
  set timeDisplay($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimeDisplay() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimeDisplay() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get status => $_getSZ(4);
  @$pb.TagNumber(5)
  set status($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get reason => $_getSZ(5);
  @$pb.TagNumber(6)
  set reason($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReason() => $_has(5);
  @$pb.TagNumber(6)
  void clearReason() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get patientName => $_getSZ(6);
  @$pb.TagNumber(7)
  set patientName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPatientName() => $_has(6);
  @$pb.TagNumber(7)
  void clearPatientName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get serviceName => $_getSZ(7);
  @$pb.TagNumber(8)
  set serviceName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasServiceName() => $_has(7);
  @$pb.TagNumber(8)
  void clearServiceName() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get price => $_getN(8);
  @$pb.TagNumber(9)
  set price($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPrice() => $_has(8);
  @$pb.TagNumber(9)
  void clearPrice() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get address => $_getSZ(9);
  @$pb.TagNumber(10)
  set address($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAddress() => $_has(9);
  @$pb.TagNumber(10)
  void clearAddress() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get cancelReason => $_getSZ(10);
  @$pb.TagNumber(11)
  set cancelReason($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCancelReason() => $_has(10);
  @$pb.TagNumber(11)
  void clearCancelReason() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get paymentMethod => $_getSZ(11);
  @$pb.TagNumber(12)
  set paymentMethod($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPaymentMethod() => $_has(11);
  @$pb.TagNumber(12)
  void clearPaymentMethod() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get paymentStatus => $_getIZ(12);
  @$pb.TagNumber(13)
  set paymentStatus($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPaymentStatus() => $_has(12);
  @$pb.TagNumber(13)
  void clearPaymentStatus() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get doctorId => $_getIZ(13);
  @$pb.TagNumber(14)
  set doctorId($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasDoctorId() => $_has(13);
  @$pb.TagNumber(14)
  void clearDoctorId() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get patientId => $_getIZ(14);
  @$pb.TagNumber(15)
  set patientId($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPatientId() => $_has(14);
  @$pb.TagNumber(15)
  void clearPatientId() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get clinicId => $_getIZ(15);
  @$pb.TagNumber(16)
  set clinicId($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasClinicId() => $_has(15);
  @$pb.TagNumber(16)
  void clearClinicId() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get serviceId => $_getIZ(16);
  @$pb.TagNumber(17)
  set serviceId($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasServiceId() => $_has(16);
  @$pb.TagNumber(17)
  void clearServiceId() => clearField(17);
}

class HistoryResponse extends $pb.GeneratedMessage {
  factory HistoryResponse({
    $core.bool? success,
    $core.Iterable<BookingItem>? data,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  HistoryResponse._() : super();
  factory HistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'booking'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..pc<BookingItem>(2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: BookingItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryResponse clone() => HistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryResponse copyWith(void Function(HistoryResponse) updates) => super.copyWith((message) => updates(message as HistoryResponse)) as HistoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryResponse create() => HistoryResponse._();
  HistoryResponse createEmptyInstance() => create();
  static $pb.PbList<HistoryResponse> createRepeated() => $pb.PbList<HistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static HistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryResponse>(create);
  static HistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<BookingItem> get data => $_getList(1);
}

class CancelBookingRequest extends $pb.GeneratedMessage {
  factory CancelBookingRequest({
    $core.int? bookingId,
    $core.int? patientId,
    $core.String? reason,
  }) {
    final $result = create();
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    if (patientId != null) {
      $result.patientId = patientId;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    return $result;
  }
  CancelBookingRequest._() : super();
  factory CancelBookingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelBookingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CancelBookingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booking'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'patientId', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelBookingRequest clone() => CancelBookingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelBookingRequest copyWith(void Function(CancelBookingRequest) updates) => super.copyWith((message) => updates(message as CancelBookingRequest)) as CancelBookingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CancelBookingRequest create() => CancelBookingRequest._();
  CancelBookingRequest createEmptyInstance() => create();
  static $pb.PbList<CancelBookingRequest> createRepeated() => $pb.PbList<CancelBookingRequest>();
  @$core.pragma('dart2js:noInline')
  static CancelBookingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelBookingRequest>(create);
  static CancelBookingRequest? _defaultInstance;

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
  $core.String get reason => $_getSZ(2);
  @$pb.TagNumber(3)
  set reason($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReason() => $_has(2);
  @$pb.TagNumber(3)
  void clearReason() => clearField(3);
}

class DeleteBookingRequest extends $pb.GeneratedMessage {
  factory DeleteBookingRequest({
    $core.int? bookingId,
  }) {
    final $result = create();
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    return $result;
  }
  DeleteBookingRequest._() : super();
  factory DeleteBookingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteBookingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteBookingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'booking'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteBookingRequest clone() => DeleteBookingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteBookingRequest copyWith(void Function(DeleteBookingRequest) updates) => super.copyWith((message) => updates(message as DeleteBookingRequest)) as DeleteBookingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteBookingRequest create() => DeleteBookingRequest._();
  DeleteBookingRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteBookingRequest> createRepeated() => $pb.PbList<DeleteBookingRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteBookingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteBookingRequest>(create);
  static DeleteBookingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bookingId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bookingId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBookingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBookingId() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
