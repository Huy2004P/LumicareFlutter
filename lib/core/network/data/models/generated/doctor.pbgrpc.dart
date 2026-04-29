//
//  Generated code. Do not modify.
//  source: doctor.proto
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

import 'doctor.pb.dart' as $3;

export 'doctor.pb.dart';

@$pb.GrpcServiceName('doctor.DoctorService')
class DoctorServiceClient extends $grpc.Client {
  static final _$createDoctor = $grpc.ClientMethod<$3.CreateDoctorRequest, $3.DoctorResponse>(
      '/doctor.DoctorService/CreateDoctor',
      ($3.CreateDoctorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DoctorResponse.fromBuffer(value));
  static final _$getAllDoctors = $grpc.ClientMethod<$3.DoctorFilter, $3.DoctorListResponse>(
      '/doctor.DoctorService/GetAllDoctors',
      ($3.DoctorFilter value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DoctorListResponse.fromBuffer(value));
  static final _$getDoctorById = $grpc.ClientMethod<$3.DoctorIdRequest, $3.DoctorResponse>(
      '/doctor.DoctorService/GetDoctorById',
      ($3.DoctorIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DoctorResponse.fromBuffer(value));
  static final _$getDoctorServices = $grpc.ClientMethod<$3.DoctorIdRequest, $3.DoctorServiceListResponse>(
      '/doctor.DoctorService/GetDoctorServices',
      ($3.DoctorIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DoctorServiceListResponse.fromBuffer(value));
  static final _$assignServiceToDoctor = $grpc.ClientMethod<$3.AssignServiceRequest, $3.StatusResponse>(
      '/doctor.DoctorService/AssignServiceToDoctor',
      ($3.AssignServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.StatusResponse.fromBuffer(value));
  static final _$globalSearch = $grpc.ClientMethod<$3.GlobalSearchRequest, $3.GlobalSearchResponse>(
      '/doctor.DoctorService/GlobalSearch',
      ($3.GlobalSearchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GlobalSearchResponse.fromBuffer(value));
  static final _$updateDoctor = $grpc.ClientMethod<$3.UpdateDoctorRequest, $3.DoctorResponse>(
      '/doctor.DoctorService/UpdateDoctor',
      ($3.UpdateDoctorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DoctorResponse.fromBuffer(value));
  static final _$deleteDoctor = $grpc.ClientMethod<$3.DoctorIdRequest, $3.StatusResponse>(
      '/doctor.DoctorService/DeleteDoctor',
      ($3.DoctorIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.StatusResponse.fromBuffer(value));
  static final _$updateDoctorPassword = $grpc.ClientMethod<$3.UpdatePasswordRequest, $3.StatusResponse>(
      '/doctor.DoctorService/UpdateDoctorPassword',
      ($3.UpdatePasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.StatusResponse.fromBuffer(value));
  static final _$resetDoctorPassword = $grpc.ClientMethod<$3.DoctorIdRequest, $3.StatusResponse>(
      '/doctor.DoctorService/ResetDoctorPassword',
      ($3.DoctorIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.StatusResponse.fromBuffer(value));

  DoctorServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.DoctorResponse> createDoctor($3.CreateDoctorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDoctor, request, options: options);
  }

  $grpc.ResponseFuture<$3.DoctorListResponse> getAllDoctors($3.DoctorFilter request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllDoctors, request, options: options);
  }

  $grpc.ResponseFuture<$3.DoctorResponse> getDoctorById($3.DoctorIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDoctorById, request, options: options);
  }

  $grpc.ResponseFuture<$3.DoctorServiceListResponse> getDoctorServices($3.DoctorIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDoctorServices, request, options: options);
  }

  $grpc.ResponseFuture<$3.StatusResponse> assignServiceToDoctor($3.AssignServiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assignServiceToDoctor, request, options: options);
  }

  $grpc.ResponseFuture<$3.GlobalSearchResponse> globalSearch($3.GlobalSearchRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$globalSearch, request, options: options);
  }

  $grpc.ResponseFuture<$3.DoctorResponse> updateDoctor($3.UpdateDoctorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateDoctor, request, options: options);
  }

  $grpc.ResponseFuture<$3.StatusResponse> deleteDoctor($3.DoctorIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteDoctor, request, options: options);
  }

  $grpc.ResponseFuture<$3.StatusResponse> updateDoctorPassword($3.UpdatePasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateDoctorPassword, request, options: options);
  }

  $grpc.ResponseFuture<$3.StatusResponse> resetDoctorPassword($3.DoctorIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetDoctorPassword, request, options: options);
  }
}

@$pb.GrpcServiceName('doctor.DoctorService')
abstract class DoctorServiceBase extends $grpc.Service {
  $core.String get $name => 'doctor.DoctorService';

  DoctorServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.CreateDoctorRequest, $3.DoctorResponse>(
        'CreateDoctor',
        createDoctor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateDoctorRequest.fromBuffer(value),
        ($3.DoctorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DoctorFilter, $3.DoctorListResponse>(
        'GetAllDoctors',
        getAllDoctors_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DoctorFilter.fromBuffer(value),
        ($3.DoctorListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DoctorIdRequest, $3.DoctorResponse>(
        'GetDoctorById',
        getDoctorById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DoctorIdRequest.fromBuffer(value),
        ($3.DoctorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DoctorIdRequest, $3.DoctorServiceListResponse>(
        'GetDoctorServices',
        getDoctorServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DoctorIdRequest.fromBuffer(value),
        ($3.DoctorServiceListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AssignServiceRequest, $3.StatusResponse>(
        'AssignServiceToDoctor',
        assignServiceToDoctor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AssignServiceRequest.fromBuffer(value),
        ($3.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GlobalSearchRequest, $3.GlobalSearchResponse>(
        'GlobalSearch',
        globalSearch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GlobalSearchRequest.fromBuffer(value),
        ($3.GlobalSearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateDoctorRequest, $3.DoctorResponse>(
        'UpdateDoctor',
        updateDoctor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateDoctorRequest.fromBuffer(value),
        ($3.DoctorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DoctorIdRequest, $3.StatusResponse>(
        'DeleteDoctor',
        deleteDoctor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DoctorIdRequest.fromBuffer(value),
        ($3.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePasswordRequest, $3.StatusResponse>(
        'UpdateDoctorPassword',
        updateDoctorPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePasswordRequest.fromBuffer(value),
        ($3.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DoctorIdRequest, $3.StatusResponse>(
        'ResetDoctorPassword',
        resetDoctorPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DoctorIdRequest.fromBuffer(value),
        ($3.StatusResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.DoctorResponse> createDoctor_Pre($grpc.ServiceCall call, $async.Future<$3.CreateDoctorRequest> request) async {
    return createDoctor(call, await request);
  }

  $async.Future<$3.DoctorListResponse> getAllDoctors_Pre($grpc.ServiceCall call, $async.Future<$3.DoctorFilter> request) async {
    return getAllDoctors(call, await request);
  }

  $async.Future<$3.DoctorResponse> getDoctorById_Pre($grpc.ServiceCall call, $async.Future<$3.DoctorIdRequest> request) async {
    return getDoctorById(call, await request);
  }

  $async.Future<$3.DoctorServiceListResponse> getDoctorServices_Pre($grpc.ServiceCall call, $async.Future<$3.DoctorIdRequest> request) async {
    return getDoctorServices(call, await request);
  }

  $async.Future<$3.StatusResponse> assignServiceToDoctor_Pre($grpc.ServiceCall call, $async.Future<$3.AssignServiceRequest> request) async {
    return assignServiceToDoctor(call, await request);
  }

  $async.Future<$3.GlobalSearchResponse> globalSearch_Pre($grpc.ServiceCall call, $async.Future<$3.GlobalSearchRequest> request) async {
    return globalSearch(call, await request);
  }

  $async.Future<$3.DoctorResponse> updateDoctor_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateDoctorRequest> request) async {
    return updateDoctor(call, await request);
  }

  $async.Future<$3.StatusResponse> deleteDoctor_Pre($grpc.ServiceCall call, $async.Future<$3.DoctorIdRequest> request) async {
    return deleteDoctor(call, await request);
  }

  $async.Future<$3.StatusResponse> updateDoctorPassword_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePasswordRequest> request) async {
    return updateDoctorPassword(call, await request);
  }

  $async.Future<$3.StatusResponse> resetDoctorPassword_Pre($grpc.ServiceCall call, $async.Future<$3.DoctorIdRequest> request) async {
    return resetDoctorPassword(call, await request);
  }

  $async.Future<$3.DoctorResponse> createDoctor($grpc.ServiceCall call, $3.CreateDoctorRequest request);
  $async.Future<$3.DoctorListResponse> getAllDoctors($grpc.ServiceCall call, $3.DoctorFilter request);
  $async.Future<$3.DoctorResponse> getDoctorById($grpc.ServiceCall call, $3.DoctorIdRequest request);
  $async.Future<$3.DoctorServiceListResponse> getDoctorServices($grpc.ServiceCall call, $3.DoctorIdRequest request);
  $async.Future<$3.StatusResponse> assignServiceToDoctor($grpc.ServiceCall call, $3.AssignServiceRequest request);
  $async.Future<$3.GlobalSearchResponse> globalSearch($grpc.ServiceCall call, $3.GlobalSearchRequest request);
  $async.Future<$3.DoctorResponse> updateDoctor($grpc.ServiceCall call, $3.UpdateDoctorRequest request);
  $async.Future<$3.StatusResponse> deleteDoctor($grpc.ServiceCall call, $3.DoctorIdRequest request);
  $async.Future<$3.StatusResponse> updateDoctorPassword($grpc.ServiceCall call, $3.UpdatePasswordRequest request);
  $async.Future<$3.StatusResponse> resetDoctorPassword($grpc.ServiceCall call, $3.DoctorIdRequest request);
}
