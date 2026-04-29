//
//  Generated code. Do not modify.
//  source: master_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
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

class GetByIdRequest extends $pb.GeneratedMessage {
  factory GetByIdRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  GetByIdRequest._() : super();
  factory GetByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetByIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetByIdRequest clone() => GetByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetByIdRequest copyWith(void Function(GetByIdRequest) updates) => super.copyWith((message) => updates(message as GetByIdRequest)) as GetByIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetByIdRequest create() => GetByIdRequest._();
  GetByIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetByIdRequest> createRepeated() => $pb.PbList<GetByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetByIdRequest>(create);
  static GetByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteRequest extends $pb.GeneratedMessage {
  factory DeleteRequest({
    $core.int? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  DeleteRequest._() : super();
  factory DeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRequest clone() => DeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRequest copyWith(void Function(DeleteRequest) updates) => super.copyWith((message) => updates(message as DeleteRequest)) as DeleteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteRequest create() => DeleteRequest._();
  DeleteRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRequest> createRepeated() => $pb.PbList<DeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRequest>(create);
  static DeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class SearchRequest extends $pb.GeneratedMessage {
  factory SearchRequest({
    $core.String? keyword,
    $core.int? limit,
    $core.int? offset,
    $core.int? specialtyId,
  }) {
    final $result = create();
    if (keyword != null) {
      $result.keyword = keyword;
    }
    if (limit != null) {
      $result.limit = limit;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (specialtyId != null) {
      $result.specialtyId = specialtyId;
    }
    return $result;
  }
  SearchRequest._() : super();
  factory SearchRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SearchRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keyword')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'offset', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'specialtyId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchRequest clone() => SearchRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchRequest copyWith(void Function(SearchRequest) updates) => super.copyWith((message) => updates(message as SearchRequest)) as SearchRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchRequest create() => SearchRequest._();
  SearchRequest createEmptyInstance() => create();
  static $pb.PbList<SearchRequest> createRepeated() => $pb.PbList<SearchRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchRequest>(create);
  static SearchRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyword => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyword() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyword() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get offset => $_getIZ(2);
  @$pb.TagNumber(3)
  set offset($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get specialtyId => $_getIZ(3);
  @$pb.TagNumber(4)
  set specialtyId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpecialtyId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpecialtyId() => clearField(4);
}

class CreateSpecialtyRequest extends $pb.GeneratedMessage {
  factory CreateSpecialtyRequest({
    $core.String? name,
    $core.String? description,
    $core.String? image,
    $core.String? contentHtml,
    $core.String? contentMarkdown,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    if (contentHtml != null) {
      $result.contentHtml = contentHtml;
    }
    if (contentMarkdown != null) {
      $result.contentMarkdown = contentMarkdown;
    }
    return $result;
  }
  CreateSpecialtyRequest._() : super();
  factory CreateSpecialtyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSpecialtyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSpecialtyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'image')
    ..aOS(4, _omitFieldNames ? '' : 'contentHtml')
    ..aOS(5, _omitFieldNames ? '' : 'contentMarkdown')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSpecialtyRequest clone() => CreateSpecialtyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSpecialtyRequest copyWith(void Function(CreateSpecialtyRequest) updates) => super.copyWith((message) => updates(message as CreateSpecialtyRequest)) as CreateSpecialtyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSpecialtyRequest create() => CreateSpecialtyRequest._();
  CreateSpecialtyRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSpecialtyRequest> createRepeated() => $pb.PbList<CreateSpecialtyRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSpecialtyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSpecialtyRequest>(create);
  static CreateSpecialtyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get image => $_getSZ(2);
  @$pb.TagNumber(3)
  set image($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get contentHtml => $_getSZ(3);
  @$pb.TagNumber(4)
  set contentHtml($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContentHtml() => $_has(3);
  @$pb.TagNumber(4)
  void clearContentHtml() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get contentMarkdown => $_getSZ(4);
  @$pb.TagNumber(5)
  set contentMarkdown($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContentMarkdown() => $_has(4);
  @$pb.TagNumber(5)
  void clearContentMarkdown() => clearField(5);
}

class UpdateSpecialtyRequest extends $pb.GeneratedMessage {
  factory UpdateSpecialtyRequest({
    $core.int? id,
    $core.String? name,
    $core.String? description,
    $core.String? image,
    $core.String? contentHtml,
    $core.String? contentMarkdown,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    if (contentHtml != null) {
      $result.contentHtml = contentHtml;
    }
    if (contentMarkdown != null) {
      $result.contentMarkdown = contentMarkdown;
    }
    return $result;
  }
  UpdateSpecialtyRequest._() : super();
  factory UpdateSpecialtyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSpecialtyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSpecialtyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'image')
    ..aOS(5, _omitFieldNames ? '' : 'contentHtml')
    ..aOS(6, _omitFieldNames ? '' : 'contentMarkdown')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSpecialtyRequest clone() => UpdateSpecialtyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSpecialtyRequest copyWith(void Function(UpdateSpecialtyRequest) updates) => super.copyWith((message) => updates(message as UpdateSpecialtyRequest)) as UpdateSpecialtyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSpecialtyRequest create() => UpdateSpecialtyRequest._();
  UpdateSpecialtyRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSpecialtyRequest> createRepeated() => $pb.PbList<UpdateSpecialtyRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSpecialtyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSpecialtyRequest>(create);
  static UpdateSpecialtyRequest? _defaultInstance;

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
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get image => $_getSZ(3);
  @$pb.TagNumber(4)
  set image($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearImage() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get contentHtml => $_getSZ(4);
  @$pb.TagNumber(5)
  set contentHtml($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContentHtml() => $_has(4);
  @$pb.TagNumber(5)
  void clearContentHtml() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get contentMarkdown => $_getSZ(5);
  @$pb.TagNumber(6)
  set contentMarkdown($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContentMarkdown() => $_has(5);
  @$pb.TagNumber(6)
  void clearContentMarkdown() => clearField(6);
}

class SpecialtyResponse extends $pb.GeneratedMessage {
  factory SpecialtyResponse({
    $core.int? id,
    $core.String? name,
    $core.String? description,
    $core.String? image,
    $core.String? contentHtml,
    $core.String? contentMarkdown,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    if (contentHtml != null) {
      $result.contentHtml = contentHtml;
    }
    if (contentMarkdown != null) {
      $result.contentMarkdown = contentMarkdown;
    }
    return $result;
  }
  SpecialtyResponse._() : super();
  factory SpecialtyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpecialtyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SpecialtyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'image')
    ..aOS(5, _omitFieldNames ? '' : 'contentHtml')
    ..aOS(6, _omitFieldNames ? '' : 'contentMarkdown')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpecialtyResponse clone() => SpecialtyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpecialtyResponse copyWith(void Function(SpecialtyResponse) updates) => super.copyWith((message) => updates(message as SpecialtyResponse)) as SpecialtyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpecialtyResponse create() => SpecialtyResponse._();
  SpecialtyResponse createEmptyInstance() => create();
  static $pb.PbList<SpecialtyResponse> createRepeated() => $pb.PbList<SpecialtyResponse>();
  @$core.pragma('dart2js:noInline')
  static SpecialtyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpecialtyResponse>(create);
  static SpecialtyResponse? _defaultInstance;

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
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get image => $_getSZ(3);
  @$pb.TagNumber(4)
  set image($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearImage() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get contentHtml => $_getSZ(4);
  @$pb.TagNumber(5)
  set contentHtml($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContentHtml() => $_has(4);
  @$pb.TagNumber(5)
  void clearContentHtml() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get contentMarkdown => $_getSZ(5);
  @$pb.TagNumber(6)
  set contentMarkdown($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContentMarkdown() => $_has(5);
  @$pb.TagNumber(6)
  void clearContentMarkdown() => clearField(6);
}

class SpecialtyListResponse extends $pb.GeneratedMessage {
  factory SpecialtyListResponse({
    $core.Iterable<SpecialtyResponse>? data,
    $core.int? totalCount,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    return $result;
  }
  SpecialtyListResponse._() : super();
  factory SpecialtyListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpecialtyListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SpecialtyListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..pc<SpecialtyResponse>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: SpecialtyResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'totalCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpecialtyListResponse clone() => SpecialtyListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpecialtyListResponse copyWith(void Function(SpecialtyListResponse) updates) => super.copyWith((message) => updates(message as SpecialtyListResponse)) as SpecialtyListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpecialtyListResponse create() => SpecialtyListResponse._();
  SpecialtyListResponse createEmptyInstance() => create();
  static $pb.PbList<SpecialtyListResponse> createRepeated() => $pb.PbList<SpecialtyListResponse>();
  @$core.pragma('dart2js:noInline')
  static SpecialtyListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpecialtyListResponse>(create);
  static SpecialtyListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SpecialtyResponse> get data => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get totalCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalCount() => clearField(2);
}

class CreateClinicRequest extends $pb.GeneratedMessage {
  factory CreateClinicRequest({
    $core.String? name,
    $core.String? address,
    $core.String? description,
    $core.String? image,
    $core.String? type,
    $core.String? contentHtml,
    $core.String? contentMarkdown,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (address != null) {
      $result.address = address;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    if (type != null) {
      $result.type = type;
    }
    if (contentHtml != null) {
      $result.contentHtml = contentHtml;
    }
    if (contentMarkdown != null) {
      $result.contentMarkdown = contentMarkdown;
    }
    return $result;
  }
  CreateClinicRequest._() : super();
  factory CreateClinicRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateClinicRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateClinicRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'address')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'image')
    ..aOS(5, _omitFieldNames ? '' : 'type')
    ..aOS(6, _omitFieldNames ? '' : 'contentHtml')
    ..aOS(7, _omitFieldNames ? '' : 'contentMarkdown')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateClinicRequest clone() => CreateClinicRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateClinicRequest copyWith(void Function(CreateClinicRequest) updates) => super.copyWith((message) => updates(message as CreateClinicRequest)) as CreateClinicRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateClinicRequest create() => CreateClinicRequest._();
  CreateClinicRequest createEmptyInstance() => create();
  static $pb.PbList<CreateClinicRequest> createRepeated() => $pb.PbList<CreateClinicRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateClinicRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateClinicRequest>(create);
  static CreateClinicRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get image => $_getSZ(3);
  @$pb.TagNumber(4)
  set image($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasImage() => $_has(3);
  @$pb.TagNumber(4)
  void clearImage() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get contentHtml => $_getSZ(5);
  @$pb.TagNumber(6)
  set contentHtml($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContentHtml() => $_has(5);
  @$pb.TagNumber(6)
  void clearContentHtml() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get contentMarkdown => $_getSZ(6);
  @$pb.TagNumber(7)
  set contentMarkdown($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasContentMarkdown() => $_has(6);
  @$pb.TagNumber(7)
  void clearContentMarkdown() => clearField(7);
}

class UpdateClinicRequest extends $pb.GeneratedMessage {
  factory UpdateClinicRequest({
    $core.int? id,
    $core.String? name,
    $core.String? address,
    $core.String? description,
    $core.String? image,
    $core.String? type,
    $core.String? contentHtml,
    $core.String? contentMarkdown,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (address != null) {
      $result.address = address;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    if (type != null) {
      $result.type = type;
    }
    if (contentHtml != null) {
      $result.contentHtml = contentHtml;
    }
    if (contentMarkdown != null) {
      $result.contentMarkdown = contentMarkdown;
    }
    return $result;
  }
  UpdateClinicRequest._() : super();
  factory UpdateClinicRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateClinicRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateClinicRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'address')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'image')
    ..aOS(6, _omitFieldNames ? '' : 'type')
    ..aOS(7, _omitFieldNames ? '' : 'contentHtml')
    ..aOS(8, _omitFieldNames ? '' : 'contentMarkdown')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateClinicRequest clone() => UpdateClinicRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateClinicRequest copyWith(void Function(UpdateClinicRequest) updates) => super.copyWith((message) => updates(message as UpdateClinicRequest)) as UpdateClinicRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateClinicRequest create() => UpdateClinicRequest._();
  UpdateClinicRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateClinicRequest> createRepeated() => $pb.PbList<UpdateClinicRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateClinicRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateClinicRequest>(create);
  static UpdateClinicRequest? _defaultInstance;

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
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);

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

  @$pb.TagNumber(6)
  $core.String get type => $_getSZ(5);
  @$pb.TagNumber(6)
  set type($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get contentHtml => $_getSZ(6);
  @$pb.TagNumber(7)
  set contentHtml($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasContentHtml() => $_has(6);
  @$pb.TagNumber(7)
  void clearContentHtml() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get contentMarkdown => $_getSZ(7);
  @$pb.TagNumber(8)
  set contentMarkdown($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasContentMarkdown() => $_has(7);
  @$pb.TagNumber(8)
  void clearContentMarkdown() => clearField(8);
}

class ClinicResponse extends $pb.GeneratedMessage {
  factory ClinicResponse({
    $core.int? id,
    $core.String? name,
    $core.String? address,
    $core.String? description,
    $core.String? image,
    $core.String? type,
    $core.String? contentHtml,
    $core.String? contentMarkdown,
    $core.double? rating,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (address != null) {
      $result.address = address;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    if (type != null) {
      $result.type = type;
    }
    if (contentHtml != null) {
      $result.contentHtml = contentHtml;
    }
    if (contentMarkdown != null) {
      $result.contentMarkdown = contentMarkdown;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    return $result;
  }
  ClinicResponse._() : super();
  factory ClinicResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClinicResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClinicResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'address')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'image')
    ..aOS(6, _omitFieldNames ? '' : 'type')
    ..aOS(7, _omitFieldNames ? '' : 'contentHtml')
    ..aOS(8, _omitFieldNames ? '' : 'contentMarkdown')
    ..a<$core.double>(9, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClinicResponse clone() => ClinicResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClinicResponse copyWith(void Function(ClinicResponse) updates) => super.copyWith((message) => updates(message as ClinicResponse)) as ClinicResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClinicResponse create() => ClinicResponse._();
  ClinicResponse createEmptyInstance() => create();
  static $pb.PbList<ClinicResponse> createRepeated() => $pb.PbList<ClinicResponse>();
  @$core.pragma('dart2js:noInline')
  static ClinicResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClinicResponse>(create);
  static ClinicResponse? _defaultInstance;

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
  $core.String get address => $_getSZ(2);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);

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

  @$pb.TagNumber(6)
  $core.String get type => $_getSZ(5);
  @$pb.TagNumber(6)
  set type($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasType() => $_has(5);
  @$pb.TagNumber(6)
  void clearType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get contentHtml => $_getSZ(6);
  @$pb.TagNumber(7)
  set contentHtml($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasContentHtml() => $_has(6);
  @$pb.TagNumber(7)
  void clearContentHtml() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get contentMarkdown => $_getSZ(7);
  @$pb.TagNumber(8)
  set contentMarkdown($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasContentMarkdown() => $_has(7);
  @$pb.TagNumber(8)
  void clearContentMarkdown() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get rating => $_getN(8);
  @$pb.TagNumber(9)
  set rating($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRating() => $_has(8);
  @$pb.TagNumber(9)
  void clearRating() => clearField(9);
}

class ClinicListResponse extends $pb.GeneratedMessage {
  factory ClinicListResponse({
    $core.Iterable<ClinicResponse>? data,
    $core.int? totalCount,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    return $result;
  }
  ClinicListResponse._() : super();
  factory ClinicListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClinicListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClinicListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..pc<ClinicResponse>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: ClinicResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'totalCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClinicListResponse clone() => ClinicListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClinicListResponse copyWith(void Function(ClinicListResponse) updates) => super.copyWith((message) => updates(message as ClinicListResponse)) as ClinicListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClinicListResponse create() => ClinicListResponse._();
  ClinicListResponse createEmptyInstance() => create();
  static $pb.PbList<ClinicListResponse> createRepeated() => $pb.PbList<ClinicListResponse>();
  @$core.pragma('dart2js:noInline')
  static ClinicListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClinicListResponse>(create);
  static ClinicListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ClinicResponse> get data => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get totalCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalCount() => clearField(2);
}

class CreateRoomRequest extends $pb.GeneratedMessage {
  factory CreateRoomRequest({
    $core.String? name,
    $core.int? clinicId,
    $core.String? location,
    $core.String? description,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (clinicId != null) {
      $result.clinicId = clinicId;
    }
    if (location != null) {
      $result.location = location;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  CreateRoomRequest._() : super();
  factory CreateRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRoomRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'clinicId', $pb.PbFieldType.O3, protoName: 'clinicId')
    ..aOS(3, _omitFieldNames ? '' : 'location')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRoomRequest clone() => CreateRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRoomRequest copyWith(void Function(CreateRoomRequest) updates) => super.copyWith((message) => updates(message as CreateRoomRequest)) as CreateRoomRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRoomRequest create() => CreateRoomRequest._();
  CreateRoomRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRoomRequest> createRepeated() => $pb.PbList<CreateRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRoomRequest>(create);
  static CreateRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get clinicId => $_getIZ(1);
  @$pb.TagNumber(2)
  set clinicId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClinicId() => $_has(1);
  @$pb.TagNumber(2)
  void clearClinicId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get location => $_getSZ(2);
  @$pb.TagNumber(3)
  set location($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);
}

class UpdateRoomRequest extends $pb.GeneratedMessage {
  factory UpdateRoomRequest({
    $core.int? id,
    $core.String? name,
    $core.String? location,
    $core.String? description,
    $core.int? clinicId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (location != null) {
      $result.location = location;
    }
    if (description != null) {
      $result.description = description;
    }
    if (clinicId != null) {
      $result.clinicId = clinicId;
    }
    return $result;
  }
  UpdateRoomRequest._() : super();
  factory UpdateRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRoomRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'location')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'clinicId', $pb.PbFieldType.O3, protoName: 'clinicId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRoomRequest clone() => UpdateRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRoomRequest copyWith(void Function(UpdateRoomRequest) updates) => super.copyWith((message) => updates(message as UpdateRoomRequest)) as UpdateRoomRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRoomRequest create() => UpdateRoomRequest._();
  UpdateRoomRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRoomRequest> createRepeated() => $pb.PbList<UpdateRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRoomRequest>(create);
  static UpdateRoomRequest? _defaultInstance;

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
  $core.String get location => $_getSZ(2);
  @$pb.TagNumber(3)
  set location($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get clinicId => $_getIZ(4);
  @$pb.TagNumber(5)
  set clinicId($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasClinicId() => $_has(4);
  @$pb.TagNumber(5)
  void clearClinicId() => clearField(5);
}

class RoomResponse extends $pb.GeneratedMessage {
  factory RoomResponse({
    $core.int? id,
    $core.String? name,
    $core.String? clinicName,
    $core.int? clinicId,
    $core.String? location,
    $core.String? description,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (clinicName != null) {
      $result.clinicName = clinicName;
    }
    if (clinicId != null) {
      $result.clinicId = clinicId;
    }
    if (location != null) {
      $result.location = location;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  RoomResponse._() : super();
  factory RoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoomResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'clinicName', protoName: 'clinicName')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'clinicId', $pb.PbFieldType.O3, protoName: 'clinicId')
    ..aOS(5, _omitFieldNames ? '' : 'location')
    ..aOS(6, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomResponse clone() => RoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomResponse copyWith(void Function(RoomResponse) updates) => super.copyWith((message) => updates(message as RoomResponse)) as RoomResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomResponse create() => RoomResponse._();
  RoomResponse createEmptyInstance() => create();
  static $pb.PbList<RoomResponse> createRepeated() => $pb.PbList<RoomResponse>();
  @$core.pragma('dart2js:noInline')
  static RoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomResponse>(create);
  static RoomResponse? _defaultInstance;

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
  $core.String get clinicName => $_getSZ(2);
  @$pb.TagNumber(3)
  set clinicName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClinicName() => $_has(2);
  @$pb.TagNumber(3)
  void clearClinicName() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get clinicId => $_getIZ(3);
  @$pb.TagNumber(4)
  set clinicId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasClinicId() => $_has(3);
  @$pb.TagNumber(4)
  void clearClinicId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get location => $_getSZ(4);
  @$pb.TagNumber(5)
  set location($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearLocation() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);
}

class RoomFilterRequest extends $pb.GeneratedMessage {
  factory RoomFilterRequest({
    $core.int? clinicId,
    $core.String? keyword,
  }) {
    final $result = create();
    if (clinicId != null) {
      $result.clinicId = clinicId;
    }
    if (keyword != null) {
      $result.keyword = keyword;
    }
    return $result;
  }
  RoomFilterRequest._() : super();
  factory RoomFilterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomFilterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoomFilterRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'clinicId', $pb.PbFieldType.O3, protoName: 'clinicId')
    ..aOS(2, _omitFieldNames ? '' : 'keyword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomFilterRequest clone() => RoomFilterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomFilterRequest copyWith(void Function(RoomFilterRequest) updates) => super.copyWith((message) => updates(message as RoomFilterRequest)) as RoomFilterRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomFilterRequest create() => RoomFilterRequest._();
  RoomFilterRequest createEmptyInstance() => create();
  static $pb.PbList<RoomFilterRequest> createRepeated() => $pb.PbList<RoomFilterRequest>();
  @$core.pragma('dart2js:noInline')
  static RoomFilterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomFilterRequest>(create);
  static RoomFilterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get clinicId => $_getIZ(0);
  @$pb.TagNumber(1)
  set clinicId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClinicId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClinicId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get keyword => $_getSZ(1);
  @$pb.TagNumber(2)
  set keyword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeyword() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyword() => clearField(2);
}

class RoomListResponse extends $pb.GeneratedMessage {
  factory RoomListResponse({
    $core.Iterable<RoomResponse>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  RoomListResponse._() : super();
  factory RoomListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoomListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoomListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..pc<RoomResponse>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: RoomResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoomListResponse clone() => RoomListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoomListResponse copyWith(void Function(RoomListResponse) updates) => super.copyWith((message) => updates(message as RoomListResponse)) as RoomListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomListResponse create() => RoomListResponse._();
  RoomListResponse createEmptyInstance() => create();
  static $pb.PbList<RoomListResponse> createRepeated() => $pb.PbList<RoomListResponse>();
  @$core.pragma('dart2js:noInline')
  static RoomListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoomListResponse>(create);
  static RoomListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RoomResponse> get data => $_getList(0);
}

class CreateServiceRequest extends $pb.GeneratedMessage {
  factory CreateServiceRequest({
    $core.String? name,
    $core.double? price,
    $core.int? specialtyId,
    $core.String? description,
    $core.String? image,
    $core.String? contentHtml,
    $core.String? contentMarkdown,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (price != null) {
      $result.price = price;
    }
    if (specialtyId != null) {
      $result.specialtyId = specialtyId;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    if (contentHtml != null) {
      $result.contentHtml = contentHtml;
    }
    if (contentMarkdown != null) {
      $result.contentMarkdown = contentMarkdown;
    }
    return $result;
  }
  CreateServiceRequest._() : super();
  factory CreateServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateServiceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'specialtyId', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'image')
    ..aOS(6, _omitFieldNames ? '' : 'contentHtml')
    ..aOS(7, _omitFieldNames ? '' : 'contentMarkdown')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateServiceRequest clone() => CreateServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateServiceRequest copyWith(void Function(CreateServiceRequest) updates) => super.copyWith((message) => updates(message as CreateServiceRequest)) as CreateServiceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateServiceRequest create() => CreateServiceRequest._();
  CreateServiceRequest createEmptyInstance() => create();
  static $pb.PbList<CreateServiceRequest> createRepeated() => $pb.PbList<CreateServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateServiceRequest>(create);
  static CreateServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get price => $_getN(1);
  @$pb.TagNumber(2)
  set price($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrice() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get specialtyId => $_getIZ(2);
  @$pb.TagNumber(3)
  set specialtyId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpecialtyId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpecialtyId() => clearField(3);

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

  @$pb.TagNumber(6)
  $core.String get contentHtml => $_getSZ(5);
  @$pb.TagNumber(6)
  set contentHtml($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContentHtml() => $_has(5);
  @$pb.TagNumber(6)
  void clearContentHtml() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get contentMarkdown => $_getSZ(6);
  @$pb.TagNumber(7)
  set contentMarkdown($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasContentMarkdown() => $_has(6);
  @$pb.TagNumber(7)
  void clearContentMarkdown() => clearField(7);
}

class UpdateServiceRequest extends $pb.GeneratedMessage {
  factory UpdateServiceRequest({
    $core.int? id,
    $core.String? name,
    $core.double? price,
    $core.int? specialtyId,
    $core.String? description,
    $core.String? image,
    $core.String? contentHtml,
    $core.String? contentMarkdown,
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
    if (specialtyId != null) {
      $result.specialtyId = specialtyId;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    if (contentHtml != null) {
      $result.contentHtml = contentHtml;
    }
    if (contentMarkdown != null) {
      $result.contentMarkdown = contentMarkdown;
    }
    return $result;
  }
  UpdateServiceRequest._() : super();
  factory UpdateServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateServiceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'specialtyId', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'image')
    ..aOS(7, _omitFieldNames ? '' : 'contentHtml')
    ..aOS(8, _omitFieldNames ? '' : 'contentMarkdown')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateServiceRequest clone() => UpdateServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateServiceRequest copyWith(void Function(UpdateServiceRequest) updates) => super.copyWith((message) => updates(message as UpdateServiceRequest)) as UpdateServiceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateServiceRequest create() => UpdateServiceRequest._();
  UpdateServiceRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateServiceRequest> createRepeated() => $pb.PbList<UpdateServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateServiceRequest>(create);
  static UpdateServiceRequest? _defaultInstance;

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
  $core.int get specialtyId => $_getIZ(3);
  @$pb.TagNumber(4)
  set specialtyId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpecialtyId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpecialtyId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get image => $_getSZ(5);
  @$pb.TagNumber(6)
  set image($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImage() => $_has(5);
  @$pb.TagNumber(6)
  void clearImage() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get contentHtml => $_getSZ(6);
  @$pb.TagNumber(7)
  set contentHtml($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasContentHtml() => $_has(6);
  @$pb.TagNumber(7)
  void clearContentHtml() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get contentMarkdown => $_getSZ(7);
  @$pb.TagNumber(8)
  set contentMarkdown($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasContentMarkdown() => $_has(7);
  @$pb.TagNumber(8)
  void clearContentMarkdown() => clearField(8);
}

class ServiceResponse extends $pb.GeneratedMessage {
  factory ServiceResponse({
    $core.int? id,
    $core.String? name,
    $core.double? price,
    $core.int? specialtyId,
    $core.String? description,
    $core.String? image,
    $core.String? contentHtml,
    $core.String? contentMarkdown,
    $core.double? rating,
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
    if (specialtyId != null) {
      $result.specialtyId = specialtyId;
    }
    if (description != null) {
      $result.description = description;
    }
    if (image != null) {
      $result.image = image;
    }
    if (contentHtml != null) {
      $result.contentHtml = contentHtml;
    }
    if (contentMarkdown != null) {
      $result.contentMarkdown = contentMarkdown;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    return $result;
  }
  ServiceResponse._() : super();
  factory ServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'specialtyId', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'image')
    ..aOS(7, _omitFieldNames ? '' : 'contentHtml')
    ..aOS(8, _omitFieldNames ? '' : 'contentMarkdown')
    ..a<$core.double>(9, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceResponse clone() => ServiceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceResponse copyWith(void Function(ServiceResponse) updates) => super.copyWith((message) => updates(message as ServiceResponse)) as ServiceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceResponse create() => ServiceResponse._();
  ServiceResponse createEmptyInstance() => create();
  static $pb.PbList<ServiceResponse> createRepeated() => $pb.PbList<ServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static ServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceResponse>(create);
  static ServiceResponse? _defaultInstance;

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
  $core.int get specialtyId => $_getIZ(3);
  @$pb.TagNumber(4)
  set specialtyId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpecialtyId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpecialtyId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get image => $_getSZ(5);
  @$pb.TagNumber(6)
  set image($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasImage() => $_has(5);
  @$pb.TagNumber(6)
  void clearImage() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get contentHtml => $_getSZ(6);
  @$pb.TagNumber(7)
  set contentHtml($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasContentHtml() => $_has(6);
  @$pb.TagNumber(7)
  void clearContentHtml() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get contentMarkdown => $_getSZ(7);
  @$pb.TagNumber(8)
  set contentMarkdown($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasContentMarkdown() => $_has(7);
  @$pb.TagNumber(8)
  void clearContentMarkdown() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get rating => $_getN(8);
  @$pb.TagNumber(9)
  set rating($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRating() => $_has(8);
  @$pb.TagNumber(9)
  void clearRating() => clearField(9);
}

class ServiceListResponse extends $pb.GeneratedMessage {
  factory ServiceListResponse({
    $core.Iterable<ServiceResponse>? data,
    $core.int? totalCount,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    return $result;
  }
  ServiceListResponse._() : super();
  factory ServiceListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..pc<ServiceResponse>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: ServiceResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'totalCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceListResponse clone() => ServiceListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceListResponse copyWith(void Function(ServiceListResponse) updates) => super.copyWith((message) => updates(message as ServiceListResponse)) as ServiceListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceListResponse create() => ServiceListResponse._();
  ServiceListResponse createEmptyInstance() => create();
  static $pb.PbList<ServiceListResponse> createRepeated() => $pb.PbList<ServiceListResponse>();
  @$core.pragma('dart2js:noInline')
  static ServiceListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceListResponse>(create);
  static ServiceListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ServiceResponse> get data => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get totalCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalCount() => clearField(2);
}

/// --- Định nghĩa cho Doctor By Service ---
class DoctorInfo extends $pb.GeneratedMessage {
  factory DoctorInfo({
    $core.int? id,
    $core.String? fullName,
    $core.String? phone,
    $core.String? avatar,
    $core.String? description,
    $core.double? price,
    $core.String? position,
    $core.int? specialtyId,
    $core.int? roomId,
    $core.String? specialtyName,
    $core.double? rating,
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
    if (avatar != null) {
      $result.avatar = avatar;
    }
    if (description != null) {
      $result.description = description;
    }
    if (price != null) {
      $result.price = price;
    }
    if (position != null) {
      $result.position = position;
    }
    if (specialtyId != null) {
      $result.specialtyId = specialtyId;
    }
    if (roomId != null) {
      $result.roomId = roomId;
    }
    if (specialtyName != null) {
      $result.specialtyName = specialtyName;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    return $result;
  }
  DoctorInfo._() : super();
  factory DoctorInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoctorInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DoctorInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'fullName')
    ..aOS(3, _omitFieldNames ? '' : 'phone')
    ..aOS(4, _omitFieldNames ? '' : 'avatar')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(7, _omitFieldNames ? '' : 'position')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'specialtyId', $pb.PbFieldType.O3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'roomId', $pb.PbFieldType.O3)
    ..aOS(10, _omitFieldNames ? '' : 'specialtyName')
    ..a<$core.double>(11, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoctorInfo clone() => DoctorInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoctorInfo copyWith(void Function(DoctorInfo) updates) => super.copyWith((message) => updates(message as DoctorInfo)) as DoctorInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoctorInfo create() => DoctorInfo._();
  DoctorInfo createEmptyInstance() => create();
  static $pb.PbList<DoctorInfo> createRepeated() => $pb.PbList<DoctorInfo>();
  @$core.pragma('dart2js:noInline')
  static DoctorInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoctorInfo>(create);
  static DoctorInfo? _defaultInstance;

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
  $core.String get avatar => $_getSZ(3);
  @$pb.TagNumber(4)
  set avatar($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvatar() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvatar() => clearField(4);

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
  $core.String get position => $_getSZ(6);
  @$pb.TagNumber(7)
  set position($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPosition() => $_has(6);
  @$pb.TagNumber(7)
  void clearPosition() => clearField(7);

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
  $core.String get specialtyName => $_getSZ(9);
  @$pb.TagNumber(10)
  set specialtyName($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSpecialtyName() => $_has(9);
  @$pb.TagNumber(10)
  void clearSpecialtyName() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get rating => $_getN(10);
  @$pb.TagNumber(11)
  set rating($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRating() => $_has(10);
  @$pb.TagNumber(11)
  void clearRating() => clearField(11);
}

class DoctorListByServiceResponse extends $pb.GeneratedMessage {
  factory DoctorListByServiceResponse({
    $core.bool? success,
    $core.Iterable<DoctorInfo>? data,
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
  DoctorListByServiceResponse._() : super();
  factory DoctorListByServiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoctorListByServiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DoctorListByServiceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..pc<DoctorInfo>(2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: DoctorInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoctorListByServiceResponse clone() => DoctorListByServiceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoctorListByServiceResponse copyWith(void Function(DoctorListByServiceResponse) updates) => super.copyWith((message) => updates(message as DoctorListByServiceResponse)) as DoctorListByServiceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoctorListByServiceResponse create() => DoctorListByServiceResponse._();
  DoctorListByServiceResponse createEmptyInstance() => create();
  static $pb.PbList<DoctorListByServiceResponse> createRepeated() => $pb.PbList<DoctorListByServiceResponse>();
  @$core.pragma('dart2js:noInline')
  static DoctorListByServiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoctorListByServiceResponse>(create);
  static DoctorListByServiceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<DoctorInfo> get data => $_getList(1);
}

/// 1. Thêm specialty_id để lúc tạo mới Admin có thể gán khoa luôn
class CreateDrugRequest extends $pb.GeneratedMessage {
  factory CreateDrugRequest({
    $core.String? name,
    $core.String? unit,
    $core.double? price,
    $core.String? description,
    $core.String? contentHtml,
    $core.String? contentMarkdown,
    $core.int? specialtyId,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (unit != null) {
      $result.unit = unit;
    }
    if (price != null) {
      $result.price = price;
    }
    if (description != null) {
      $result.description = description;
    }
    if (contentHtml != null) {
      $result.contentHtml = contentHtml;
    }
    if (contentMarkdown != null) {
      $result.contentMarkdown = contentMarkdown;
    }
    if (specialtyId != null) {
      $result.specialtyId = specialtyId;
    }
    return $result;
  }
  CreateDrugRequest._() : super();
  factory CreateDrugRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDrugRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateDrugRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'unit')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'contentHtml')
    ..aOS(6, _omitFieldNames ? '' : 'contentMarkdown')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'specialtyId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDrugRequest clone() => CreateDrugRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDrugRequest copyWith(void Function(CreateDrugRequest) updates) => super.copyWith((message) => updates(message as CreateDrugRequest)) as CreateDrugRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDrugRequest create() => CreateDrugRequest._();
  CreateDrugRequest createEmptyInstance() => create();
  static $pb.PbList<CreateDrugRequest> createRepeated() => $pb.PbList<CreateDrugRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateDrugRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDrugRequest>(create);
  static CreateDrugRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get unit => $_getSZ(1);
  @$pb.TagNumber(2)
  set unit($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnit() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnit() => clearField(2);

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
  $core.String get contentHtml => $_getSZ(4);
  @$pb.TagNumber(5)
  set contentHtml($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContentHtml() => $_has(4);
  @$pb.TagNumber(5)
  void clearContentHtml() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get contentMarkdown => $_getSZ(5);
  @$pb.TagNumber(6)
  set contentMarkdown($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContentMarkdown() => $_has(5);
  @$pb.TagNumber(6)
  void clearContentMarkdown() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get specialtyId => $_getIZ(6);
  @$pb.TagNumber(7)
  set specialtyId($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSpecialtyId() => $_has(6);
  @$pb.TagNumber(7)
  void clearSpecialtyId() => clearField(7);
}

/// 2. Thêm specialty_id để lúc sửa Admin có thể đổi khoa cho thuốc
class UpdateDrugRequest extends $pb.GeneratedMessage {
  factory UpdateDrugRequest({
    $core.int? id,
    $core.String? name,
    $core.String? unit,
    $core.double? price,
    $core.String? description,
    $core.String? contentHtml,
    $core.String? contentMarkdown,
    $core.int? specialtyId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (unit != null) {
      $result.unit = unit;
    }
    if (price != null) {
      $result.price = price;
    }
    if (description != null) {
      $result.description = description;
    }
    if (contentHtml != null) {
      $result.contentHtml = contentHtml;
    }
    if (contentMarkdown != null) {
      $result.contentMarkdown = contentMarkdown;
    }
    if (specialtyId != null) {
      $result.specialtyId = specialtyId;
    }
    return $result;
  }
  UpdateDrugRequest._() : super();
  factory UpdateDrugRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateDrugRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateDrugRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'unit')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'contentHtml')
    ..aOS(7, _omitFieldNames ? '' : 'contentMarkdown')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'specialtyId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateDrugRequest clone() => UpdateDrugRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateDrugRequest copyWith(void Function(UpdateDrugRequest) updates) => super.copyWith((message) => updates(message as UpdateDrugRequest)) as UpdateDrugRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateDrugRequest create() => UpdateDrugRequest._();
  UpdateDrugRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateDrugRequest> createRepeated() => $pb.PbList<UpdateDrugRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateDrugRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateDrugRequest>(create);
  static UpdateDrugRequest? _defaultInstance;

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
  $core.String get unit => $_getSZ(2);
  @$pb.TagNumber(3)
  set unit($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnit() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnit() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get contentHtml => $_getSZ(5);
  @$pb.TagNumber(6)
  set contentHtml($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContentHtml() => $_has(5);
  @$pb.TagNumber(6)
  void clearContentHtml() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get contentMarkdown => $_getSZ(6);
  @$pb.TagNumber(7)
  set contentMarkdown($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasContentMarkdown() => $_has(6);
  @$pb.TagNumber(7)
  void clearContentMarkdown() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get specialtyId => $_getIZ(7);
  @$pb.TagNumber(8)
  set specialtyId($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSpecialtyId() => $_has(7);
  @$pb.TagNumber(8)
  void clearSpecialtyId() => clearField(8);
}

/// 3. DrugResponse giữ nguyên (đã có specialty_id rồi)
class DrugResponse extends $pb.GeneratedMessage {
  factory DrugResponse({
    $core.int? id,
    $core.String? name,
    $core.String? unit,
    $core.double? price,
    $core.String? description,
    $core.String? contentHtml,
    $core.String? contentMarkdown,
    $core.int? specialtyId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (unit != null) {
      $result.unit = unit;
    }
    if (price != null) {
      $result.price = price;
    }
    if (description != null) {
      $result.description = description;
    }
    if (contentHtml != null) {
      $result.contentHtml = contentHtml;
    }
    if (contentMarkdown != null) {
      $result.contentMarkdown = contentMarkdown;
    }
    if (specialtyId != null) {
      $result.specialtyId = specialtyId;
    }
    return $result;
  }
  DrugResponse._() : super();
  factory DrugResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DrugResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DrugResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'unit')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..aOS(6, _omitFieldNames ? '' : 'contentHtml')
    ..aOS(7, _omitFieldNames ? '' : 'contentMarkdown')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'specialtyId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DrugResponse clone() => DrugResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DrugResponse copyWith(void Function(DrugResponse) updates) => super.copyWith((message) => updates(message as DrugResponse)) as DrugResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DrugResponse create() => DrugResponse._();
  DrugResponse createEmptyInstance() => create();
  static $pb.PbList<DrugResponse> createRepeated() => $pb.PbList<DrugResponse>();
  @$core.pragma('dart2js:noInline')
  static DrugResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DrugResponse>(create);
  static DrugResponse? _defaultInstance;

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
  $core.String get unit => $_getSZ(2);
  @$pb.TagNumber(3)
  set unit($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnit() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnit() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get contentHtml => $_getSZ(5);
  @$pb.TagNumber(6)
  set contentHtml($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasContentHtml() => $_has(5);
  @$pb.TagNumber(6)
  void clearContentHtml() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get contentMarkdown => $_getSZ(6);
  @$pb.TagNumber(7)
  set contentMarkdown($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasContentMarkdown() => $_has(6);
  @$pb.TagNumber(7)
  void clearContentMarkdown() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get specialtyId => $_getIZ(7);
  @$pb.TagNumber(8)
  set specialtyId($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSpecialtyId() => $_has(7);
  @$pb.TagNumber(8)
  void clearSpecialtyId() => clearField(8);
}

/// 4. Thằng này là cái vỏ bọc nên giữ nguyên logic cũ
class DrugListResponse extends $pb.GeneratedMessage {
  factory DrugListResponse({
    $core.Iterable<DrugResponse>? data,
    $core.int? totalCount,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    return $result;
  }
  DrugListResponse._() : super();
  factory DrugListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DrugListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DrugListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..pc<DrugResponse>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: DrugResponse.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'totalCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DrugListResponse clone() => DrugListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DrugListResponse copyWith(void Function(DrugListResponse) updates) => super.copyWith((message) => updates(message as DrugListResponse)) as DrugListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DrugListResponse create() => DrugListResponse._();
  DrugListResponse createEmptyInstance() => create();
  static $pb.PbList<DrugListResponse> createRepeated() => $pb.PbList<DrugListResponse>();
  @$core.pragma('dart2js:noInline')
  static DrugListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DrugListResponse>(create);
  static DrugListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DrugResponse> get data => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get totalCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalCount() => clearField(2);
}

class CreateAllCodeRequest extends $pb.GeneratedMessage {
  factory CreateAllCodeRequest({
    $core.String? type,
    $core.String? key,
    $core.String? valueVi,
    $core.String? valueEn,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (key != null) {
      $result.key = key;
    }
    if (valueVi != null) {
      $result.valueVi = valueVi;
    }
    if (valueEn != null) {
      $result.valueEn = valueEn;
    }
    return $result;
  }
  CreateAllCodeRequest._() : super();
  factory CreateAllCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAllCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateAllCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..aOS(3, _omitFieldNames ? '' : 'valueVi')
    ..aOS(4, _omitFieldNames ? '' : 'valueEn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAllCodeRequest clone() => CreateAllCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAllCodeRequest copyWith(void Function(CreateAllCodeRequest) updates) => super.copyWith((message) => updates(message as CreateAllCodeRequest)) as CreateAllCodeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateAllCodeRequest create() => CreateAllCodeRequest._();
  CreateAllCodeRequest createEmptyInstance() => create();
  static $pb.PbList<CreateAllCodeRequest> createRepeated() => $pb.PbList<CreateAllCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateAllCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAllCodeRequest>(create);
  static CreateAllCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get valueVi => $_getSZ(2);
  @$pb.TagNumber(3)
  set valueVi($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValueVi() => $_has(2);
  @$pb.TagNumber(3)
  void clearValueVi() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get valueEn => $_getSZ(3);
  @$pb.TagNumber(4)
  set valueEn($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValueEn() => $_has(3);
  @$pb.TagNumber(4)
  void clearValueEn() => clearField(4);
}

class UpdateAllCodeRequest extends $pb.GeneratedMessage {
  factory UpdateAllCodeRequest({
    $core.int? id,
    $core.String? type,
    $core.String? key,
    $core.String? valueVi,
    $core.String? valueEn,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (type != null) {
      $result.type = type;
    }
    if (key != null) {
      $result.key = key;
    }
    if (valueVi != null) {
      $result.valueVi = valueVi;
    }
    if (valueEn != null) {
      $result.valueEn = valueEn;
    }
    return $result;
  }
  UpdateAllCodeRequest._() : super();
  factory UpdateAllCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAllCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateAllCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..aOS(3, _omitFieldNames ? '' : 'key')
    ..aOS(4, _omitFieldNames ? '' : 'valueVi')
    ..aOS(5, _omitFieldNames ? '' : 'valueEn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAllCodeRequest clone() => UpdateAllCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAllCodeRequest copyWith(void Function(UpdateAllCodeRequest) updates) => super.copyWith((message) => updates(message as UpdateAllCodeRequest)) as UpdateAllCodeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateAllCodeRequest create() => UpdateAllCodeRequest._();
  UpdateAllCodeRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateAllCodeRequest> createRepeated() => $pb.PbList<UpdateAllCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateAllCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAllCodeRequest>(create);
  static UpdateAllCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get key => $_getSZ(2);
  @$pb.TagNumber(3)
  set key($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get valueVi => $_getSZ(3);
  @$pb.TagNumber(4)
  set valueVi($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValueVi() => $_has(3);
  @$pb.TagNumber(4)
  void clearValueVi() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get valueEn => $_getSZ(4);
  @$pb.TagNumber(5)
  set valueEn($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasValueEn() => $_has(4);
  @$pb.TagNumber(5)
  void clearValueEn() => clearField(5);
}

class AllCodeResponse extends $pb.GeneratedMessage {
  factory AllCodeResponse({
    $core.int? id,
    $core.String? type,
    $core.String? key,
    $core.String? valueVi,
    $core.String? valueEn,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (type != null) {
      $result.type = type;
    }
    if (key != null) {
      $result.key = key;
    }
    if (valueVi != null) {
      $result.valueVi = valueVi;
    }
    if (valueEn != null) {
      $result.valueEn = valueEn;
    }
    return $result;
  }
  AllCodeResponse._() : super();
  factory AllCodeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllCodeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AllCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..aOS(3, _omitFieldNames ? '' : 'key')
    ..aOS(4, _omitFieldNames ? '' : 'valueVi')
    ..aOS(5, _omitFieldNames ? '' : 'valueEn')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllCodeResponse clone() => AllCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllCodeResponse copyWith(void Function(AllCodeResponse) updates) => super.copyWith((message) => updates(message as AllCodeResponse)) as AllCodeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllCodeResponse create() => AllCodeResponse._();
  AllCodeResponse createEmptyInstance() => create();
  static $pb.PbList<AllCodeResponse> createRepeated() => $pb.PbList<AllCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static AllCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllCodeResponse>(create);
  static AllCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get key => $_getSZ(2);
  @$pb.TagNumber(3)
  set key($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get valueVi => $_getSZ(3);
  @$pb.TagNumber(4)
  set valueVi($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasValueVi() => $_has(3);
  @$pb.TagNumber(4)
  void clearValueVi() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get valueEn => $_getSZ(4);
  @$pb.TagNumber(5)
  set valueEn($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasValueEn() => $_has(4);
  @$pb.TagNumber(5)
  void clearValueEn() => clearField(5);
}

class GetAllCodesRequest extends $pb.GeneratedMessage {
  factory GetAllCodesRequest({
    $core.String? type,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  GetAllCodesRequest._() : super();
  factory GetAllCodesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllCodesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAllCodesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllCodesRequest clone() => GetAllCodesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllCodesRequest copyWith(void Function(GetAllCodesRequest) updates) => super.copyWith((message) => updates(message as GetAllCodesRequest)) as GetAllCodesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAllCodesRequest create() => GetAllCodesRequest._();
  GetAllCodesRequest createEmptyInstance() => create();
  static $pb.PbList<GetAllCodesRequest> createRepeated() => $pb.PbList<GetAllCodesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAllCodesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllCodesRequest>(create);
  static GetAllCodesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}

class AllCodeListResponse extends $pb.GeneratedMessage {
  factory AllCodeListResponse({
    $core.Iterable<AllCodeResponse>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  AllCodeListResponse._() : super();
  factory AllCodeListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllCodeListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AllCodeListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'master_data'), createEmptyInstance: create)
    ..pc<AllCodeResponse>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: AllCodeResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllCodeListResponse clone() => AllCodeListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllCodeListResponse copyWith(void Function(AllCodeListResponse) updates) => super.copyWith((message) => updates(message as AllCodeListResponse)) as AllCodeListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllCodeListResponse create() => AllCodeListResponse._();
  AllCodeListResponse createEmptyInstance() => create();
  static $pb.PbList<AllCodeListResponse> createRepeated() => $pb.PbList<AllCodeListResponse>();
  @$core.pragma('dart2js:noInline')
  static AllCodeListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllCodeListResponse>(create);
  static AllCodeListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AllCodeResponse> get data => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
