//
//  Generated code. Do not modify.
//  source: treatment.proto
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

import 'treatment.pb.dart' as $14;

export 'treatment.pb.dart';

@$pb.GrpcServiceName('treatment.TreatmentService')
class TreatmentServiceClient extends $grpc.Client {
  static final _$getTreatmentByBooking = $grpc.ClientMethod<$14.TreatmentRequest, $14.TreatmentResponse>(
      '/treatment.TreatmentService/GetTreatmentByBooking',
      ($14.TreatmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.TreatmentResponse.fromBuffer(value));
  static final _$getUserMedicalRecords = $grpc.ClientMethod<$14.UserRecordsRequest, $14.UserRecordsResponse>(
      '/treatment.TreatmentService/GetUserMedicalRecords',
      ($14.UserRecordsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $14.UserRecordsResponse.fromBuffer(value));

  TreatmentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$14.TreatmentResponse> getTreatmentByBooking($14.TreatmentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTreatmentByBooking, request, options: options);
  }

  $grpc.ResponseFuture<$14.UserRecordsResponse> getUserMedicalRecords($14.UserRecordsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserMedicalRecords, request, options: options);
  }
}

@$pb.GrpcServiceName('treatment.TreatmentService')
abstract class TreatmentServiceBase extends $grpc.Service {
  $core.String get $name => 'treatment.TreatmentService';

  TreatmentServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.TreatmentRequest, $14.TreatmentResponse>(
        'GetTreatmentByBooking',
        getTreatmentByBooking_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.TreatmentRequest.fromBuffer(value),
        ($14.TreatmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.UserRecordsRequest, $14.UserRecordsResponse>(
        'GetUserMedicalRecords',
        getUserMedicalRecords_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $14.UserRecordsRequest.fromBuffer(value),
        ($14.UserRecordsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.TreatmentResponse> getTreatmentByBooking_Pre($grpc.ServiceCall call, $async.Future<$14.TreatmentRequest> request) async {
    return getTreatmentByBooking(call, await request);
  }

  $async.Future<$14.UserRecordsResponse> getUserMedicalRecords_Pre($grpc.ServiceCall call, $async.Future<$14.UserRecordsRequest> request) async {
    return getUserMedicalRecords(call, await request);
  }

  $async.Future<$14.TreatmentResponse> getTreatmentByBooking($grpc.ServiceCall call, $14.TreatmentRequest request);
  $async.Future<$14.UserRecordsResponse> getUserMedicalRecords($grpc.ServiceCall call, $14.UserRecordsRequest request);
}
