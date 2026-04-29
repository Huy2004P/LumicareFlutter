//
//  Generated code. Do not modify.
//  source: appointment.proto
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

import 'appointment.pb.dart' as $0;

export 'appointment.pb.dart';

@$pb.GrpcServiceName('appointment.AppointmentService')
class AppointmentServiceClient extends $grpc.Client {
  static final _$getListPatientForDoctor = $grpc.ClientMethod<$0.GetListPatientRequest, $0.ListPatientResponse>(
      '/appointment.AppointmentService/GetListPatientForDoctor',
      ($0.GetListPatientRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListPatientResponse.fromBuffer(value));
  static final _$verifyBooking = $grpc.ClientMethod<$0.VerifyBookingRequest, $0.VerifyResponse>(
      '/appointment.AppointmentService/VerifyBooking',
      ($0.VerifyBookingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.VerifyResponse.fromBuffer(value));
  static final _$finishAppointment = $grpc.ClientMethod<$0.FinishAppointmentRequest, $0.FinishResponse>(
      '/appointment.AppointmentService/FinishAppointment',
      ($0.FinishAppointmentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FinishResponse.fromBuffer(value));
  static final _$getMedicalHistory = $grpc.ClientMethod<$0.GetMedicalHistoryRequest, $0.MedicalHistoryResponse>(
      '/appointment.AppointmentService/GetMedicalHistory',
      ($0.GetMedicalHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MedicalHistoryResponse.fromBuffer(value));

  AppointmentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListPatientResponse> getListPatientForDoctor($0.GetListPatientRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getListPatientForDoctor, request, options: options);
  }

  $grpc.ResponseFuture<$0.VerifyResponse> verifyBooking($0.VerifyBookingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyBooking, request, options: options);
  }

  $grpc.ResponseFuture<$0.FinishResponse> finishAppointment($0.FinishAppointmentRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$finishAppointment, request, options: options);
  }

  $grpc.ResponseFuture<$0.MedicalHistoryResponse> getMedicalHistory($0.GetMedicalHistoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMedicalHistory, request, options: options);
  }
}

@$pb.GrpcServiceName('appointment.AppointmentService')
abstract class AppointmentServiceBase extends $grpc.Service {
  $core.String get $name => 'appointment.AppointmentService';

  AppointmentServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetListPatientRequest, $0.ListPatientResponse>(
        'GetListPatientForDoctor',
        getListPatientForDoctor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetListPatientRequest.fromBuffer(value),
        ($0.ListPatientResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VerifyBookingRequest, $0.VerifyResponse>(
        'VerifyBooking',
        verifyBooking_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VerifyBookingRequest.fromBuffer(value),
        ($0.VerifyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FinishAppointmentRequest, $0.FinishResponse>(
        'FinishAppointment',
        finishAppointment_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FinishAppointmentRequest.fromBuffer(value),
        ($0.FinishResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMedicalHistoryRequest, $0.MedicalHistoryResponse>(
        'GetMedicalHistory',
        getMedicalHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMedicalHistoryRequest.fromBuffer(value),
        ($0.MedicalHistoryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListPatientResponse> getListPatientForDoctor_Pre($grpc.ServiceCall call, $async.Future<$0.GetListPatientRequest> request) async {
    return getListPatientForDoctor(call, await request);
  }

  $async.Future<$0.VerifyResponse> verifyBooking_Pre($grpc.ServiceCall call, $async.Future<$0.VerifyBookingRequest> request) async {
    return verifyBooking(call, await request);
  }

  $async.Future<$0.FinishResponse> finishAppointment_Pre($grpc.ServiceCall call, $async.Future<$0.FinishAppointmentRequest> request) async {
    return finishAppointment(call, await request);
  }

  $async.Future<$0.MedicalHistoryResponse> getMedicalHistory_Pre($grpc.ServiceCall call, $async.Future<$0.GetMedicalHistoryRequest> request) async {
    return getMedicalHistory(call, await request);
  }

  $async.Future<$0.ListPatientResponse> getListPatientForDoctor($grpc.ServiceCall call, $0.GetListPatientRequest request);
  $async.Future<$0.VerifyResponse> verifyBooking($grpc.ServiceCall call, $0.VerifyBookingRequest request);
  $async.Future<$0.FinishResponse> finishAppointment($grpc.ServiceCall call, $0.FinishAppointmentRequest request);
  $async.Future<$0.MedicalHistoryResponse> getMedicalHistory($grpc.ServiceCall call, $0.GetMedicalHistoryRequest request);
}
