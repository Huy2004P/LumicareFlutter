//
//  Generated code. Do not modify.
//  source: feedback.proto
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

import 'feedback.pb.dart' as $4;

export 'feedback.pb.dart';

@$pb.GrpcServiceName('feedback.FeedbackService')
class FeedbackServiceClient extends $grpc.Client {
  static final _$sendFeedback = $grpc.ClientMethod<$4.FeedbackRequest, $4.FeedbackResponse>(
      '/feedback.FeedbackService/SendFeedback',
      ($4.FeedbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.FeedbackResponse.fromBuffer(value));
  static final _$getDoctorFeedbacks = $grpc.ClientMethod<$4.DoctorIdRequest, $4.FeedbackListResponse>(
      '/feedback.FeedbackService/GetDoctorFeedbacks',
      ($4.DoctorIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.FeedbackListResponse.fromBuffer(value));
  static final _$getClinicFeedbacks = $grpc.ClientMethod<$4.ClinicIdRequest, $4.FeedbackListResponse>(
      '/feedback.FeedbackService/GetClinicFeedbacks',
      ($4.ClinicIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.FeedbackListResponse.fromBuffer(value));
  static final _$getServiceFeedbacks = $grpc.ClientMethod<$4.ServiceIdRequest, $4.FeedbackListResponse>(
      '/feedback.FeedbackService/GetServiceFeedbacks',
      ($4.ServiceIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.FeedbackListResponse.fromBuffer(value));
  static final _$getAllFeedbacks = $grpc.ClientMethod<$4.Empty, $4.FeedbackListResponse>(
      '/feedback.FeedbackService/GetAllFeedbacks',
      ($4.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.FeedbackListResponse.fromBuffer(value));

  FeedbackServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.FeedbackResponse> sendFeedback($4.FeedbackRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendFeedback, request, options: options);
  }

  $grpc.ResponseFuture<$4.FeedbackListResponse> getDoctorFeedbacks($4.DoctorIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDoctorFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$4.FeedbackListResponse> getClinicFeedbacks($4.ClinicIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getClinicFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$4.FeedbackListResponse> getServiceFeedbacks($4.ServiceIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getServiceFeedbacks, request, options: options);
  }

  $grpc.ResponseFuture<$4.FeedbackListResponse> getAllFeedbacks($4.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllFeedbacks, request, options: options);
  }
}

@$pb.GrpcServiceName('feedback.FeedbackService')
abstract class FeedbackServiceBase extends $grpc.Service {
  $core.String get $name => 'feedback.FeedbackService';

  FeedbackServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.FeedbackRequest, $4.FeedbackResponse>(
        'SendFeedback',
        sendFeedback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.FeedbackRequest.fromBuffer(value),
        ($4.FeedbackResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DoctorIdRequest, $4.FeedbackListResponse>(
        'GetDoctorFeedbacks',
        getDoctorFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.DoctorIdRequest.fromBuffer(value),
        ($4.FeedbackListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ClinicIdRequest, $4.FeedbackListResponse>(
        'GetClinicFeedbacks',
        getClinicFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ClinicIdRequest.fromBuffer(value),
        ($4.FeedbackListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.ServiceIdRequest, $4.FeedbackListResponse>(
        'GetServiceFeedbacks',
        getServiceFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.ServiceIdRequest.fromBuffer(value),
        ($4.FeedbackListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.Empty, $4.FeedbackListResponse>(
        'GetAllFeedbacks',
        getAllFeedbacks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.Empty.fromBuffer(value),
        ($4.FeedbackListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.FeedbackResponse> sendFeedback_Pre($grpc.ServiceCall call, $async.Future<$4.FeedbackRequest> request) async {
    return sendFeedback(call, await request);
  }

  $async.Future<$4.FeedbackListResponse> getDoctorFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$4.DoctorIdRequest> request) async {
    return getDoctorFeedbacks(call, await request);
  }

  $async.Future<$4.FeedbackListResponse> getClinicFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$4.ClinicIdRequest> request) async {
    return getClinicFeedbacks(call, await request);
  }

  $async.Future<$4.FeedbackListResponse> getServiceFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$4.ServiceIdRequest> request) async {
    return getServiceFeedbacks(call, await request);
  }

  $async.Future<$4.FeedbackListResponse> getAllFeedbacks_Pre($grpc.ServiceCall call, $async.Future<$4.Empty> request) async {
    return getAllFeedbacks(call, await request);
  }

  $async.Future<$4.FeedbackResponse> sendFeedback($grpc.ServiceCall call, $4.FeedbackRequest request);
  $async.Future<$4.FeedbackListResponse> getDoctorFeedbacks($grpc.ServiceCall call, $4.DoctorIdRequest request);
  $async.Future<$4.FeedbackListResponse> getClinicFeedbacks($grpc.ServiceCall call, $4.ClinicIdRequest request);
  $async.Future<$4.FeedbackListResponse> getServiceFeedbacks($grpc.ServiceCall call, $4.ServiceIdRequest request);
  $async.Future<$4.FeedbackListResponse> getAllFeedbacks($grpc.ServiceCall call, $4.Empty request);
}
