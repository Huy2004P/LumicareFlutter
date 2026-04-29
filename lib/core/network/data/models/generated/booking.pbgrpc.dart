//
//  Generated code. Do not modify.
//  source: booking.proto
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

import 'booking.pb.dart' as $2;

export 'booking.pb.dart';

@$pb.GrpcServiceName('booking.BookingService')
class BookingServiceClient extends $grpc.Client {
  static final _$createBooking = $grpc.ClientMethod<$2.CreateBookingRequest, $2.BookingResponse>(
      '/booking.BookingService/CreateBooking',
      ($2.CreateBookingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.BookingResponse.fromBuffer(value));
  static final _$getBookingHistory = $grpc.ClientMethod<$2.GetHistoryRequest, $2.HistoryResponse>(
      '/booking.BookingService/GetBookingHistory',
      ($2.GetHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.HistoryResponse.fromBuffer(value));
  static final _$cancelBooking = $grpc.ClientMethod<$2.CancelBookingRequest, $2.BookingResponse>(
      '/booking.BookingService/CancelBooking',
      ($2.CancelBookingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.BookingResponse.fromBuffer(value));
  static final _$deleteBooking = $grpc.ClientMethod<$2.DeleteBookingRequest, $2.BookingResponse>(
      '/booking.BookingService/DeleteBooking',
      ($2.DeleteBookingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.BookingResponse.fromBuffer(value));

  BookingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.BookingResponse> createBooking($2.CreateBookingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBooking, request, options: options);
  }

  $grpc.ResponseFuture<$2.HistoryResponse> getBookingHistory($2.GetHistoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBookingHistory, request, options: options);
  }

  $grpc.ResponseFuture<$2.BookingResponse> cancelBooking($2.CancelBookingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelBooking, request, options: options);
  }

  $grpc.ResponseFuture<$2.BookingResponse> deleteBooking($2.DeleteBookingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBooking, request, options: options);
  }
}

@$pb.GrpcServiceName('booking.BookingService')
abstract class BookingServiceBase extends $grpc.Service {
  $core.String get $name => 'booking.BookingService';

  BookingServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreateBookingRequest, $2.BookingResponse>(
        'CreateBooking',
        createBooking_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CreateBookingRequest.fromBuffer(value),
        ($2.BookingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetHistoryRequest, $2.HistoryResponse>(
        'GetBookingHistory',
        getBookingHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetHistoryRequest.fromBuffer(value),
        ($2.HistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CancelBookingRequest, $2.BookingResponse>(
        'CancelBooking',
        cancelBooking_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CancelBookingRequest.fromBuffer(value),
        ($2.BookingResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteBookingRequest, $2.BookingResponse>(
        'DeleteBooking',
        deleteBooking_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.DeleteBookingRequest.fromBuffer(value),
        ($2.BookingResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.BookingResponse> createBooking_Pre($grpc.ServiceCall call, $async.Future<$2.CreateBookingRequest> request) async {
    return createBooking(call, await request);
  }

  $async.Future<$2.HistoryResponse> getBookingHistory_Pre($grpc.ServiceCall call, $async.Future<$2.GetHistoryRequest> request) async {
    return getBookingHistory(call, await request);
  }

  $async.Future<$2.BookingResponse> cancelBooking_Pre($grpc.ServiceCall call, $async.Future<$2.CancelBookingRequest> request) async {
    return cancelBooking(call, await request);
  }

  $async.Future<$2.BookingResponse> deleteBooking_Pre($grpc.ServiceCall call, $async.Future<$2.DeleteBookingRequest> request) async {
    return deleteBooking(call, await request);
  }

  $async.Future<$2.BookingResponse> createBooking($grpc.ServiceCall call, $2.CreateBookingRequest request);
  $async.Future<$2.HistoryResponse> getBookingHistory($grpc.ServiceCall call, $2.GetHistoryRequest request);
  $async.Future<$2.BookingResponse> cancelBooking($grpc.ServiceCall call, $2.CancelBookingRequest request);
  $async.Future<$2.BookingResponse> deleteBooking($grpc.ServiceCall call, $2.DeleteBookingRequest request);
}
