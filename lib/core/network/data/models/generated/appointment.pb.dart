//
//  Generated code. Do not modify.
//  source: appointment.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// --- Request cho việc lấy lịch sử ---
class GetMedicalHistoryRequest extends $pb.GeneratedMessage {
  factory GetMedicalHistoryRequest({
    $core.int? patientId,
    $core.int? doctorId,
    $core.String? keyword,
  }) {
    final $result = create();
    if (patientId != null) {
      $result.patientId = patientId;
    }
    if (doctorId != null) {
      $result.doctorId = doctorId;
    }
    if (keyword != null) {
      $result.keyword = keyword;
    }
    return $result;
  }
  GetMedicalHistoryRequest._() : super();
  factory GetMedicalHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMedicalHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMedicalHistoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'appointment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'patientId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'doctorId', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'keyword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMedicalHistoryRequest clone() => GetMedicalHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMedicalHistoryRequest copyWith(void Function(GetMedicalHistoryRequest) updates) => super.copyWith((message) => updates(message as GetMedicalHistoryRequest)) as GetMedicalHistoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMedicalHistoryRequest create() => GetMedicalHistoryRequest._();
  GetMedicalHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<GetMedicalHistoryRequest> createRepeated() => $pb.PbList<GetMedicalHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMedicalHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMedicalHistoryRequest>(create);
  static GetMedicalHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get patientId => $_getIZ(0);
  @$pb.TagNumber(1)
  set patientId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPatientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPatientId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get doctorId => $_getIZ(1);
  @$pb.TagNumber(2)
  set doctorId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDoctorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoctorId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get keyword => $_getSZ(2);
  @$pb.TagNumber(3)
  set keyword($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKeyword() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyword() => clearField(3);
}

/// --- Cấu trúc một bản ghi bệnh án hoàn chỉnh để hiển thị ---
class MedicalRecordItem extends $pb.GeneratedMessage {
  factory MedicalRecordItem({
    $core.int? recordId,
    $core.int? bookingId,
    $core.int? patientId,
    $core.String? patientName,
    $core.String? doctorName,
    $core.String? date,
    $core.String? symptoms,
    $core.String? diagnosis,
    $core.String? treatmentPlan,
    $core.Iterable<MedicineItem>? medicines,
    $core.Iterable<TreatmentItem>? treatments,
    $core.String? reExamDate,
  }) {
    final $result = create();
    if (recordId != null) {
      $result.recordId = recordId;
    }
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    if (patientId != null) {
      $result.patientId = patientId;
    }
    if (patientName != null) {
      $result.patientName = patientName;
    }
    if (doctorName != null) {
      $result.doctorName = doctorName;
    }
    if (date != null) {
      $result.date = date;
    }
    if (symptoms != null) {
      $result.symptoms = symptoms;
    }
    if (diagnosis != null) {
      $result.diagnosis = diagnosis;
    }
    if (treatmentPlan != null) {
      $result.treatmentPlan = treatmentPlan;
    }
    if (medicines != null) {
      $result.medicines.addAll(medicines);
    }
    if (treatments != null) {
      $result.treatments.addAll(treatments);
    }
    if (reExamDate != null) {
      $result.reExamDate = reExamDate;
    }
    return $result;
  }
  MedicalRecordItem._() : super();
  factory MedicalRecordItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MedicalRecordItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MedicalRecordItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'appointment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'recordId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'patientId', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'patientName')
    ..aOS(5, _omitFieldNames ? '' : 'doctorName')
    ..aOS(6, _omitFieldNames ? '' : 'date')
    ..aOS(7, _omitFieldNames ? '' : 'symptoms')
    ..aOS(8, _omitFieldNames ? '' : 'diagnosis')
    ..aOS(9, _omitFieldNames ? '' : 'treatmentPlan')
    ..pc<MedicineItem>(10, _omitFieldNames ? '' : 'medicines', $pb.PbFieldType.PM, subBuilder: MedicineItem.create)
    ..pc<TreatmentItem>(11, _omitFieldNames ? '' : 'treatments', $pb.PbFieldType.PM, subBuilder: TreatmentItem.create)
    ..aOS(12, _omitFieldNames ? '' : 'reExamDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MedicalRecordItem clone() => MedicalRecordItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MedicalRecordItem copyWith(void Function(MedicalRecordItem) updates) => super.copyWith((message) => updates(message as MedicalRecordItem)) as MedicalRecordItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MedicalRecordItem create() => MedicalRecordItem._();
  MedicalRecordItem createEmptyInstance() => create();
  static $pb.PbList<MedicalRecordItem> createRepeated() => $pb.PbList<MedicalRecordItem>();
  @$core.pragma('dart2js:noInline')
  static MedicalRecordItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MedicalRecordItem>(create);
  static MedicalRecordItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get recordId => $_getIZ(0);
  @$pb.TagNumber(1)
  set recordId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecordId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecordId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get bookingId => $_getIZ(1);
  @$pb.TagNumber(2)
  set bookingId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBookingId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBookingId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get patientId => $_getIZ(2);
  @$pb.TagNumber(3)
  set patientId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPatientId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPatientId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get patientName => $_getSZ(3);
  @$pb.TagNumber(4)
  set patientName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPatientName() => $_has(3);
  @$pb.TagNumber(4)
  void clearPatientName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get doctorName => $_getSZ(4);
  @$pb.TagNumber(5)
  set doctorName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDoctorName() => $_has(4);
  @$pb.TagNumber(5)
  void clearDoctorName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get date => $_getSZ(5);
  @$pb.TagNumber(6)
  set date($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get symptoms => $_getSZ(6);
  @$pb.TagNumber(7)
  set symptoms($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSymptoms() => $_has(6);
  @$pb.TagNumber(7)
  void clearSymptoms() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get diagnosis => $_getSZ(7);
  @$pb.TagNumber(8)
  set diagnosis($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDiagnosis() => $_has(7);
  @$pb.TagNumber(8)
  void clearDiagnosis() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get treatmentPlan => $_getSZ(8);
  @$pb.TagNumber(9)
  set treatmentPlan($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTreatmentPlan() => $_has(8);
  @$pb.TagNumber(9)
  void clearTreatmentPlan() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<MedicineItem> get medicines => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<TreatmentItem> get treatments => $_getList(10);

  @$pb.TagNumber(12)
  $core.String get reExamDate => $_getSZ(11);
  @$pb.TagNumber(12)
  set reExamDate($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasReExamDate() => $_has(11);
  @$pb.TagNumber(12)
  void clearReExamDate() => clearField(12);
}

class MedicalHistoryResponse extends $pb.GeneratedMessage {
  factory MedicalHistoryResponse({
    $core.bool? success,
    $core.String? message,
    $core.Iterable<MedicalRecordItem>? data,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  MedicalHistoryResponse._() : super();
  factory MedicalHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MedicalHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MedicalHistoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'appointment'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..pc<MedicalRecordItem>(3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: MedicalRecordItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MedicalHistoryResponse clone() => MedicalHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MedicalHistoryResponse copyWith(void Function(MedicalHistoryResponse) updates) => super.copyWith((message) => updates(message as MedicalHistoryResponse)) as MedicalHistoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MedicalHistoryResponse create() => MedicalHistoryResponse._();
  MedicalHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<MedicalHistoryResponse> createRepeated() => $pb.PbList<MedicalHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static MedicalHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MedicalHistoryResponse>(create);
  static MedicalHistoryResponse? _defaultInstance;

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
  $core.List<MedicalRecordItem> get data => $_getList(2);
}

class GetListPatientRequest extends $pb.GeneratedMessage {
  factory GetListPatientRequest({
    $core.int? doctorId,
    $core.String? date,
  }) {
    final $result = create();
    if (doctorId != null) {
      $result.doctorId = doctorId;
    }
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  GetListPatientRequest._() : super();
  factory GetListPatientRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetListPatientRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetListPatientRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'appointment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'doctorId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetListPatientRequest clone() => GetListPatientRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetListPatientRequest copyWith(void Function(GetListPatientRequest) updates) => super.copyWith((message) => updates(message as GetListPatientRequest)) as GetListPatientRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetListPatientRequest create() => GetListPatientRequest._();
  GetListPatientRequest createEmptyInstance() => create();
  static $pb.PbList<GetListPatientRequest> createRepeated() => $pb.PbList<GetListPatientRequest>();
  @$core.pragma('dart2js:noInline')
  static GetListPatientRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetListPatientRequest>(create);
  static GetListPatientRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get doctorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set doctorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDoctorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDoctorId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get date => $_getSZ(1);
  @$pb.TagNumber(2)
  set date($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);
}

class PatientBookingItem extends $pb.GeneratedMessage {
  factory PatientBookingItem({
    $core.int? bookingId,
    $core.int? patientId,
    $core.String? patientName,
    $core.String? phoneNumber,
    $core.String? timeType,
    $core.String? timeDisplay,
    $core.String? reason,
    $core.String? status,
    $core.String? gender,
    $core.String? birthday,
    $core.String? address,
  }) {
    final $result = create();
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    if (patientId != null) {
      $result.patientId = patientId;
    }
    if (patientName != null) {
      $result.patientName = patientName;
    }
    if (phoneNumber != null) {
      $result.phoneNumber = phoneNumber;
    }
    if (timeType != null) {
      $result.timeType = timeType;
    }
    if (timeDisplay != null) {
      $result.timeDisplay = timeDisplay;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (status != null) {
      $result.status = status;
    }
    if (gender != null) {
      $result.gender = gender;
    }
    if (birthday != null) {
      $result.birthday = birthday;
    }
    if (address != null) {
      $result.address = address;
    }
    return $result;
  }
  PatientBookingItem._() : super();
  factory PatientBookingItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PatientBookingItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PatientBookingItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'appointment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'patientId', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'patientName')
    ..aOS(4, _omitFieldNames ? '' : 'phoneNumber')
    ..aOS(5, _omitFieldNames ? '' : 'timeType')
    ..aOS(6, _omitFieldNames ? '' : 'timeDisplay')
    ..aOS(7, _omitFieldNames ? '' : 'reason')
    ..aOS(8, _omitFieldNames ? '' : 'status')
    ..aOS(9, _omitFieldNames ? '' : 'gender')
    ..aOS(10, _omitFieldNames ? '' : 'birthday')
    ..aOS(11, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PatientBookingItem clone() => PatientBookingItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PatientBookingItem copyWith(void Function(PatientBookingItem) updates) => super.copyWith((message) => updates(message as PatientBookingItem)) as PatientBookingItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatientBookingItem create() => PatientBookingItem._();
  PatientBookingItem createEmptyInstance() => create();
  static $pb.PbList<PatientBookingItem> createRepeated() => $pb.PbList<PatientBookingItem>();
  @$core.pragma('dart2js:noInline')
  static PatientBookingItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PatientBookingItem>(create);
  static PatientBookingItem? _defaultInstance;

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
  $core.String get patientName => $_getSZ(2);
  @$pb.TagNumber(3)
  set patientName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPatientName() => $_has(2);
  @$pb.TagNumber(3)
  void clearPatientName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phoneNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set phoneNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhoneNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhoneNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get timeType => $_getSZ(4);
  @$pb.TagNumber(5)
  set timeType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimeType() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get timeDisplay => $_getSZ(5);
  @$pb.TagNumber(6)
  set timeDisplay($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimeDisplay() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimeDisplay() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get reason => $_getSZ(6);
  @$pb.TagNumber(7)
  set reason($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasReason() => $_has(6);
  @$pb.TagNumber(7)
  void clearReason() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get status => $_getSZ(7);
  @$pb.TagNumber(8)
  set status($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatus() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get gender => $_getSZ(8);
  @$pb.TagNumber(9)
  set gender($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasGender() => $_has(8);
  @$pb.TagNumber(9)
  void clearGender() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get birthday => $_getSZ(9);
  @$pb.TagNumber(10)
  set birthday($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBirthday() => $_has(9);
  @$pb.TagNumber(10)
  void clearBirthday() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get address => $_getSZ(10);
  @$pb.TagNumber(11)
  set address($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAddress() => $_has(10);
  @$pb.TagNumber(11)
  void clearAddress() => clearField(11);
}

class ListPatientResponse extends $pb.GeneratedMessage {
  factory ListPatientResponse({
    $core.bool? success,
    $core.String? message,
    $core.Iterable<PatientBookingItem>? data,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  ListPatientResponse._() : super();
  factory ListPatientResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPatientResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPatientResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'appointment'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..pc<PatientBookingItem>(3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: PatientBookingItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPatientResponse clone() => ListPatientResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPatientResponse copyWith(void Function(ListPatientResponse) updates) => super.copyWith((message) => updates(message as ListPatientResponse)) as ListPatientResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPatientResponse create() => ListPatientResponse._();
  ListPatientResponse createEmptyInstance() => create();
  static $pb.PbList<ListPatientResponse> createRepeated() => $pb.PbList<ListPatientResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPatientResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPatientResponse>(create);
  static ListPatientResponse? _defaultInstance;

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
  $core.List<PatientBookingItem> get data => $_getList(2);
}

class VerifyBookingRequest extends $pb.GeneratedMessage {
  factory VerifyBookingRequest({
    $core.int? doctorId,
    $core.int? bookingId,
    $core.String? status,
  }) {
    final $result = create();
    if (doctorId != null) {
      $result.doctorId = doctorId;
    }
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  VerifyBookingRequest._() : super();
  factory VerifyBookingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyBookingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyBookingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'appointment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'doctorId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyBookingRequest clone() => VerifyBookingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyBookingRequest copyWith(void Function(VerifyBookingRequest) updates) => super.copyWith((message) => updates(message as VerifyBookingRequest)) as VerifyBookingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyBookingRequest create() => VerifyBookingRequest._();
  VerifyBookingRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyBookingRequest> createRepeated() => $pb.PbList<VerifyBookingRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyBookingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyBookingRequest>(create);
  static VerifyBookingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get doctorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set doctorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDoctorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDoctorId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get bookingId => $_getIZ(1);
  @$pb.TagNumber(2)
  set bookingId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBookingId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBookingId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get status => $_getSZ(2);
  @$pb.TagNumber(3)
  set status($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
}

class VerifyResponse extends $pb.GeneratedMessage {
  factory VerifyResponse({
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
  VerifyResponse._() : super();
  factory VerifyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'appointment'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyResponse clone() => VerifyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyResponse copyWith(void Function(VerifyResponse) updates) => super.copyWith((message) => updates(message as VerifyResponse)) as VerifyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyResponse create() => VerifyResponse._();
  VerifyResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyResponse> createRepeated() => $pb.PbList<VerifyResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyResponse>(create);
  static VerifyResponse? _defaultInstance;

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

class MedicineItem extends $pb.GeneratedMessage {
  factory MedicineItem({
    $core.int? drugId,
    $core.String? drugName,
    $core.int? quantity,
    $core.String? instruction,
  }) {
    final $result = create();
    if (drugId != null) {
      $result.drugId = drugId;
    }
    if (drugName != null) {
      $result.drugName = drugName;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (instruction != null) {
      $result.instruction = instruction;
    }
    return $result;
  }
  MedicineItem._() : super();
  factory MedicineItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MedicineItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MedicineItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'appointment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'drugId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'drugName')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'instruction')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MedicineItem clone() => MedicineItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MedicineItem copyWith(void Function(MedicineItem) updates) => super.copyWith((message) => updates(message as MedicineItem)) as MedicineItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MedicineItem create() => MedicineItem._();
  MedicineItem createEmptyInstance() => create();
  static $pb.PbList<MedicineItem> createRepeated() => $pb.PbList<MedicineItem>();
  @$core.pragma('dart2js:noInline')
  static MedicineItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MedicineItem>(create);
  static MedicineItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get drugId => $_getIZ(0);
  @$pb.TagNumber(1)
  set drugId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDrugId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDrugId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get drugName => $_getSZ(1);
  @$pb.TagNumber(2)
  set drugName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDrugName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDrugName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get quantity => $_getIZ(2);
  @$pb.TagNumber(3)
  set quantity($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get instruction => $_getSZ(3);
  @$pb.TagNumber(4)
  set instruction($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInstruction() => $_has(3);
  @$pb.TagNumber(4)
  void clearInstruction() => clearField(4);
}

class FinishAppointmentRequest extends $pb.GeneratedMessage {
  factory FinishAppointmentRequest({
    $core.int? doctorId,
    $core.int? bookingId,
    $core.String? reason,
    $core.String? symptoms,
    $core.String? diagnosis,
    $core.String? treatmentPlan,
    $core.Iterable<MedicineItem>? medicines,
    $core.Iterable<TreatmentItem>? treatments,
    $core.String? reExamDate,
  }) {
    final $result = create();
    if (doctorId != null) {
      $result.doctorId = doctorId;
    }
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (symptoms != null) {
      $result.symptoms = symptoms;
    }
    if (diagnosis != null) {
      $result.diagnosis = diagnosis;
    }
    if (treatmentPlan != null) {
      $result.treatmentPlan = treatmentPlan;
    }
    if (medicines != null) {
      $result.medicines.addAll(medicines);
    }
    if (treatments != null) {
      $result.treatments.addAll(treatments);
    }
    if (reExamDate != null) {
      $result.reExamDate = reExamDate;
    }
    return $result;
  }
  FinishAppointmentRequest._() : super();
  factory FinishAppointmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FinishAppointmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FinishAppointmentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'appointment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'doctorId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'reason')
    ..aOS(4, _omitFieldNames ? '' : 'symptoms')
    ..aOS(5, _omitFieldNames ? '' : 'diagnosis')
    ..aOS(6, _omitFieldNames ? '' : 'treatmentPlan')
    ..pc<MedicineItem>(7, _omitFieldNames ? '' : 'medicines', $pb.PbFieldType.PM, subBuilder: MedicineItem.create)
    ..pc<TreatmentItem>(8, _omitFieldNames ? '' : 'treatments', $pb.PbFieldType.PM, subBuilder: TreatmentItem.create)
    ..aOS(9, _omitFieldNames ? '' : 'reExamDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FinishAppointmentRequest clone() => FinishAppointmentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FinishAppointmentRequest copyWith(void Function(FinishAppointmentRequest) updates) => super.copyWith((message) => updates(message as FinishAppointmentRequest)) as FinishAppointmentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FinishAppointmentRequest create() => FinishAppointmentRequest._();
  FinishAppointmentRequest createEmptyInstance() => create();
  static $pb.PbList<FinishAppointmentRequest> createRepeated() => $pb.PbList<FinishAppointmentRequest>();
  @$core.pragma('dart2js:noInline')
  static FinishAppointmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FinishAppointmentRequest>(create);
  static FinishAppointmentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get doctorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set doctorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDoctorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDoctorId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get bookingId => $_getIZ(1);
  @$pb.TagNumber(2)
  set bookingId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBookingId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBookingId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get reason => $_getSZ(2);
  @$pb.TagNumber(3)
  set reason($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReason() => $_has(2);
  @$pb.TagNumber(3)
  void clearReason() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get symptoms => $_getSZ(3);
  @$pb.TagNumber(4)
  set symptoms($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSymptoms() => $_has(3);
  @$pb.TagNumber(4)
  void clearSymptoms() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get diagnosis => $_getSZ(4);
  @$pb.TagNumber(5)
  set diagnosis($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDiagnosis() => $_has(4);
  @$pb.TagNumber(5)
  void clearDiagnosis() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get treatmentPlan => $_getSZ(5);
  @$pb.TagNumber(6)
  set treatmentPlan($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTreatmentPlan() => $_has(5);
  @$pb.TagNumber(6)
  void clearTreatmentPlan() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<MedicineItem> get medicines => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<TreatmentItem> get treatments => $_getList(7);

  @$pb.TagNumber(9)
  $core.String get reExamDate => $_getSZ(8);
  @$pb.TagNumber(9)
  set reExamDate($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasReExamDate() => $_has(8);
  @$pb.TagNumber(9)
  void clearReExamDate() => clearField(9);
}

class TreatmentItem extends $pb.GeneratedMessage {
  factory TreatmentItem({
    $core.String? name,
    $core.String? times,
    $core.String? instruction,
    $core.String? repeatDays,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (times != null) {
      $result.times = times;
    }
    if (instruction != null) {
      $result.instruction = instruction;
    }
    if (repeatDays != null) {
      $result.repeatDays = repeatDays;
    }
    return $result;
  }
  TreatmentItem._() : super();
  factory TreatmentItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TreatmentItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TreatmentItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'appointment'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'times')
    ..aOS(3, _omitFieldNames ? '' : 'instruction')
    ..aOS(4, _omitFieldNames ? '' : 'repeatDays')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TreatmentItem clone() => TreatmentItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TreatmentItem copyWith(void Function(TreatmentItem) updates) => super.copyWith((message) => updates(message as TreatmentItem)) as TreatmentItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TreatmentItem create() => TreatmentItem._();
  TreatmentItem createEmptyInstance() => create();
  static $pb.PbList<TreatmentItem> createRepeated() => $pb.PbList<TreatmentItem>();
  @$core.pragma('dart2js:noInline')
  static TreatmentItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TreatmentItem>(create);
  static TreatmentItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get times => $_getSZ(1);
  @$pb.TagNumber(2)
  set times($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimes() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimes() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get instruction => $_getSZ(2);
  @$pb.TagNumber(3)
  set instruction($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInstruction() => $_has(2);
  @$pb.TagNumber(3)
  void clearInstruction() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get repeatDays => $_getSZ(3);
  @$pb.TagNumber(4)
  set repeatDays($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRepeatDays() => $_has(3);
  @$pb.TagNumber(4)
  void clearRepeatDays() => clearField(4);
}

class FinishResponse extends $pb.GeneratedMessage {
  factory FinishResponse({
    $core.bool? success,
    $core.String? message,
    $core.int? recordId,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    if (recordId != null) {
      $result.recordId = recordId;
    }
    return $result;
  }
  FinishResponse._() : super();
  factory FinishResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FinishResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FinishResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'appointment'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'recordId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FinishResponse clone() => FinishResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FinishResponse copyWith(void Function(FinishResponse) updates) => super.copyWith((message) => updates(message as FinishResponse)) as FinishResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FinishResponse create() => FinishResponse._();
  FinishResponse createEmptyInstance() => create();
  static $pb.PbList<FinishResponse> createRepeated() => $pb.PbList<FinishResponse>();
  @$core.pragma('dart2js:noInline')
  static FinishResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FinishResponse>(create);
  static FinishResponse? _defaultInstance;

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
  $core.int get recordId => $_getIZ(2);
  @$pb.TagNumber(3)
  set recordId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRecordId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecordId() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
