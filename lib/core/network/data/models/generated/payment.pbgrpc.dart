//
//  Generated code. Do not modify.
//  source: payment.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'payment.pb.dart' as $9;

export 'payment.pb.dart';

@$pb.GrpcServiceName('payment.PaymentService')
class PaymentServiceClient extends $grpc.Client {
  static final _$getPaymentInstruction = $grpc.ClientMethod<$9.PaymentRequest, $9.PaymentResponse>(
      '/payment.PaymentService/GetPaymentInstruction',
      ($9.PaymentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.PaymentResponse.fromBuffer(value));
  static final _$patientConfirmTransfer = $grpc.ClientMethod<$9.ConfirmRequest, $9.CommonResponse>(
      '/payment.PaymentService/PatientConfirmTransfer',
      ($9.ConfirmRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CommonResponse.fromBuffer(value));
  static final _$adminVerifyPayment = $grpc.ClientMethod<$9.AdminVerifyRequest, $9.CommonResponse>(
      '/payment.PaymentService/AdminVerifyPayment',
      ($9.AdminVerifyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.CommonResponse.fromBuffer(value));
  static final _$getPaymentStatus = $grpc.ClientMethod<$9.PaymentStatusRequest, $9.PaymentStatusResponse>(
      '/payment.PaymentService/GetPaymentStatus',
      ($9.PaymentStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.PaymentStatusResponse.fromBuffer(value));
  static final _$getPaymentList = $grpc.ClientMethod<$9.PaymentFilterRequest, $9.PaymentListResponse>(
      '/payment.PaymentService/GetPaymentList',
      ($9.PaymentFilterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.PaymentListResponse.fromBuffer(value));

  PaymentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$9.PaymentResponse> getPaymentInstruction($9.PaymentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPaymentInstruction, request, options: options);
  }

  $grpc.ResponseFuture<$9.CommonResponse> patientConfirmTransfer($9.ConfirmRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$patientConfirmTransfer, request, options: options);
  }

  $grpc.ResponseFuture<$9.CommonResponse> adminVerifyPayment($9.AdminVerifyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$adminVerifyPayment, request, options: options);
  }

  $grpc.ResponseFuture<$9.PaymentStatusResponse> getPaymentStatus($9.PaymentStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPaymentStatus, request, options: options);
  }

  $grpc.ResponseFuture<$9.PaymentListResponse> getPaymentList($9.PaymentFilterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPaymentList, request, options: options);
  }
}

@$pb.GrpcServiceName('payment.PaymentService')
abstract class PaymentServiceBase extends $grpc.Service {
  $core.String get $name => 'payment.PaymentService';

  PaymentServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.PaymentRequest, $9.PaymentResponse>(
        'GetPaymentInstruction',
        getPaymentInstruction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.PaymentRequest.fromBuffer(value),
        ($9.PaymentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.ConfirmRequest, $9.CommonResponse>(
        'PatientConfirmTransfer',
        patientConfirmTransfer_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.ConfirmRequest.fromBuffer(value),
        ($9.CommonResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.AdminVerifyRequest, $9.CommonResponse>(
        'AdminVerifyPayment',
        adminVerifyPayment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.AdminVerifyRequest.fromBuffer(value),
        ($9.CommonResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.PaymentStatusRequest, $9.PaymentStatusResponse>(
        'GetPaymentStatus',
        getPaymentStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.PaymentStatusRequest.fromBuffer(value),
        ($9.PaymentStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.PaymentFilterRequest, $9.PaymentListResponse>(
        'GetPaymentList',
        getPaymentList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.PaymentFilterRequest.fromBuffer(value),
        ($9.PaymentListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.PaymentResponse> getPaymentInstruction_Pre($grpc.ServiceCall call, $async.Future<$9.PaymentRequest> request) async {
    return getPaymentInstruction(call, await request);
  }

  $async.Future<$9.CommonResponse> patientConfirmTransfer_Pre($grpc.ServiceCall call, $async.Future<$9.ConfirmRequest> request) async {
    return patientConfirmTransfer(call, await request);
  }

  $async.Future<$9.CommonResponse> adminVerifyPayment_Pre($grpc.ServiceCall call, $async.Future<$9.AdminVerifyRequest> request) async {
    return adminVerifyPayment(call, await request);
  }

  $async.Future<$9.PaymentStatusResponse> getPaymentStatus_Pre($grpc.ServiceCall call, $async.Future<$9.PaymentStatusRequest> request) async {
    return getPaymentStatus(call, await request);
  }

  $async.Future<$9.PaymentListResponse> getPaymentList_Pre($grpc.ServiceCall call, $async.Future<$9.PaymentFilterRequest> request) async {
    return getPaymentList(call, await request);
  }

  $async.Future<$9.PaymentResponse> getPaymentInstruction($grpc.ServiceCall call, $9.PaymentRequest request);
  $async.Future<$9.CommonResponse> patientConfirmTransfer($grpc.ServiceCall call, $9.ConfirmRequest request);
  $async.Future<$9.CommonResponse> adminVerifyPayment($grpc.ServiceCall call, $9.AdminVerifyRequest request);
  $async.Future<$9.PaymentStatusResponse> getPaymentStatus($grpc.ServiceCall call, $9.PaymentStatusRequest request);
  $async.Future<$9.PaymentListResponse> getPaymentList($grpc.ServiceCall call, $9.PaymentFilterRequest request);
}
