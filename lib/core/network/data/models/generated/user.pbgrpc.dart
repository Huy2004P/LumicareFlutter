//
//  Generated code. Do not modify.
//  source: user.proto
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

import 'user.pb.dart' as $15;

export 'user.pb.dart';

@$pb.GrpcServiceName('user.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$getAllUsers = $grpc.ClientMethod<$15.UserFilterRequest, $15.UserListResponse>(
      '/user.UserService/GetAllUsers',
      ($15.UserFilterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UserListResponse.fromBuffer(value));
  static final _$toggleUserStatus = $grpc.ClientMethod<$15.UserStatusRequest, $15.UserActionResponse>(
      '/user.UserService/ToggleUserStatus',
      ($15.UserStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UserActionResponse.fromBuffer(value));
  static final _$resetPassword = $grpc.ClientMethod<$15.UserStatusRequest, $15.UserActionResponse>(
      '/user.UserService/ResetPassword',
      ($15.UserStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UserActionResponse.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$15.UserStatusRequest, $15.UserActionResponse>(
      '/user.UserService/DeleteUser',
      ($15.UserStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UserActionResponse.fromBuffer(value));
  static final _$changePassword = $grpc.ClientMethod<$15.ChangePasswordRequest, $15.UserActionResponse>(
      '/user.UserService/ChangePassword',
      ($15.ChangePasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $15.UserActionResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$15.UserListResponse> getAllUsers($15.UserFilterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllUsers, request, options: options);
  }

  $grpc.ResponseFuture<$15.UserActionResponse> toggleUserStatus($15.UserStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$toggleUserStatus, request, options: options);
  }

  $grpc.ResponseFuture<$15.UserActionResponse> resetPassword($15.UserStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetPassword, request, options: options);
  }

  $grpc.ResponseFuture<$15.UserActionResponse> deleteUser($15.UserStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }

  $grpc.ResponseFuture<$15.UserActionResponse> changePassword($15.ChangePasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changePassword, request, options: options);
  }
}

@$pb.GrpcServiceName('user.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.UserFilterRequest, $15.UserListResponse>(
        'GetAllUsers',
        getAllUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UserFilterRequest.fromBuffer(value),
        ($15.UserListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UserStatusRequest, $15.UserActionResponse>(
        'ToggleUserStatus',
        toggleUserStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UserStatusRequest.fromBuffer(value),
        ($15.UserActionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UserStatusRequest, $15.UserActionResponse>(
        'ResetPassword',
        resetPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UserStatusRequest.fromBuffer(value),
        ($15.UserActionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.UserStatusRequest, $15.UserActionResponse>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.UserStatusRequest.fromBuffer(value),
        ($15.UserActionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$15.ChangePasswordRequest, $15.UserActionResponse>(
        'ChangePassword',
        changePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $15.ChangePasswordRequest.fromBuffer(value),
        ($15.UserActionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.UserListResponse> getAllUsers_Pre($grpc.ServiceCall call, $async.Future<$15.UserFilterRequest> request) async {
    return getAllUsers(call, await request);
  }

  $async.Future<$15.UserActionResponse> toggleUserStatus_Pre($grpc.ServiceCall call, $async.Future<$15.UserStatusRequest> request) async {
    return toggleUserStatus(call, await request);
  }

  $async.Future<$15.UserActionResponse> resetPassword_Pre($grpc.ServiceCall call, $async.Future<$15.UserStatusRequest> request) async {
    return resetPassword(call, await request);
  }

  $async.Future<$15.UserActionResponse> deleteUser_Pre($grpc.ServiceCall call, $async.Future<$15.UserStatusRequest> request) async {
    return deleteUser(call, await request);
  }

  $async.Future<$15.UserActionResponse> changePassword_Pre($grpc.ServiceCall call, $async.Future<$15.ChangePasswordRequest> request) async {
    return changePassword(call, await request);
  }

  $async.Future<$15.UserListResponse> getAllUsers($grpc.ServiceCall call, $15.UserFilterRequest request);
  $async.Future<$15.UserActionResponse> toggleUserStatus($grpc.ServiceCall call, $15.UserStatusRequest request);
  $async.Future<$15.UserActionResponse> resetPassword($grpc.ServiceCall call, $15.UserStatusRequest request);
  $async.Future<$15.UserActionResponse> deleteUser($grpc.ServiceCall call, $15.UserStatusRequest request);
  $async.Future<$15.UserActionResponse> changePassword($grpc.ServiceCall call, $15.ChangePasswordRequest request);
}
