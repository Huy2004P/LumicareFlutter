//
//  Generated code. Do not modify.
//  source: treatment.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UserRecordsRequest extends $pb.GeneratedMessage {
  factory UserRecordsRequest({
    $core.int? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  UserRecordsRequest._() : super();
  factory UserRecordsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRecordsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserRecordsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'treatment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRecordsRequest clone() => UserRecordsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRecordsRequest copyWith(void Function(UserRecordsRequest) updates) => super.copyWith((message) => updates(message as UserRecordsRequest)) as UserRecordsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserRecordsRequest create() => UserRecordsRequest._();
  UserRecordsRequest createEmptyInstance() => create();
  static $pb.PbList<UserRecordsRequest> createRepeated() => $pb.PbList<UserRecordsRequest>();
  @$core.pragma('dart2js:noInline')
  static UserRecordsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRecordsRequest>(create);
  static UserRecordsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class UserRecordsResponse extends $pb.GeneratedMessage {
  factory UserRecordsResponse({
    $core.bool? success,
    $core.String? message,
    $core.Iterable<MedicalRecordSummary>? data,
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
  UserRecordsResponse._() : super();
  factory UserRecordsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRecordsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserRecordsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'treatment'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..pc<MedicalRecordSummary>(3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: MedicalRecordSummary.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRecordsResponse clone() => UserRecordsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRecordsResponse copyWith(void Function(UserRecordsResponse) updates) => super.copyWith((message) => updates(message as UserRecordsResponse)) as UserRecordsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserRecordsResponse create() => UserRecordsResponse._();
  UserRecordsResponse createEmptyInstance() => create();
  static $pb.PbList<UserRecordsResponse> createRepeated() => $pb.PbList<UserRecordsResponse>();
  @$core.pragma('dart2js:noInline')
  static UserRecordsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRecordsResponse>(create);
  static UserRecordsResponse? _defaultInstance;

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
  $core.List<MedicalRecordSummary> get data => $_getList(2);
}

class MedicalRecordSummary extends $pb.GeneratedMessage {
  factory MedicalRecordSummary({
    $core.int? bookingId,
    $core.String? examDate,
    $core.String? doctorName,
    $core.String? diagnosis,
    $core.String? specialtyName,
  }) {
    final $result = create();
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    if (examDate != null) {
      $result.examDate = examDate;
    }
    if (doctorName != null) {
      $result.doctorName = doctorName;
    }
    if (diagnosis != null) {
      $result.diagnosis = diagnosis;
    }
    if (specialtyName != null) {
      $result.specialtyName = specialtyName;
    }
    return $result;
  }
  MedicalRecordSummary._() : super();
  factory MedicalRecordSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MedicalRecordSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MedicalRecordSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'treatment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'examDate')
    ..aOS(3, _omitFieldNames ? '' : 'doctorName')
    ..aOS(4, _omitFieldNames ? '' : 'diagnosis')
    ..aOS(5, _omitFieldNames ? '' : 'specialtyName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MedicalRecordSummary clone() => MedicalRecordSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MedicalRecordSummary copyWith(void Function(MedicalRecordSummary) updates) => super.copyWith((message) => updates(message as MedicalRecordSummary)) as MedicalRecordSummary;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MedicalRecordSummary create() => MedicalRecordSummary._();
  MedicalRecordSummary createEmptyInstance() => create();
  static $pb.PbList<MedicalRecordSummary> createRepeated() => $pb.PbList<MedicalRecordSummary>();
  @$core.pragma('dart2js:noInline')
  static MedicalRecordSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MedicalRecordSummary>(create);
  static MedicalRecordSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bookingId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bookingId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBookingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBookingId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get examDate => $_getSZ(1);
  @$pb.TagNumber(2)
  set examDate($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExamDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearExamDate() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get doctorName => $_getSZ(2);
  @$pb.TagNumber(3)
  set doctorName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDoctorName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDoctorName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get diagnosis => $_getSZ(3);
  @$pb.TagNumber(4)
  set diagnosis($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDiagnosis() => $_has(3);
  @$pb.TagNumber(4)
  void clearDiagnosis() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get specialtyName => $_getSZ(4);
  @$pb.TagNumber(5)
  set specialtyName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSpecialtyName() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpecialtyName() => clearField(5);
}

class TreatmentRequest extends $pb.GeneratedMessage {
  factory TreatmentRequest({
    $core.int? bookingId,
  }) {
    final $result = create();
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    return $result;
  }
  TreatmentRequest._() : super();
  factory TreatmentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TreatmentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TreatmentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'treatment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TreatmentRequest clone() => TreatmentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TreatmentRequest copyWith(void Function(TreatmentRequest) updates) => super.copyWith((message) => updates(message as TreatmentRequest)) as TreatmentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TreatmentRequest create() => TreatmentRequest._();
  TreatmentRequest createEmptyInstance() => create();
  static $pb.PbList<TreatmentRequest> createRepeated() => $pb.PbList<TreatmentRequest>();
  @$core.pragma('dart2js:noInline')
  static TreatmentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TreatmentRequest>(create);
  static TreatmentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bookingId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bookingId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBookingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBookingId() => clearField(1);
}

class TreatmentResponse extends $pb.GeneratedMessage {
  factory TreatmentResponse({
    $core.bool? success,
    $core.String? message,
    TreatmentData? data,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  TreatmentResponse._() : super();
  factory TreatmentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TreatmentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TreatmentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'treatment'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOM<TreatmentData>(3, _omitFieldNames ? '' : 'data', subBuilder: TreatmentData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TreatmentResponse clone() => TreatmentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TreatmentResponse copyWith(void Function(TreatmentResponse) updates) => super.copyWith((message) => updates(message as TreatmentResponse)) as TreatmentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TreatmentResponse create() => TreatmentResponse._();
  TreatmentResponse createEmptyInstance() => create();
  static $pb.PbList<TreatmentResponse> createRepeated() => $pb.PbList<TreatmentResponse>();
  @$core.pragma('dart2js:noInline')
  static TreatmentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TreatmentResponse>(create);
  static TreatmentResponse? _defaultInstance;

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
  TreatmentData get data => $_getN(2);
  @$pb.TagNumber(3)
  set data(TreatmentData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
  @$pb.TagNumber(3)
  TreatmentData ensureData() => $_ensure(2);
}

class TreatmentData extends $pb.GeneratedMessage {
  factory TreatmentData({
    $core.String? diagnosis,
    $core.String? symptoms,
    $core.String? treatmentPlan,
    $core.String? reExamDate,
    $core.Iterable<DetailedInstruction>? instructions,
    $core.Iterable<MedicineData>? medicines,
  }) {
    final $result = create();
    if (diagnosis != null) {
      $result.diagnosis = diagnosis;
    }
    if (symptoms != null) {
      $result.symptoms = symptoms;
    }
    if (treatmentPlan != null) {
      $result.treatmentPlan = treatmentPlan;
    }
    if (reExamDate != null) {
      $result.reExamDate = reExamDate;
    }
    if (instructions != null) {
      $result.instructions.addAll(instructions);
    }
    if (medicines != null) {
      $result.medicines.addAll(medicines);
    }
    return $result;
  }
  TreatmentData._() : super();
  factory TreatmentData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TreatmentData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TreatmentData', package: const $pb.PackageName(_omitMessageNames ? '' : 'treatment'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'diagnosis')
    ..aOS(2, _omitFieldNames ? '' : 'symptoms')
    ..aOS(3, _omitFieldNames ? '' : 'treatmentPlan')
    ..aOS(4, _omitFieldNames ? '' : 'reExamDate')
    ..pc<DetailedInstruction>(5, _omitFieldNames ? '' : 'instructions', $pb.PbFieldType.PM, subBuilder: DetailedInstruction.create)
    ..pc<MedicineData>(6, _omitFieldNames ? '' : 'medicines', $pb.PbFieldType.PM, subBuilder: MedicineData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TreatmentData clone() => TreatmentData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TreatmentData copyWith(void Function(TreatmentData) updates) => super.copyWith((message) => updates(message as TreatmentData)) as TreatmentData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TreatmentData create() => TreatmentData._();
  TreatmentData createEmptyInstance() => create();
  static $pb.PbList<TreatmentData> createRepeated() => $pb.PbList<TreatmentData>();
  @$core.pragma('dart2js:noInline')
  static TreatmentData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TreatmentData>(create);
  static TreatmentData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get diagnosis => $_getSZ(0);
  @$pb.TagNumber(1)
  set diagnosis($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDiagnosis() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiagnosis() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symptoms => $_getSZ(1);
  @$pb.TagNumber(2)
  set symptoms($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymptoms() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymptoms() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get treatmentPlan => $_getSZ(2);
  @$pb.TagNumber(3)
  set treatmentPlan($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTreatmentPlan() => $_has(2);
  @$pb.TagNumber(3)
  void clearTreatmentPlan() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get reExamDate => $_getSZ(3);
  @$pb.TagNumber(4)
  set reExamDate($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReExamDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearReExamDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<DetailedInstruction> get instructions => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<MedicineData> get medicines => $_getList(5);
}

class DetailedInstruction extends $pb.GeneratedMessage {
  factory DetailedInstruction({
    $core.String? name,
    $core.String? times,
    $core.String? instruction,
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
    return $result;
  }
  DetailedInstruction._() : super();
  factory DetailedInstruction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DetailedInstruction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DetailedInstruction', package: const $pb.PackageName(_omitMessageNames ? '' : 'treatment'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'times')
    ..aOS(3, _omitFieldNames ? '' : 'instruction')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DetailedInstruction clone() => DetailedInstruction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DetailedInstruction copyWith(void Function(DetailedInstruction) updates) => super.copyWith((message) => updates(message as DetailedInstruction)) as DetailedInstruction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DetailedInstruction create() => DetailedInstruction._();
  DetailedInstruction createEmptyInstance() => create();
  static $pb.PbList<DetailedInstruction> createRepeated() => $pb.PbList<DetailedInstruction>();
  @$core.pragma('dart2js:noInline')
  static DetailedInstruction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DetailedInstruction>(create);
  static DetailedInstruction? _defaultInstance;

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
}

class MedicineData extends $pb.GeneratedMessage {
  factory MedicineData({
    $core.String? medicineName,
    $core.int? quantity,
    $core.String? instruction,
  }) {
    final $result = create();
    if (medicineName != null) {
      $result.medicineName = medicineName;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (instruction != null) {
      $result.instruction = instruction;
    }
    return $result;
  }
  MedicineData._() : super();
  factory MedicineData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MedicineData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MedicineData', package: const $pb.PackageName(_omitMessageNames ? '' : 'treatment'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'medicineName')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'instruction')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MedicineData clone() => MedicineData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MedicineData copyWith(void Function(MedicineData) updates) => super.copyWith((message) => updates(message as MedicineData)) as MedicineData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MedicineData create() => MedicineData._();
  MedicineData createEmptyInstance() => create();
  static $pb.PbList<MedicineData> createRepeated() => $pb.PbList<MedicineData>();
  @$core.pragma('dart2js:noInline')
  static MedicineData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MedicineData>(create);
  static MedicineData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get medicineName => $_getSZ(0);
  @$pb.TagNumber(1)
  set medicineName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMedicineName() => $_has(0);
  @$pb.TagNumber(1)
  void clearMedicineName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get quantity => $_getIZ(1);
  @$pb.TagNumber(2)
  set quantity($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuantity() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuantity() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get instruction => $_getSZ(2);
  @$pb.TagNumber(3)
  set instruction($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInstruction() => $_has(2);
  @$pb.TagNumber(3)
  void clearInstruction() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
