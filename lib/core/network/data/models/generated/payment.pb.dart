//
//  Generated code. Do not modify.
//  source: payment.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PaymentRequest extends $pb.GeneratedMessage {
  factory PaymentRequest({
    $core.int? bookingId,
    $core.String? paymentMethod,
    $core.double? totalPrice,
  }) {
    final $result = create();
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    if (paymentMethod != null) {
      $result.paymentMethod = paymentMethod;
    }
    if (totalPrice != null) {
      $result.totalPrice = totalPrice;
    }
    return $result;
  }
  PaymentRequest._() : super();
  factory PaymentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PaymentRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3, protoName: 'bookingId')
    ..aOS(2, _omitFieldNames ? '' : 'paymentMethod', protoName: 'paymentMethod')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'totalPrice', $pb.PbFieldType.OD, protoName: 'totalPrice')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentRequest clone() => PaymentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentRequest copyWith(void Function(PaymentRequest) updates) => super.copyWith((message) => updates(message as PaymentRequest)) as PaymentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentRequest create() => PaymentRequest._();
  PaymentRequest createEmptyInstance() => create();
  static $pb.PbList<PaymentRequest> createRepeated() => $pb.PbList<PaymentRequest>();
  @$core.pragma('dart2js:noInline')
  static PaymentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentRequest>(create);
  static PaymentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bookingId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bookingId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBookingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBookingId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get paymentMethod => $_getSZ(1);
  @$pb.TagNumber(2)
  set paymentMethod($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaymentMethod() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaymentMethod() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get totalPrice => $_getN(2);
  @$pb.TagNumber(3)
  set totalPrice($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalPrice() => clearField(3);
}

class PaymentResponse extends $pb.GeneratedMessage {
  factory PaymentResponse({
    $core.bool? success,
    $core.String? qrUrl,
    $core.String? bankInfo,
    $core.String? message,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (qrUrl != null) {
      $result.qrUrl = qrUrl;
    }
    if (bankInfo != null) {
      $result.bankInfo = bankInfo;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  PaymentResponse._() : super();
  factory PaymentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PaymentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'qrUrl', protoName: 'qrUrl')
    ..aOS(3, _omitFieldNames ? '' : 'bankInfo', protoName: 'bankInfo')
    ..aOS(4, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentResponse clone() => PaymentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentResponse copyWith(void Function(PaymentResponse) updates) => super.copyWith((message) => updates(message as PaymentResponse)) as PaymentResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentResponse create() => PaymentResponse._();
  PaymentResponse createEmptyInstance() => create();
  static $pb.PbList<PaymentResponse> createRepeated() => $pb.PbList<PaymentResponse>();
  @$core.pragma('dart2js:noInline')
  static PaymentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentResponse>(create);
  static PaymentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get qrUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set qrUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQrUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearQrUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get bankInfo => $_getSZ(2);
  @$pb.TagNumber(3)
  set bankInfo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBankInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearBankInfo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => clearField(4);
}

class ConfirmRequest extends $pb.GeneratedMessage {
  factory ConfirmRequest({
    $core.int? bookingId,
    $core.String? transactionId,
  }) {
    final $result = create();
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    if (transactionId != null) {
      $result.transactionId = transactionId;
    }
    return $result;
  }
  ConfirmRequest._() : super();
  factory ConfirmRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfirmRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConfirmRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3, protoName: 'bookingId')
    ..aOS(2, _omitFieldNames ? '' : 'transactionId', protoName: 'transactionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfirmRequest clone() => ConfirmRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfirmRequest copyWith(void Function(ConfirmRequest) updates) => super.copyWith((message) => updates(message as ConfirmRequest)) as ConfirmRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfirmRequest create() => ConfirmRequest._();
  ConfirmRequest createEmptyInstance() => create();
  static $pb.PbList<ConfirmRequest> createRepeated() => $pb.PbList<ConfirmRequest>();
  @$core.pragma('dart2js:noInline')
  static ConfirmRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfirmRequest>(create);
  static ConfirmRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bookingId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bookingId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBookingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBookingId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get transactionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set transactionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransactionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionId() => clearField(2);
}

class AdminVerifyRequest extends $pb.GeneratedMessage {
  factory AdminVerifyRequest({
    $core.int? bookingId,
  }) {
    final $result = create();
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    return $result;
  }
  AdminVerifyRequest._() : super();
  factory AdminVerifyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminVerifyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AdminVerifyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3, protoName: 'bookingId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminVerifyRequest clone() => AdminVerifyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminVerifyRequest copyWith(void Function(AdminVerifyRequest) updates) => super.copyWith((message) => updates(message as AdminVerifyRequest)) as AdminVerifyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdminVerifyRequest create() => AdminVerifyRequest._();
  AdminVerifyRequest createEmptyInstance() => create();
  static $pb.PbList<AdminVerifyRequest> createRepeated() => $pb.PbList<AdminVerifyRequest>();
  @$core.pragma('dart2js:noInline')
  static AdminVerifyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminVerifyRequest>(create);
  static AdminVerifyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bookingId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bookingId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBookingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBookingId() => clearField(1);
}

class PaymentStatusRequest extends $pb.GeneratedMessage {
  factory PaymentStatusRequest({
    $core.int? bookingId,
  }) {
    final $result = create();
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    return $result;
  }
  PaymentStatusRequest._() : super();
  factory PaymentStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PaymentStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3, protoName: 'bookingId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentStatusRequest clone() => PaymentStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentStatusRequest copyWith(void Function(PaymentStatusRequest) updates) => super.copyWith((message) => updates(message as PaymentStatusRequest)) as PaymentStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentStatusRequest create() => PaymentStatusRequest._();
  PaymentStatusRequest createEmptyInstance() => create();
  static $pb.PbList<PaymentStatusRequest> createRepeated() => $pb.PbList<PaymentStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static PaymentStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentStatusRequest>(create);
  static PaymentStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bookingId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bookingId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBookingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBookingId() => clearField(1);
}

class PaymentStatusResponse extends $pb.GeneratedMessage {
  factory PaymentStatusResponse({
    $core.int? status,
    $core.String? message,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  PaymentStatusResponse._() : super();
  factory PaymentStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PaymentStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentStatusResponse clone() => PaymentStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentStatusResponse copyWith(void Function(PaymentStatusResponse) updates) => super.copyWith((message) => updates(message as PaymentStatusResponse)) as PaymentStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentStatusResponse create() => PaymentStatusResponse._();
  PaymentStatusResponse createEmptyInstance() => create();
  static $pb.PbList<PaymentStatusResponse> createRepeated() => $pb.PbList<PaymentStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static PaymentStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentStatusResponse>(create);
  static PaymentStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class CommonResponse extends $pb.GeneratedMessage {
  factory CommonResponse({
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
  CommonResponse._() : super();
  factory CommonResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommonResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommonResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommonResponse clone() => CommonResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommonResponse copyWith(void Function(CommonResponse) updates) => super.copyWith((message) => updates(message as CommonResponse)) as CommonResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommonResponse create() => CommonResponse._();
  CommonResponse createEmptyInstance() => create();
  static $pb.PbList<CommonResponse> createRepeated() => $pb.PbList<CommonResponse>();
  @$core.pragma('dart2js:noInline')
  static CommonResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommonResponse>(create);
  static CommonResponse? _defaultInstance;

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

/// Thêm mấy cái message này ở cuối file
class PaymentFilterRequest extends $pb.GeneratedMessage {
  factory PaymentFilterRequest({
    $core.String? searchTerm,
    $core.int? status,
  }) {
    final $result = create();
    if (searchTerm != null) {
      $result.searchTerm = searchTerm;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  PaymentFilterRequest._() : super();
  factory PaymentFilterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentFilterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PaymentFilterRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'searchTerm', protoName: 'searchTerm')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentFilterRequest clone() => PaymentFilterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentFilterRequest copyWith(void Function(PaymentFilterRequest) updates) => super.copyWith((message) => updates(message as PaymentFilterRequest)) as PaymentFilterRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentFilterRequest create() => PaymentFilterRequest._();
  PaymentFilterRequest createEmptyInstance() => create();
  static $pb.PbList<PaymentFilterRequest> createRepeated() => $pb.PbList<PaymentFilterRequest>();
  @$core.pragma('dart2js:noInline')
  static PaymentFilterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentFilterRequest>(create);
  static PaymentFilterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get searchTerm => $_getSZ(0);
  @$pb.TagNumber(1)
  set searchTerm($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSearchTerm() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearchTerm() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class PaymentDetail extends $pb.GeneratedMessage {
  factory PaymentDetail({
    $core.int? bookingId,
    $core.String? patientName,
    $core.double? amount,
    $core.String? method,
    $core.int? status,
    $core.String? transactionId,
    $core.String? createdAt,
  }) {
    final $result = create();
    if (bookingId != null) {
      $result.bookingId = bookingId;
    }
    if (patientName != null) {
      $result.patientName = patientName;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (method != null) {
      $result.method = method;
    }
    if (status != null) {
      $result.status = status;
    }
    if (transactionId != null) {
      $result.transactionId = transactionId;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    return $result;
  }
  PaymentDetail._() : super();
  factory PaymentDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PaymentDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bookingId', $pb.PbFieldType.O3, protoName: 'bookingId')
    ..aOS(2, _omitFieldNames ? '' : 'patientName', protoName: 'patientName')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..aOS(4, _omitFieldNames ? '' : 'method')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'transactionId', protoName: 'transactionId')
    ..aOS(7, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentDetail clone() => PaymentDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentDetail copyWith(void Function(PaymentDetail) updates) => super.copyWith((message) => updates(message as PaymentDetail)) as PaymentDetail;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentDetail create() => PaymentDetail._();
  PaymentDetail createEmptyInstance() => create();
  static $pb.PbList<PaymentDetail> createRepeated() => $pb.PbList<PaymentDetail>();
  @$core.pragma('dart2js:noInline')
  static PaymentDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentDetail>(create);
  static PaymentDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bookingId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bookingId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBookingId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBookingId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get patientName => $_getSZ(1);
  @$pb.TagNumber(2)
  set patientName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPatientName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPatientName() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get amount => $_getN(2);
  @$pb.TagNumber(3)
  set amount($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get method => $_getSZ(3);
  @$pb.TagNumber(4)
  set method($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMethod() => $_has(3);
  @$pb.TagNumber(4)
  void clearMethod() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get status => $_getIZ(4);
  @$pb.TagNumber(5)
  set status($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get transactionId => $_getSZ(5);
  @$pb.TagNumber(6)
  set transactionId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTransactionId() => $_has(5);
  @$pb.TagNumber(6)
  void clearTransactionId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get createdAt => $_getSZ(6);
  @$pb.TagNumber(7)
  set createdAt($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
}

class PaymentListResponse extends $pb.GeneratedMessage {
  factory PaymentListResponse({
    $core.Iterable<PaymentDetail>? payments,
  }) {
    final $result = create();
    if (payments != null) {
      $result.payments.addAll(payments);
    }
    return $result;
  }
  PaymentListResponse._() : super();
  factory PaymentListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PaymentListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'payment'), createEmptyInstance: create)
    ..pc<PaymentDetail>(1, _omitFieldNames ? '' : 'payments', $pb.PbFieldType.PM, subBuilder: PaymentDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentListResponse clone() => PaymentListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentListResponse copyWith(void Function(PaymentListResponse) updates) => super.copyWith((message) => updates(message as PaymentListResponse)) as PaymentListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PaymentListResponse create() => PaymentListResponse._();
  PaymentListResponse createEmptyInstance() => create();
  static $pb.PbList<PaymentListResponse> createRepeated() => $pb.PbList<PaymentListResponse>();
  @$core.pragma('dart2js:noInline')
  static PaymentListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentListResponse>(create);
  static PaymentListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PaymentDetail> get payments => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
