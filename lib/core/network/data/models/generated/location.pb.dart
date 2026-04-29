//
//  Generated code. Do not modify.
//  source: location.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class LocationMessage extends $pb.GeneratedMessage {
  factory LocationMessage({
    $core.int? id,
    $core.int? userId,
    $core.String? label,
    $core.String? addressDetail,
    $core.String? province,
    $core.String? district,
    $core.String? ward,
    $core.double? latitude,
    $core.double? longitude,
    $core.bool? isDefault,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (userId != null) {
      $result.userId = userId;
    }
    if (label != null) {
      $result.label = label;
    }
    if (addressDetail != null) {
      $result.addressDetail = addressDetail;
    }
    if (province != null) {
      $result.province = province;
    }
    if (district != null) {
      $result.district = district;
    }
    if (ward != null) {
      $result.ward = ward;
    }
    if (latitude != null) {
      $result.latitude = latitude;
    }
    if (longitude != null) {
      $result.longitude = longitude;
    }
    if (isDefault != null) {
      $result.isDefault = isDefault;
    }
    return $result;
  }
  LocationMessage._() : super();
  factory LocationMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocationMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'location'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'label')
    ..aOS(4, _omitFieldNames ? '' : 'addressDetail')
    ..aOS(5, _omitFieldNames ? '' : 'province')
    ..aOS(6, _omitFieldNames ? '' : 'district')
    ..aOS(7, _omitFieldNames ? '' : 'ward')
    ..a<$core.double>(8, _omitFieldNames ? '' : 'latitude', $pb.PbFieldType.OD)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'longitude', $pb.PbFieldType.OD)
    ..aOB(10, _omitFieldNames ? '' : 'isDefault')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationMessage clone() => LocationMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationMessage copyWith(void Function(LocationMessage) updates) => super.copyWith((message) => updates(message as LocationMessage)) as LocationMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationMessage create() => LocationMessage._();
  LocationMessage createEmptyInstance() => create();
  static $pb.PbList<LocationMessage> createRepeated() => $pb.PbList<LocationMessage>();
  @$core.pragma('dart2js:noInline')
  static LocationMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationMessage>(create);
  static LocationMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get label => $_getSZ(2);
  @$pb.TagNumber(3)
  set label($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLabel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabel() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get addressDetail => $_getSZ(3);
  @$pb.TagNumber(4)
  set addressDetail($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAddressDetail() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddressDetail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get province => $_getSZ(4);
  @$pb.TagNumber(5)
  set province($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasProvince() => $_has(4);
  @$pb.TagNumber(5)
  void clearProvince() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get district => $_getSZ(5);
  @$pb.TagNumber(6)
  set district($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDistrict() => $_has(5);
  @$pb.TagNumber(6)
  void clearDistrict() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get ward => $_getSZ(6);
  @$pb.TagNumber(7)
  set ward($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWard() => $_has(6);
  @$pb.TagNumber(7)
  void clearWard() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get latitude => $_getN(7);
  @$pb.TagNumber(8)
  set latitude($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLatitude() => $_has(7);
  @$pb.TagNumber(8)
  void clearLatitude() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get longitude => $_getN(8);
  @$pb.TagNumber(9)
  set longitude($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLongitude() => $_has(8);
  @$pb.TagNumber(9)
  void clearLongitude() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isDefault => $_getBF(9);
  @$pb.TagNumber(10)
  set isDefault($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIsDefault() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsDefault() => clearField(10);
}

class PatientIdRequest extends $pb.GeneratedMessage {
  factory PatientIdRequest({
    $core.int? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  PatientIdRequest._() : super();
  factory PatientIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PatientIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PatientIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'location'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PatientIdRequest clone() => PatientIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PatientIdRequest copyWith(void Function(PatientIdRequest) updates) => super.copyWith((message) => updates(message as PatientIdRequest)) as PatientIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatientIdRequest create() => PatientIdRequest._();
  PatientIdRequest createEmptyInstance() => create();
  static $pb.PbList<PatientIdRequest> createRepeated() => $pb.PbList<PatientIdRequest>();
  @$core.pragma('dart2js:noInline')
  static PatientIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PatientIdRequest>(create);
  static PatientIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class LocationIdRequest extends $pb.GeneratedMessage {
  factory LocationIdRequest({
    $core.int? locationId,
  }) {
    final $result = create();
    if (locationId != null) {
      $result.locationId = locationId;
    }
    return $result;
  }
  LocationIdRequest._() : super();
  factory LocationIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocationIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'location'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'locationId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationIdRequest clone() => LocationIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationIdRequest copyWith(void Function(LocationIdRequest) updates) => super.copyWith((message) => updates(message as LocationIdRequest)) as LocationIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationIdRequest create() => LocationIdRequest._();
  LocationIdRequest createEmptyInstance() => create();
  static $pb.PbList<LocationIdRequest> createRepeated() => $pb.PbList<LocationIdRequest>();
  @$core.pragma('dart2js:noInline')
  static LocationIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationIdRequest>(create);
  static LocationIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get locationId => $_getIZ(0);
  @$pb.TagNumber(1)
  set locationId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationId() => clearField(1);
}

class LocationList extends $pb.GeneratedMessage {
  factory LocationList({
    $core.Iterable<LocationMessage>? locations,
  }) {
    final $result = create();
    if (locations != null) {
      $result.locations.addAll(locations);
    }
    return $result;
  }
  LocationList._() : super();
  factory LocationList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocationList', package: const $pb.PackageName(_omitMessageNames ? '' : 'location'), createEmptyInstance: create)
    ..pc<LocationMessage>(1, _omitFieldNames ? '' : 'locations', $pb.PbFieldType.PM, subBuilder: LocationMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationList clone() => LocationList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationList copyWith(void Function(LocationList) updates) => super.copyWith((message) => updates(message as LocationList)) as LocationList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationList create() => LocationList._();
  LocationList createEmptyInstance() => create();
  static $pb.PbList<LocationList> createRepeated() => $pb.PbList<LocationList>();
  @$core.pragma('dart2js:noInline')
  static LocationList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationList>(create);
  static LocationList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LocationMessage> get locations => $_getList(0);
}

class LocationResponse extends $pb.GeneratedMessage {
  factory LocationResponse({
    $core.bool? success,
    $core.String? message,
    $core.int? locationId,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    if (locationId != null) {
      $result.locationId = locationId;
    }
    return $result;
  }
  LocationResponse._() : super();
  factory LocationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'location'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'locationId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationResponse clone() => LocationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationResponse copyWith(void Function(LocationResponse) updates) => super.copyWith((message) => updates(message as LocationResponse)) as LocationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationResponse create() => LocationResponse._();
  LocationResponse createEmptyInstance() => create();
  static $pb.PbList<LocationResponse> createRepeated() => $pb.PbList<LocationResponse>();
  @$core.pragma('dart2js:noInline')
  static LocationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationResponse>(create);
  static LocationResponse? _defaultInstance;

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
  $core.int get locationId => $_getIZ(2);
  @$pb.TagNumber(3)
  set locationId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocationId() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocationId() => clearField(3);
}

class EmptyResponse extends $pb.GeneratedMessage {
  factory EmptyResponse() => create();
  EmptyResponse._() : super();
  factory EmptyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'location'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyResponse clone() => EmptyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyResponse copyWith(void Function(EmptyResponse) updates) => super.copyWith((message) => updates(message as EmptyResponse)) as EmptyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyResponse create() => EmptyResponse._();
  EmptyResponse createEmptyInstance() => create();
  static $pb.PbList<EmptyResponse> createRepeated() => $pb.PbList<EmptyResponse>();
  @$core.pragma('dart2js:noInline')
  static EmptyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyResponse>(create);
  static EmptyResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
