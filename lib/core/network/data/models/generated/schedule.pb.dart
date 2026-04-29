//
//  Generated code. Do not modify.
//  source: schedule.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ScheduleResponse extends $pb.GeneratedMessage {
  factory ScheduleResponse({
    $core.bool? success,
    $core.String? message,
    $core.Iterable<$core.String>? conflictTimes,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    if (conflictTimes != null) {
      $result.conflictTimes.addAll(conflictTimes);
    }
    return $result;
  }
  ScheduleResponse._() : super();
  factory ScheduleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScheduleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScheduleResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'schedule'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..pPS(3, _omitFieldNames ? '' : 'conflictTimes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScheduleResponse clone() => ScheduleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScheduleResponse copyWith(void Function(ScheduleResponse) updates) => super.copyWith((message) => updates(message as ScheduleResponse)) as ScheduleResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleResponse create() => ScheduleResponse._();
  ScheduleResponse createEmptyInstance() => create();
  static $pb.PbList<ScheduleResponse> createRepeated() => $pb.PbList<ScheduleResponse>();
  @$core.pragma('dart2js:noInline')
  static ScheduleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScheduleResponse>(create);
  static ScheduleResponse? _defaultInstance;

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

  /// Danh sách các mã giờ (T1, T2...) bị xung đột (đã có người đặt nên không thể xóa/đổi)
  @$pb.TagNumber(3)
  $core.List<$core.String> get conflictTimes => $_getList(2);
}

class BulkCreateScheduleRequest extends $pb.GeneratedMessage {
  factory BulkCreateScheduleRequest({
    $core.int? doctorId,
    $core.String? date,
    $core.Iterable<$core.String>? timeTypes,
    $core.int? maxBooking,
  }) {
    final $result = create();
    if (doctorId != null) {
      $result.doctorId = doctorId;
    }
    if (date != null) {
      $result.date = date;
    }
    if (timeTypes != null) {
      $result.timeTypes.addAll(timeTypes);
    }
    if (maxBooking != null) {
      $result.maxBooking = maxBooking;
    }
    return $result;
  }
  BulkCreateScheduleRequest._() : super();
  factory BulkCreateScheduleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BulkCreateScheduleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BulkCreateScheduleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'schedule'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'doctorId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'date')
    ..pPS(3, _omitFieldNames ? '' : 'timeTypes')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'maxBooking', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BulkCreateScheduleRequest clone() => BulkCreateScheduleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BulkCreateScheduleRequest copyWith(void Function(BulkCreateScheduleRequest) updates) => super.copyWith((message) => updates(message as BulkCreateScheduleRequest)) as BulkCreateScheduleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BulkCreateScheduleRequest create() => BulkCreateScheduleRequest._();
  BulkCreateScheduleRequest createEmptyInstance() => create();
  static $pb.PbList<BulkCreateScheduleRequest> createRepeated() => $pb.PbList<BulkCreateScheduleRequest>();
  @$core.pragma('dart2js:noInline')
  static BulkCreateScheduleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BulkCreateScheduleRequest>(create);
  static BulkCreateScheduleRequest? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.List<$core.String> get timeTypes => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get maxBooking => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxBooking($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxBooking() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxBooking() => clearField(4);
}

class GetScheduleRequest extends $pb.GeneratedMessage {
  factory GetScheduleRequest({
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
  GetScheduleRequest._() : super();
  factory GetScheduleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetScheduleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetScheduleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'schedule'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'doctorId', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetScheduleRequest clone() => GetScheduleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetScheduleRequest copyWith(void Function(GetScheduleRequest) updates) => super.copyWith((message) => updates(message as GetScheduleRequest)) as GetScheduleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetScheduleRequest create() => GetScheduleRequest._();
  GetScheduleRequest createEmptyInstance() => create();
  static $pb.PbList<GetScheduleRequest> createRepeated() => $pb.PbList<GetScheduleRequest>();
  @$core.pragma('dart2js:noInline')
  static GetScheduleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetScheduleRequest>(create);
  static GetScheduleRequest? _defaultInstance;

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

class ScheduleItem extends $pb.GeneratedMessage {
  factory ScheduleItem({
    $core.int? id,
    $core.String? timeType,
    $core.String? timeDisplay,
    $core.int? maxBooking,
    $core.int? currentBooking,
    $core.bool? isAvailable,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (timeType != null) {
      $result.timeType = timeType;
    }
    if (timeDisplay != null) {
      $result.timeDisplay = timeDisplay;
    }
    if (maxBooking != null) {
      $result.maxBooking = maxBooking;
    }
    if (currentBooking != null) {
      $result.currentBooking = currentBooking;
    }
    if (isAvailable != null) {
      $result.isAvailable = isAvailable;
    }
    return $result;
  }
  ScheduleItem._() : super();
  factory ScheduleItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScheduleItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScheduleItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'schedule'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'timeType')
    ..aOS(3, _omitFieldNames ? '' : 'timeDisplay')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'maxBooking', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'currentBooking', $pb.PbFieldType.O3)
    ..aOB(6, _omitFieldNames ? '' : 'isAvailable')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScheduleItem clone() => ScheduleItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScheduleItem copyWith(void Function(ScheduleItem) updates) => super.copyWith((message) => updates(message as ScheduleItem)) as ScheduleItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleItem create() => ScheduleItem._();
  ScheduleItem createEmptyInstance() => create();
  static $pb.PbList<ScheduleItem> createRepeated() => $pb.PbList<ScheduleItem>();
  @$core.pragma('dart2js:noInline')
  static ScheduleItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScheduleItem>(create);
  static ScheduleItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get timeType => $_getSZ(1);
  @$pb.TagNumber(2)
  set timeType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimeType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get timeDisplay => $_getSZ(2);
  @$pb.TagNumber(3)
  set timeDisplay($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimeDisplay() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeDisplay() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxBooking => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxBooking($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxBooking() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxBooking() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get currentBooking => $_getIZ(4);
  @$pb.TagNumber(5)
  set currentBooking($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrentBooking() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrentBooking() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isAvailable => $_getBF(5);
  @$pb.TagNumber(6)
  set isAvailable($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsAvailable() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsAvailable() => clearField(6);
}

class GetScheduleListResponse extends $pb.GeneratedMessage {
  factory GetScheduleListResponse({
    $core.bool? success,
    $core.Iterable<ScheduleItem>? data,
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
  GetScheduleListResponse._() : super();
  factory GetScheduleListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetScheduleListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetScheduleListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'schedule'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..pc<ScheduleItem>(2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: ScheduleItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetScheduleListResponse clone() => GetScheduleListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetScheduleListResponse copyWith(void Function(GetScheduleListResponse) updates) => super.copyWith((message) => updates(message as GetScheduleListResponse)) as GetScheduleListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetScheduleListResponse create() => GetScheduleListResponse._();
  GetScheduleListResponse createEmptyInstance() => create();
  static $pb.PbList<GetScheduleListResponse> createRepeated() => $pb.PbList<GetScheduleListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetScheduleListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetScheduleListResponse>(create);
  static GetScheduleListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ScheduleItem> get data => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
