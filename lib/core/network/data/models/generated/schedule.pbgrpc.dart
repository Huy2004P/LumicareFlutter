//
//  Generated code. Do not modify.
//  source: schedule.proto
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

import 'schedule.pb.dart' as $11;

export 'schedule.pb.dart';

@$pb.GrpcServiceName('schedule.ScheduleService')
class ScheduleServiceClient extends $grpc.Client {
  static final _$bulkCreateSchedule = $grpc.ClientMethod<$11.BulkCreateScheduleRequest, $11.ScheduleResponse>(
      '/schedule.ScheduleService/BulkCreateSchedule',
      ($11.BulkCreateScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.ScheduleResponse.fromBuffer(value));
  static final _$getScheduleByDate = $grpc.ClientMethod<$11.GetScheduleRequest, $11.GetScheduleListResponse>(
      '/schedule.ScheduleService/GetScheduleByDate',
      ($11.GetScheduleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.GetScheduleListResponse.fromBuffer(value));

  ScheduleServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$11.ScheduleResponse> bulkCreateSchedule($11.BulkCreateScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bulkCreateSchedule, request, options: options);
  }

  $grpc.ResponseFuture<$11.GetScheduleListResponse> getScheduleByDate($11.GetScheduleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getScheduleByDate, request, options: options);
  }
}

@$pb.GrpcServiceName('schedule.ScheduleService')
abstract class ScheduleServiceBase extends $grpc.Service {
  $core.String get $name => 'schedule.ScheduleService';

  ScheduleServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.BulkCreateScheduleRequest, $11.ScheduleResponse>(
        'BulkCreateSchedule',
        bulkCreateSchedule_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.BulkCreateScheduleRequest.fromBuffer(value),
        ($11.ScheduleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetScheduleRequest, $11.GetScheduleListResponse>(
        'GetScheduleByDate',
        getScheduleByDate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $11.GetScheduleRequest.fromBuffer(value),
        ($11.GetScheduleListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.ScheduleResponse> bulkCreateSchedule_Pre($grpc.ServiceCall call, $async.Future<$11.BulkCreateScheduleRequest> request) async {
    return bulkCreateSchedule(call, await request);
  }

  $async.Future<$11.GetScheduleListResponse> getScheduleByDate_Pre($grpc.ServiceCall call, $async.Future<$11.GetScheduleRequest> request) async {
    return getScheduleByDate(call, await request);
  }

  $async.Future<$11.ScheduleResponse> bulkCreateSchedule($grpc.ServiceCall call, $11.BulkCreateScheduleRequest request);
  $async.Future<$11.GetScheduleListResponse> getScheduleByDate($grpc.ServiceCall call, $11.GetScheduleRequest request);
}
