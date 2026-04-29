//
//  Generated code. Do not modify.
//  source: profile.proto
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

import 'profile.pb.dart' as $10;

export 'profile.pb.dart';

@$pb.GrpcServiceName('profile.ProfileService')
class ProfileServiceClient extends $grpc.Client {
  static final _$getMyProfile = $grpc.ClientMethod<$10.Empty, $10.UserProfileResponse>(
      '/profile.ProfileService/GetMyProfile',
      ($10.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UserProfileResponse.fromBuffer(value));
  static final _$updateProfile = $grpc.ClientMethod<$10.UpdateProfileRequest, $10.UserProfileResponse>(
      '/profile.ProfileService/UpdateProfile',
      ($10.UpdateProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.UserProfileResponse.fromBuffer(value));
  static final _$requestChangePasswordOTP = $grpc.ClientMethod<$10.Empty, $10.StatusResponse>(
      '/profile.ProfileService/RequestChangePasswordOTP',
      ($10.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.StatusResponse.fromBuffer(value));
  static final _$changePassword = $grpc.ClientMethod<$10.ChangePasswordRequest, $10.StatusResponse>(
      '/profile.ProfileService/ChangePassword',
      ($10.ChangePasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.StatusResponse.fromBuffer(value));

  ProfileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.UserProfileResponse> getMyProfile($10.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyProfile, request, options: options);
  }

  $grpc.ResponseFuture<$10.UserProfileResponse> updateProfile($10.UpdateProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProfile, request, options: options);
  }

  $grpc.ResponseFuture<$10.StatusResponse> requestChangePasswordOTP($10.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$requestChangePasswordOTP, request, options: options);
  }

  $grpc.ResponseFuture<$10.StatusResponse> changePassword($10.ChangePasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changePassword, request, options: options);
  }
}

@$pb.GrpcServiceName('profile.ProfileService')
abstract class ProfileServiceBase extends $grpc.Service {
  $core.String get $name => 'profile.ProfileService';

  ProfileServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.Empty, $10.UserProfileResponse>(
        'GetMyProfile',
        getMyProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.Empty.fromBuffer(value),
        ($10.UserProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.UpdateProfileRequest, $10.UserProfileResponse>(
        'UpdateProfile',
        updateProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.UpdateProfileRequest.fromBuffer(value),
        ($10.UserProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.Empty, $10.StatusResponse>(
        'RequestChangePasswordOTP',
        requestChangePasswordOTP_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.Empty.fromBuffer(value),
        ($10.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.ChangePasswordRequest, $10.StatusResponse>(
        'ChangePassword',
        changePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.ChangePasswordRequest.fromBuffer(value),
        ($10.StatusResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.UserProfileResponse> getMyProfile_Pre($grpc.ServiceCall call, $async.Future<$10.Empty> request) async {
    return getMyProfile(call, await request);
  }

  $async.Future<$10.UserProfileResponse> updateProfile_Pre($grpc.ServiceCall call, $async.Future<$10.UpdateProfileRequest> request) async {
    return updateProfile(call, await request);
  }

  $async.Future<$10.StatusResponse> requestChangePasswordOTP_Pre($grpc.ServiceCall call, $async.Future<$10.Empty> request) async {
    return requestChangePasswordOTP(call, await request);
  }

  $async.Future<$10.StatusResponse> changePassword_Pre($grpc.ServiceCall call, $async.Future<$10.ChangePasswordRequest> request) async {
    return changePassword(call, await request);
  }

  $async.Future<$10.UserProfileResponse> getMyProfile($grpc.ServiceCall call, $10.Empty request);
  $async.Future<$10.UserProfileResponse> updateProfile($grpc.ServiceCall call, $10.UpdateProfileRequest request);
  $async.Future<$10.StatusResponse> requestChangePasswordOTP($grpc.ServiceCall call, $10.Empty request);
  $async.Future<$10.StatusResponse> changePassword($grpc.ServiceCall call, $10.ChangePasswordRequest request);
}
