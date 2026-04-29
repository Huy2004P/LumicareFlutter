//
//  Generated code. Do not modify.
//  source: doctor.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UpdatePasswordRequest extends $pb.GeneratedMessage {
  factory UpdatePasswordRequest({
    $core.int? id,
    $core.String? newPassword,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (newPassword != null) {
      $result.newPassword = newPassword;
    }
    return $result;
  }
  UpdatePasswordRequest._() : super();
  factory UpdatePasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePasswordRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'newPassword', protoName: 'newPassword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePasswordRequest clone() => UpdatePasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePasswordRequest copyWith(void Function(UpdatePasswordRequest) updates) => super.copyWith((message) => updates(message as UpdatePasswordRequest)) as UpdatePasswordRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePasswordRequest create() => UpdatePasswordRequest._();
  UpdatePasswordRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePasswordRequest> createRepeated() => $pb.PbList<UpdatePasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePasswordRequest>(create);
  static UpdatePasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get newPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set newPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewPassword() => clearField(2);
}

class StatusResponse extends $pb.GeneratedMessage {
  factory StatusResponse({
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
  StatusResponse._() : super();
  factory StatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusResponse clone() => StatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusResponse copyWith(void Function(StatusResponse) updates) => super.copyWith((message) => updates(message as StatusResponse)) as StatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusResponse create() => StatusResponse._();
  StatusResponse createEmptyInstance() => create();
  static $pb.PbList<StatusResponse> createRepeated() => $pb.PbList<StatusResponse>();
  @$core.pragma('dart2js:noInline')
  static StatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusResponse>(create);
  static StatusResponse? _defaultInstance;

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
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DoctorIdRequest._() : super();
  factory DoctorIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoctorIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DoctorIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
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
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DoctorResponse extends $pb.GeneratedMessage {
  factory DoctorResponse({
    $core.int? id,
    $core.String? fullName,
    $core.String? email,
    $core.String? phone,
    $core.String? position,
    $core.String? description,
    $core.double? price,
    $core.String? avatar,
    $core.String? specialtyName,
    $core.String? roomName,
    $core.String? clinicName,
    $core.bool? active,
    $core.int? specialtyId,
    $core.double? rating,
    $core.int? roomId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (fullName != null) {
      $result.fullName = fullName;
    }
    if (email != null) {
      $result.email = email;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (position != null) {
      $result.position = position;
    }
    if (description != null) {
      $result.description = description;
    }
    if (price != null) {
      $result.price = price;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (specialtyName != null) {
      $result.specialtyName = specialtyName;
    }
    if (roomName != null) {
      $result.roomName = roomName;
    }
    if (clinicName != null) {
      $result.clinicName = clinicName;
    }
    if (active != null) {
      $result.active = active;
    }
    if (specialtyId != null) {
      $result.specialtyId = specialtyId;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    return $result;
  }
  DoctorResponse._() : super();
  factory DoctorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoctorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DoctorResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'fullName', protoName: 'fullName')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'phone')
    ..aOS(5, _omitFieldNames ? '' : 'position')
    ..aOS(6, _omitFieldNames ? '' : 'description')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(8, _omitFieldNames ? '' : 'avatar')
    ..aOS(9, _omitFieldNames ? '' : 'specialtyName', protoName: 'specialtyName')
    ..aOS(10, _omitFieldNames ? '' : 'roomName', protoName: 'roomName')
    ..aOS(11, _omitFieldNames ? '' : 'clinicName', protoName: 'clinicName')
    ..aOB(12, _omitFieldNames ? '' : 'active')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'specialtyId', $pb.PbFieldType.O3, protoName: 'specialtyId')
    ..a<$core.double>(14, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.OD)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'roomId', $pb.PbFieldType.O3, protoName: 'roomId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoctorResponse clone() => DoctorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoctorResponse copyWith(void Function(DoctorResponse) updates) => super.copyWith((message) => updates(message as DoctorResponse)) as DoctorResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoctorResponse create() => DoctorResponse._();
  DoctorResponse createEmptyInstance() => create();
  static $pb.PbList<DoctorResponse> createRepeated() => $pb.PbList<DoctorResponse>();
  @$core.pragma('dart2js:noInline')
  static DoctorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoctorResponse>(create);
  static DoctorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fullName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fullName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFullName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFullName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get position => $_getSZ(4);
  @$pb.TagNumber(5)
  set position($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPosition() => $_has(4);
  @$pb.TagNumber(5)
  void clearPosition() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get price => $_getN(6);
  @$pb.TagNumber(7)
  set price($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPrice() => $_has(6);
  @$pb.TagNumber(7)
  void clearPrice() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get avatar => $_getSZ(7);
  @$pb.TagNumber(8)
  set avatar($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAvatar() => $_has(7);
  @$pb.TagNumber(8)
  void clearAvatar() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get specialtyName => $_getSZ(8);
  @$pb.TagNumber(9)
  set specialtyName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSpecialtyName() => $_has(8);
  @$pb.TagNumber(9)
  void clearSpecialtyName() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get roomName => $_getSZ(9);
  @$pb.TagNumber(10)
  set roomName($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRoomName() => $_has(9);
  @$pb.TagNumber(10)
  void clearRoomName() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get clinicName => $_getSZ(10);
  @$pb.TagNumber(11)
  set clinicName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasClinicName() => $_has(10);
  @$pb.TagNumber(11)
  void clearClinicName() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get active => $_getBF(11);
  @$pb.TagNumber(12)
  set active($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasActive() => $_has(11);
  @$pb.TagNumber(12)
  void clearActive() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get specialtyId => $_getIZ(12);
  @$pb.TagNumber(13)
  set specialtyId($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSpecialtyId() => $_has(12);
  @$pb.TagNumber(13)
  void clearSpecialtyId() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get rating => $_getN(13);
  @$pb.TagNumber(14)
  set rating($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasRating() => $_has(13);
  @$pb.TagNumber(14)
  void clearRating() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get roomId => $_getIZ(14);
  @$pb.TagNumber(15)
  set roomId($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasRoomId() => $_has(14);
  @$pb.TagNumber(15)
  void clearRoomId() => clearField(15);
}

class CreateDoctorRequest extends $pb.GeneratedMessage {
  factory CreateDoctorRequest({
    $core.String? email,
    $core.String? password,
    $core.String? fullName,
    $core.String? phone,
    $core.String? position,
    $core.String? description,
    $core.double? price,
    $core.String? avatar,
    $core.int? specialtyId,
    $core.int? roomId,
  }) {
    final $result = create();
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    if (fullName != null) {
      $result.fullName = fullName;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (position != null) {
      $result.position = position;
    }
    if (description != null) {
      $result.description = description;
    }
    if (price != null) {
      $result.price = price;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (specialtyId != null) {
      $result.specialtyId = specialtyId;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    return $result;
  }
  CreateDoctorRequest._() : super();
  factory CreateDoctorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDoctorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateDoctorRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'fullName', protoName: 'fullName')
    ..aOS(4, _omitFieldNames ? '' : 'phone')
    ..aOS(5, _omitFieldNames ? '' : 'position')
    ..aOS(6, _omitFieldNames ? '' : 'description')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(8, _omitFieldNames ? '' : 'avatar')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'specialtyId', $pb.PbFieldType.O3, protoName: 'specialtyId')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'roomId', $pb.PbFieldType.O3, protoName: 'roomId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDoctorRequest clone() => CreateDoctorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDoctorRequest copyWith(void Function(CreateDoctorRequest) updates) => super.copyWith((message) => updates(message as CreateDoctorRequest)) as CreateDoctorRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDoctorRequest create() => CreateDoctorRequest._();
  CreateDoctorRequest createEmptyInstance() => create();
  static $pb.PbList<CreateDoctorRequest> createRepeated() => $pb.PbList<CreateDoctorRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateDoctorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDoctorRequest>(create);
  static CreateDoctorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fullName => $_getSZ(2);
  @$pb.TagNumber(3)
  set fullName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFullName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFullName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get position => $_getSZ(4);
  @$pb.TagNumber(5)
  set position($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPosition() => $_has(4);
  @$pb.TagNumber(5)
  void clearPosition() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get price => $_getN(6);
  @$pb.TagNumber(7)
  set price($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPrice() => $_has(6);
  @$pb.TagNumber(7)
  void clearPrice() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get avatar => $_getSZ(7);
  @$pb.TagNumber(8)
  set avatar($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAvatar() => $_has(7);
  @$pb.TagNumber(8)
  void clearAvatar() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get specialtyId => $_getIZ(8);
  @$pb.TagNumber(9)
  set specialtyId($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSpecialtyId() => $_has(8);
  @$pb.TagNumber(9)
  void clearSpecialtyId() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get roomId => $_getIZ(9);
  @$pb.TagNumber(10)
  set roomId($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRoomId() => $_has(9);
  @$pb.TagNumber(10)
  void clearRoomId() => clearField(10);
}

class DoctorFilter extends $pb.GeneratedMessage {
  factory DoctorFilter({
    $core.String? searchTerm,
    $core.int? specialtyId,
    $core.int? roomId,
  }) {
    final $result = create();
    if (searchTerm != null) {
      $result.searchTerm = searchTerm;
    }
    if (specialtyId != null) {
      $result.specialtyId = specialtyId;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    return $result;
  }
  DoctorFilter._() : super();
  factory DoctorFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoctorFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DoctorFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'searchTerm', protoName: 'searchTerm')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'specialtyId', $pb.PbFieldType.O3, protoName: 'specialtyId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'roomId', $pb.PbFieldType.O3, protoName: 'roomId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoctorFilter clone() => DoctorFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoctorFilter copyWith(void Function(DoctorFilter) updates) => super.copyWith((message) => updates(message as DoctorFilter)) as DoctorFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoctorFilter create() => DoctorFilter._();
  DoctorFilter createEmptyInstance() => create();
  static $pb.PbList<DoctorFilter> createRepeated() => $pb.PbList<DoctorFilter>();
  @$core.pragma('dart2js:noInline')
  static DoctorFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoctorFilter>(create);
  static DoctorFilter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get searchTerm => $_getSZ(0);
  @$pb.TagNumber(1)
  set searchTerm($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSearchTerm() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearchTerm() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get specialtyId => $_getIZ(1);
  @$pb.TagNumber(2)
  set specialtyId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpecialtyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpecialtyId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get roomId => $_getIZ(2);
  @$pb.TagNumber(3)
  set roomId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoomId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomId() => clearField(3);
}

class DoctorListResponse extends $pb.GeneratedMessage {
  factory DoctorListResponse({
    $core.Iterable<DoctorResponse>? doctors,
  }) {
    final $result = create();
    if (doctors != null) {
      $result.doctors.addAll(doctors);
    }
    return $result;
  }
  DoctorListResponse._() : super();
  factory DoctorListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoctorListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DoctorListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..pc<DoctorResponse>(1, _omitFieldNames ? '' : 'doctors', $pb.PbFieldType.PM, subBuilder: DoctorResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoctorListResponse clone() => DoctorListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoctorListResponse copyWith(void Function(DoctorListResponse) updates) => super.copyWith((message) => updates(message as DoctorListResponse)) as DoctorListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoctorListResponse create() => DoctorListResponse._();
  DoctorListResponse createEmptyInstance() => create();
  static $pb.PbList<DoctorListResponse> createRepeated() => $pb.PbList<DoctorListResponse>();
  @$core.pragma('dart2js:noInline')
  static DoctorListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoctorListResponse>(create);
  static DoctorListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DoctorResponse> get doctors => $_getList(0);
}

class ServiceItem extends $pb.GeneratedMessage {
  factory ServiceItem({
    $core.int? id,
    $core.String? name,
    $core.double? price,
    $core.String? description,
    $core.String? image,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (price != null) {
      $result.price = price;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    return $result;
  }
  ServiceItem._() : super();
  factory ServiceItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'image')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceItem clone() => ServiceItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceItem copyWith(void Function(ServiceItem) updates) => super.copyWith((message) => updates(message as ServiceItem)) as ServiceItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceItem create() => ServiceItem._();
  ServiceItem createEmptyInstance() => create();
  static $pb.PbList<ServiceItem> createRepeated() => $pb.PbList<ServiceItem>();
  @$core.pragma('dart2js:noInline')
  static ServiceItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceItem>(create);
  static ServiceItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get price => $_getN(2);
  @$pb.TagNumber(3)
  set price($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get image => $_getSZ(4);
  @$pb.TagNumber(5)
  set image($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasImage() => $_has(4);
  @$pb.TagNumber(5)
  void clearImage() => clearField(5);
}

class DoctorServiceListResponse extends $pb.GeneratedMessage {
  factory DoctorServiceListResponse({
    $core.bool? success,
    $core.String? doctorName,
    $core.Iterable<ServiceItem>? data,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (doctorName != null) {
      $result.doctorName = doctorName;
    }
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  DoctorServiceListResponse._() : super();
  factory DoctorServiceListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoctorServiceListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DoctorServiceListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'doctorName', protoName: 'doctorName')
    ..pc<ServiceItem>(3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: ServiceItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoctorServiceListResponse clone() => DoctorServiceListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoctorServiceListResponse copyWith(void Function(DoctorServiceListResponse) updates) => super.copyWith((message) => updates(message as DoctorServiceListResponse)) as DoctorServiceListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoctorServiceListResponse create() => DoctorServiceListResponse._();
  DoctorServiceListResponse createEmptyInstance() => create();
  static $pb.PbList<DoctorServiceListResponse> createRepeated() => $pb.PbList<DoctorServiceListResponse>();
  @$core.pragma('dart2js:noInline')
  static DoctorServiceListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoctorServiceListResponse>(create);
  static DoctorServiceListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get doctorName => $_getSZ(1);
  @$pb.TagNumber(2)
  set doctorName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDoctorName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoctorName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<ServiceItem> get data => $_getList(2);
}

class AssignServiceRequest extends $pb.GeneratedMessage {
  factory AssignServiceRequest({
    $core.int? doctorId,
    $core.Iterable<$core.int>? serviceIds,
  }) {
    final $result = create();
    if (doctorId != null) {
      $result.doctorId = doctorId;
    }
    if (serviceIds != null) {
      $result.serviceIds.addAll(serviceIds);
    }
    return $result;
  }
  AssignServiceRequest._() : super();
  factory AssignServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssignServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AssignServiceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'doctorId', $pb.PbFieldType.O3, protoName: 'doctorId')
    ..p<$core.int>(2, _omitFieldNames ? '' : 'serviceIds', $pb.PbFieldType.K3, protoName: 'serviceIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssignServiceRequest clone() => AssignServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssignServiceRequest copyWith(void Function(AssignServiceRequest) updates) => super.copyWith((message) => updates(message as AssignServiceRequest)) as AssignServiceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AssignServiceRequest create() => AssignServiceRequest._();
  AssignServiceRequest createEmptyInstance() => create();
  static $pb.PbList<AssignServiceRequest> createRepeated() => $pb.PbList<AssignServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static AssignServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssignServiceRequest>(create);
  static AssignServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get doctorId => $_getIZ(0);
  @$pb.TagNumber(1)
  set doctorId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDoctorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDoctorId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get serviceIds => $_getList(1);
}

/// ĐỔI TÊN Ở ĐÂY CHO KHÁC VỚI MASTER DATA
class GlobalSearchRequest extends $pb.GeneratedMessage {
  factory GlobalSearchRequest({
    $core.String? query,
    $core.int? limit,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    if (limit != null) {
      $result.limit = limit;
    }
    return $result;
  }
  GlobalSearchRequest._() : super();
  factory GlobalSearchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GlobalSearchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GlobalSearchRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GlobalSearchRequest clone() => GlobalSearchRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GlobalSearchRequest copyWith(void Function(GlobalSearchRequest) updates) => super.copyWith((message) => updates(message as GlobalSearchRequest)) as GlobalSearchRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GlobalSearchRequest create() => GlobalSearchRequest._();
  GlobalSearchRequest createEmptyInstance() => create();
  static $pb.PbList<GlobalSearchRequest> createRepeated() => $pb.PbList<GlobalSearchRequest>();
  @$core.pragma('dart2js:noInline')
  static GlobalSearchRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GlobalSearchRequest>(create);
  static GlobalSearchRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);
}

class SearchResultItem extends $pb.GeneratedMessage {
  factory SearchResultItem({
    $core.int? id,
    $core.String? name,
    $core.String? subTitle,
    $core.String? avatar,
    $core.String? type,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (subTitle != null) {
      $result.subTitle = subTitle;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  SearchResultItem._() : super();
  factory SearchResultItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchResultItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchResultItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'subTitle', protoName: 'subTitle')
    ..aOS(4, _omitFieldNames ? '' : 'avatar')
    ..aOS(5, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchResultItem clone() => SearchResultItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchResultItem copyWith(void Function(SearchResultItem) updates) => super.copyWith((message) => updates(message as SearchResultItem)) as SearchResultItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchResultItem create() => SearchResultItem._();
  SearchResultItem createEmptyInstance() => create();
  static $pb.PbList<SearchResultItem> createRepeated() => $pb.PbList<SearchResultItem>();
  @$core.pragma('dart2js:noInline')
  static SearchResultItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchResultItem>(create);
  static SearchResultItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get subTitle => $_getSZ(2);
  @$pb.TagNumber(3)
  set subTitle($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get avatar => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatar($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatar() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatar() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);
}

class GlobalSearchResponse extends $pb.GeneratedMessage {
  factory GlobalSearchResponse({
    $core.bool? success,
    $core.Iterable<SearchResultItem>? results,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  GlobalSearchResponse._() : super();
  factory GlobalSearchResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GlobalSearchResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GlobalSearchResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..pc<SearchResultItem>(2, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: SearchResultItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GlobalSearchResponse clone() => GlobalSearchResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GlobalSearchResponse copyWith(void Function(GlobalSearchResponse) updates) => super.copyWith((message) => updates(message as GlobalSearchResponse)) as GlobalSearchResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GlobalSearchResponse create() => GlobalSearchResponse._();
  GlobalSearchResponse createEmptyInstance() => create();
  static $pb.PbList<GlobalSearchResponse> createRepeated() => $pb.PbList<GlobalSearchResponse>();
  @$core.pragma('dart2js:noInline')
  static GlobalSearchResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GlobalSearchResponse>(create);
  static GlobalSearchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<SearchResultItem> get results => $_getList(1);
}

class UpdateDoctorRequest extends $pb.GeneratedMessage {
  factory UpdateDoctorRequest({
    $core.int? id,
    $core.String? fullName,
    $core.String? phone,
    $core.String? position,
    $core.String? description,
    $core.double? price,
    $core.String? avatar,
    $core.int? specialtyId,
    $core.int? roomId,
    $core.bool? active,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (fullName != null) {
      $result.fullName = fullName;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (position != null) {
      $result.position = position;
    }
    if (description != null) {
      $result.description = description;
    }
    if (price != null) {
      $result.price = price;
    }
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (specialtyId != null) {
      $result.specialtyId = specialtyId;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (active != null) {
      $result.active = active;
    }
    return $result;
  }
  UpdateDoctorRequest._() : super();
  factory UpdateDoctorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateDoctorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateDoctorRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'doctor'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'fullName', protoName: 'fullName')
    ..aOS(3, _omitFieldNames ? '' : 'phone')
    ..aOS(4, _omitFieldNames ? '' : 'position')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(7, _omitFieldNames ? '' : 'avatar')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'specialtyId', $pb.PbFieldType.O3, protoName: 'specialtyId')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'roomId', $pb.PbFieldType.O3, protoName: 'roomId')
    ..aOB(10, _omitFieldNames ? '' : 'active')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateDoctorRequest clone() => UpdateDoctorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateDoctorRequest copyWith(void Function(UpdateDoctorRequest) updates) => super.copyWith((message) => updates(message as UpdateDoctorRequest)) as UpdateDoctorRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateDoctorRequest create() => UpdateDoctorRequest._();
  UpdateDoctorRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateDoctorRequest> createRepeated() => $pb.PbList<UpdateDoctorRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateDoctorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateDoctorRequest>(create);
  static UpdateDoctorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fullName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fullName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFullName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFullName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get phone => $_getSZ(2);
  @$pb.TagNumber(3)
  set phone($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPhone() => $_has(2);
  @$pb.TagNumber(3)
  void clearPhone() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get position => $_getSZ(3);
  @$pb.TagNumber(4)
  set position($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearPosition() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get price => $_getN(5);
  @$pb.TagNumber(6)
  set price($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrice() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get avatar => $_getSZ(6);
  @$pb.TagNumber(7)
  set avatar($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvatar() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvatar() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get specialtyId => $_getIZ(7);
  @$pb.TagNumber(8)
  set specialtyId($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSpecialtyId() => $_has(7);
  @$pb.TagNumber(8)
  void clearSpecialtyId() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get roomId => $_getIZ(8);
  @$pb.TagNumber(9)
  set roomId($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRoomId() => $_has(8);
  @$pb.TagNumber(9)
  void clearRoomId() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get active => $_getBF(9);
  @$pb.TagNumber(10)
  set active($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasActive() => $_has(9);
  @$pb.TagNumber(10)
  void clearActive() => clearField(10);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
