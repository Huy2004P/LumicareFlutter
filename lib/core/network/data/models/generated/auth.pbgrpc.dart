//
//  Generated code. Do not modify.
//  source: auth.proto
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

import 'auth.pb.dart' as $1;

export 'auth.pb.dart';

@$pb.GrpcServiceName('auth.AuthService')
class AuthServiceClient extends $grpc.Client {
  static final _$register = $grpc.ClientMethod<$1.RegisterRequest, $1.AuthResponse>(
      '/auth.AuthService/Register',
      ($1.RegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AuthResponse.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$1.LoginRequest, $1.AuthResponse>(
      '/auth.AuthService/Login',
      ($1.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AuthResponse.fromBuffer(value));
  static final _$refreshToken = $grpc.ClientMethod<$1.RefreshTokenRequest, $1.AuthResponse>(
      '/auth.AuthService/RefreshToken',
      ($1.RefreshTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AuthResponse.fromBuffer(value));
  static final _$logout = $grpc.ClientMethod<$1.Empty, $1.StatusResponse>(
      '/auth.AuthService/Logout',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StatusResponse.fromBuffer(value));
  static final _$forgotPassword = $grpc.ClientMethod<$1.ForgotPasswordRequest, $1.ForgotPasswordResponse>(
      '/auth.AuthService/ForgotPassword',
      ($1.ForgotPasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ForgotPasswordResponse.fromBuffer(value));
  static final _$resetPassword = $grpc.ClientMethod<$1.ResetPasswordRequest, $1.ResetPasswordResponse>(
      '/auth.AuthService/ResetPassword',
      ($1.ResetPasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ResetPasswordResponse.fromBuffer(value));
  static final _$verifyOTP = $grpc.ClientMethod<$1.VerifyOTPRequest, $1.StatusResponse>(
      '/auth.AuthService/VerifyOTP',
      ($1.VerifyOTPRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StatusResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.AuthResponse> register($1.RegisterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$1.AuthResponse> login($1.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$1.AuthResponse> refreshToken($1.RefreshTokenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshToken, request, options: options);
  }

  $grpc.ResponseFuture<$1.StatusResponse> logout($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logout, request, options: options);
  }

  $grpc.ResponseFuture<$1.ForgotPasswordResponse> forgotPassword($1.ForgotPasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$forgotPassword, request, options: options);
  }

  $grpc.ResponseFuture<$1.ResetPasswordResponse> resetPassword($1.ResetPasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resetPassword, request, options: options);
  }

  $grpc.ResponseFuture<$1.StatusResponse> verifyOTP($1.VerifyOTPRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyOTP, request, options: options);
  }
}

@$pb.GrpcServiceName('auth.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.RegisterRequest, $1.AuthResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RegisterRequest.fromBuffer(value),
        ($1.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LoginRequest, $1.AuthResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LoginRequest.fromBuffer(value),
        ($1.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.RefreshTokenRequest, $1.AuthResponse>(
        'RefreshToken',
        refreshToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RefreshTokenRequest.fromBuffer(value),
        ($1.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.StatusResponse>(
        'Logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ForgotPasswordRequest, $1.ForgotPasswordResponse>(
        'ForgotPassword',
        forgotPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ForgotPasswordRequest.fromBuffer(value),
        ($1.ForgotPasswordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ResetPasswordRequest, $1.ResetPasswordResponse>(
        'ResetPassword',
        resetPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ResetPasswordRequest.fromBuffer(value),
        ($1.ResetPasswordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.VerifyOTPRequest, $1.StatusResponse>(
        'VerifyOTP',
        verifyOTP_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.VerifyOTPRequest.fromBuffer(value),
        ($1.StatusResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.AuthResponse> register_Pre($grpc.ServiceCall call, $async.Future<$1.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$1.AuthResponse> login_Pre($grpc.ServiceCall call, $async.Future<$1.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$1.AuthResponse> refreshToken_Pre($grpc.ServiceCall call, $async.Future<$1.RefreshTokenRequest> request) async {
    return refreshToken(call, await request);
  }

  $async.Future<$1.StatusResponse> logout_Pre($grpc.ServiceCall call, $async.Future<$1.Empty> request) async {
    return logout(call, await request);
  }

  $async.Future<$1.ForgotPasswordResponse> forgotPassword_Pre($grpc.ServiceCall call, $async.Future<$1.ForgotPasswordRequest> request) async {
    return forgotPassword(call, await request);
  }

  $async.Future<$1.ResetPasswordResponse> resetPassword_Pre($grpc.ServiceCall call, $async.Future<$1.ResetPasswordRequest> request) async {
    return resetPassword(call, await request);
  }

  $async.Future<$1.StatusResponse> verifyOTP_Pre($grpc.ServiceCall call, $async.Future<$1.VerifyOTPRequest> request) async {
    return verifyOTP(call, await request);
  }

  $async.Future<$1.AuthResponse> register($grpc.ServiceCall call, $1.RegisterRequest request);
  $async.Future<$1.AuthResponse> login($grpc.ServiceCall call, $1.LoginRequest request);
  $async.Future<$1.AuthResponse> refreshToken($grpc.ServiceCall call, $1.RefreshTokenRequest request);
  $async.Future<$1.StatusResponse> logout($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.ForgotPasswordResponse> forgotPassword($grpc.ServiceCall call, $1.ForgotPasswordRequest request);
  $async.Future<$1.ResetPasswordResponse> resetPassword($grpc.ServiceCall call, $1.ResetPasswordRequest request);
  $async.Future<$1.StatusResponse> verifyOTP($grpc.ServiceCall call, $1.VerifyOTPRequest request);
}
