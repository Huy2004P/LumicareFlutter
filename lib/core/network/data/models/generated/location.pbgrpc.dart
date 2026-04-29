//
//  Generated code. Do not modify.
//  source: location.proto
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

import 'location.pb.dart' as $5;

export 'location.pb.dart';

@$pb.GrpcServiceName('location.LocationService')
class LocationServiceClient extends $grpc.Client {
  static final _$getPatientLocations = $grpc.ClientMethod<$5.PatientIdRequest, $5.LocationList>(
      '/location.LocationService/GetPatientLocations',
      ($5.PatientIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.LocationList.fromBuffer(value));
  static final _$addNewLocation = $grpc.ClientMethod<$5.LocationMessage, $5.LocationResponse>(
      '/location.LocationService/AddNewLocation',
      ($5.LocationMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.LocationResponse.fromBuffer(value));
  static final _$deleteLocation = $grpc.ClientMethod<$5.LocationIdRequest, $5.EmptyResponse>(
      '/location.LocationService/DeleteLocation',
      ($5.LocationIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.EmptyResponse.fromBuffer(value));
  static final _$setDefaultLocation = $grpc.ClientMethod<$5.LocationIdRequest, $5.EmptyResponse>(
      '/location.LocationService/SetDefaultLocation',
      ($5.LocationIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.EmptyResponse.fromBuffer(value));

  LocationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.LocationList> getPatientLocations($5.PatientIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPatientLocations, request, options: options);
  }

  $grpc.ResponseFuture<$5.LocationResponse> addNewLocation($5.LocationMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addNewLocation, request, options: options);
  }

  $grpc.ResponseFuture<$5.EmptyResponse> deleteLocation($5.LocationIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteLocation, request, options: options);
  }

  $grpc.ResponseFuture<$5.EmptyResponse> setDefaultLocation($5.LocationIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setDefaultLocation, request, options: options);
  }
}

@$pb.GrpcServiceName('location.LocationService')
abstract class LocationServiceBase extends $grpc.Service {
  $core.String get $name => 'location.LocationService';

  LocationServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.PatientIdRequest, $5.LocationList>(
        'GetPatientLocations',
        getPatientLocations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.PatientIdRequest.fromBuffer(value),
        ($5.LocationList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.LocationMessage, $5.LocationResponse>(
        'AddNewLocation',
        addNewLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.LocationMessage.fromBuffer(value),
        ($5.LocationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.LocationIdRequest, $5.EmptyResponse>(
        'DeleteLocation',
        deleteLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.LocationIdRequest.fromBuffer(value),
        ($5.EmptyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.LocationIdRequest, $5.EmptyResponse>(
        'SetDefaultLocation',
        setDefaultLocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.LocationIdRequest.fromBuffer(value),
        ($5.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.LocationList> getPatientLocations_Pre($grpc.ServiceCall call, $async.Future<$5.PatientIdRequest> request) async {
    return getPatientLocations(call, await request);
  }

  $async.Future<$5.LocationResponse> addNewLocation_Pre($grpc.ServiceCall call, $async.Future<$5.LocationMessage> request) async {
    return addNewLocation(call, await request);
  }

  $async.Future<$5.EmptyResponse> deleteLocation_Pre($grpc.ServiceCall call, $async.Future<$5.LocationIdRequest> request) async {
    return deleteLocation(call, await request);
  }

  $async.Future<$5.EmptyResponse> setDefaultLocation_Pre($grpc.ServiceCall call, $async.Future<$5.LocationIdRequest> request) async {
    return setDefaultLocation(call, await request);
  }

  $async.Future<$5.LocationList> getPatientLocations($grpc.ServiceCall call, $5.PatientIdRequest request);
  $async.Future<$5.LocationResponse> addNewLocation($grpc.ServiceCall call, $5.LocationMessage request);
  $async.Future<$5.EmptyResponse> deleteLocation($grpc.ServiceCall call, $5.LocationIdRequest request);
  $async.Future<$5.EmptyResponse> setDefaultLocation($grpc.ServiceCall call, $5.LocationIdRequest request);
}
