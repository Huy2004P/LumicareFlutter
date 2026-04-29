//
//  Generated code. Do not modify.
//  source: patientProfile.proto
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

import 'patientProfile.pb.dart' as $8;

export 'patientProfile.pb.dart';

@$pb.GrpcServiceName('patient_profile.PatientProfileService')
class PatientProfileServiceClient extends $grpc.Client {
  static final _$getAllProfiles = $grpc.ClientMethod<$8.GetProfilesRequest, $8.GetProfilesResponse>(
      '/patient_profile.PatientProfileService/GetAllProfiles',
      ($8.GetProfilesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.GetProfilesResponse.fromBuffer(value));
  static final _$createProfile = $grpc.ClientMethod<$8.CreateProfileRequest, $8.ProfileResponse>(
      '/patient_profile.PatientProfileService/CreateProfile',
      ($8.CreateProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ProfileResponse.fromBuffer(value));
  static final _$updateProfile = $grpc.ClientMethod<$8.UpdateProfileRequest, $8.ProfileResponse>(
      '/patient_profile.PatientProfileService/UpdateProfile',
      ($8.UpdateProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ProfileResponse.fromBuffer(value));
  static final _$deleteProfile = $grpc.ClientMethod<$8.DeleteProfileRequest, $8.StatusResponse>(
      '/patient_profile.PatientProfileService/DeleteProfile',
      ($8.DeleteProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.StatusResponse.fromBuffer(value));
  static final _$getProfileById = $grpc.ClientMethod<$8.GetByIdRequest, $8.ProfileResponse>(
      '/patient_profile.PatientProfileService/GetProfileById',
      ($8.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.ProfileResponse.fromBuffer(value));

  PatientProfileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.GetProfilesResponse> getAllProfiles($8.GetProfilesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllProfiles, request, options: options);
  }

  $grpc.ResponseFuture<$8.ProfileResponse> createProfile($8.CreateProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProfile, request, options: options);
  }

  $grpc.ResponseFuture<$8.ProfileResponse> updateProfile($8.UpdateProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProfile, request, options: options);
  }

  $grpc.ResponseFuture<$8.StatusResponse> deleteProfile($8.DeleteProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteProfile, request, options: options);
  }

  $grpc.ResponseFuture<$8.ProfileResponse> getProfileById($8.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProfileById, request, options: options);
  }
}

@$pb.GrpcServiceName('patient_profile.PatientProfileService')
abstract class PatientProfileServiceBase extends $grpc.Service {
  $core.String get $name => 'patient_profile.PatientProfileService';

  PatientProfileServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.GetProfilesRequest, $8.GetProfilesResponse>(
        'GetAllProfiles',
        getAllProfiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetProfilesRequest.fromBuffer(value),
        ($8.GetProfilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.CreateProfileRequest, $8.ProfileResponse>(
        'CreateProfile',
        createProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.CreateProfileRequest.fromBuffer(value),
        ($8.ProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.UpdateProfileRequest, $8.ProfileResponse>(
        'UpdateProfile',
        updateProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.UpdateProfileRequest.fromBuffer(value),
        ($8.ProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.DeleteProfileRequest, $8.StatusResponse>(
        'DeleteProfile',
        deleteProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.DeleteProfileRequest.fromBuffer(value),
        ($8.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetByIdRequest, $8.ProfileResponse>(
        'GetProfileById',
        getProfileById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.GetByIdRequest.fromBuffer(value),
        ($8.ProfileResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.GetProfilesResponse> getAllProfiles_Pre($grpc.ServiceCall call, $async.Future<$8.GetProfilesRequest> request) async {
    return getAllProfiles(call, await request);
  }

  $async.Future<$8.ProfileResponse> createProfile_Pre($grpc.ServiceCall call, $async.Future<$8.CreateProfileRequest> request) async {
    return createProfile(call, await request);
  }

  $async.Future<$8.ProfileResponse> updateProfile_Pre($grpc.ServiceCall call, $async.Future<$8.UpdateProfileRequest> request) async {
    return updateProfile(call, await request);
  }

  $async.Future<$8.StatusResponse> deleteProfile_Pre($grpc.ServiceCall call, $async.Future<$8.DeleteProfileRequest> request) async {
    return deleteProfile(call, await request);
  }

  $async.Future<$8.ProfileResponse> getProfileById_Pre($grpc.ServiceCall call, $async.Future<$8.GetByIdRequest> request) async {
    return getProfileById(call, await request);
  }

  $async.Future<$8.GetProfilesResponse> getAllProfiles($grpc.ServiceCall call, $8.GetProfilesRequest request);
  $async.Future<$8.ProfileResponse> createProfile($grpc.ServiceCall call, $8.CreateProfileRequest request);
  $async.Future<$8.ProfileResponse> updateProfile($grpc.ServiceCall call, $8.UpdateProfileRequest request);
  $async.Future<$8.StatusResponse> deleteProfile($grpc.ServiceCall call, $8.DeleteProfileRequest request);
  $async.Future<$8.ProfileResponse> getProfileById($grpc.ServiceCall call, $8.GetByIdRequest request);
}
