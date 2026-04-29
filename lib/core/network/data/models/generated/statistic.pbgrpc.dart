//
//  Generated code. Do not modify.
//  source: statistic.proto
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

import 'statistic.pb.dart' as $13;

export 'statistic.pb.dart';

@$pb.GrpcServiceName('statistic.StatisticService')
class StatisticServiceClient extends $grpc.Client {
  static final _$getAdminDashboard = $grpc.ClientMethod<$13.DashboardRequest, $13.AdminDashboardResponse>(
      '/statistic.StatisticService/GetAdminDashboard',
      ($13.DashboardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $13.AdminDashboardResponse.fromBuffer(value));

  StatisticServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$13.AdminDashboardResponse> getAdminDashboard($13.DashboardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAdminDashboard, request, options: options);
  }
}

@$pb.GrpcServiceName('statistic.StatisticService')
abstract class StatisticServiceBase extends $grpc.Service {
  $core.String get $name => 'statistic.StatisticService';

  StatisticServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.DashboardRequest, $13.AdminDashboardResponse>(
        'GetAdminDashboard',
        getAdminDashboard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $13.DashboardRequest.fromBuffer(value),
        ($13.AdminDashboardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.AdminDashboardResponse> getAdminDashboard_Pre($grpc.ServiceCall call, $async.Future<$13.DashboardRequest> request) async {
    return getAdminDashboard(call, await request);
  }

  $async.Future<$13.AdminDashboardResponse> getAdminDashboard($grpc.ServiceCall call, $13.DashboardRequest request);
}
