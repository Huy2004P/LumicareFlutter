//
//  Generated code. Do not modify.
//  source: notification.proto
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

import 'notification.pb.dart' as $7;

export 'notification.pb.dart';

@$pb.GrpcServiceName('notification.NotificationService')
class NotificationServiceClient extends $grpc.Client {
  static final _$getMyNotifications = $grpc.ClientMethod<$7.GetMyNotificationsRequest, $7.NotificationListResponse>(
      '/notification.NotificationService/GetMyNotifications',
      ($7.GetMyNotificationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.NotificationListResponse.fromBuffer(value));
  static final _$markAsRead = $grpc.ClientMethod<$7.MarkAsReadRequest, $7.StatusResponse>(
      '/notification.NotificationService/MarkAsRead',
      ($7.MarkAsReadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.StatusResponse.fromBuffer(value));
  static final _$markAllAsRead = $grpc.ClientMethod<$7.MarkAllAsReadRequest, $7.StatusResponse>(
      '/notification.NotificationService/MarkAllAsRead',
      ($7.MarkAllAsReadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.StatusResponse.fromBuffer(value));
  static final _$createNotification = $grpc.ClientMethod<$7.CreateNotificationRequest, $7.StatusResponse>(
      '/notification.NotificationService/CreateNotification',
      ($7.CreateNotificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.StatusResponse.fromBuffer(value));
  static final _$streamNotifications = $grpc.ClientMethod<$7.StreamRequest, $7.NotificationItem>(
      '/notification.NotificationService/StreamNotifications',
      ($7.StreamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.NotificationItem.fromBuffer(value));

  NotificationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.NotificationListResponse> getMyNotifications($7.GetMyNotificationsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMyNotifications, request, options: options);
  }

  $grpc.ResponseFuture<$7.StatusResponse> markAsRead($7.MarkAsReadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$markAsRead, request, options: options);
  }

  $grpc.ResponseFuture<$7.StatusResponse> markAllAsRead($7.MarkAllAsReadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$markAllAsRead, request, options: options);
  }

  $grpc.ResponseFuture<$7.StatusResponse> createNotification($7.CreateNotificationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createNotification, request, options: options);
  }

  $grpc.ResponseStream<$7.NotificationItem> streamNotifications($7.StreamRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamNotifications, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('notification.NotificationService')
abstract class NotificationServiceBase extends $grpc.Service {
  $core.String get $name => 'notification.NotificationService';

  NotificationServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.GetMyNotificationsRequest, $7.NotificationListResponse>(
        'GetMyNotifications',
        getMyNotifications_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.GetMyNotificationsRequest.fromBuffer(value),
        ($7.NotificationListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.MarkAsReadRequest, $7.StatusResponse>(
        'MarkAsRead',
        markAsRead_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.MarkAsReadRequest.fromBuffer(value),
        ($7.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.MarkAllAsReadRequest, $7.StatusResponse>(
        'MarkAllAsRead',
        markAllAsRead_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.MarkAllAsReadRequest.fromBuffer(value),
        ($7.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.CreateNotificationRequest, $7.StatusResponse>(
        'CreateNotification',
        createNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.CreateNotificationRequest.fromBuffer(value),
        ($7.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.StreamRequest, $7.NotificationItem>(
        'StreamNotifications',
        streamNotifications_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $7.StreamRequest.fromBuffer(value),
        ($7.NotificationItem value) => value.writeToBuffer()));
  }

  $async.Future<$7.NotificationListResponse> getMyNotifications_Pre($grpc.ServiceCall call, $async.Future<$7.GetMyNotificationsRequest> request) async {
    return getMyNotifications(call, await request);
  }

  $async.Future<$7.StatusResponse> markAsRead_Pre($grpc.ServiceCall call, $async.Future<$7.MarkAsReadRequest> request) async {
    return markAsRead(call, await request);
  }

  $async.Future<$7.StatusResponse> markAllAsRead_Pre($grpc.ServiceCall call, $async.Future<$7.MarkAllAsReadRequest> request) async {
    return markAllAsRead(call, await request);
  }

  $async.Future<$7.StatusResponse> createNotification_Pre($grpc.ServiceCall call, $async.Future<$7.CreateNotificationRequest> request) async {
    return createNotification(call, await request);
  }

  $async.Stream<$7.NotificationItem> streamNotifications_Pre($grpc.ServiceCall call, $async.Future<$7.StreamRequest> request) async* {
    yield* streamNotifications(call, await request);
  }

  $async.Future<$7.NotificationListResponse> getMyNotifications($grpc.ServiceCall call, $7.GetMyNotificationsRequest request);
  $async.Future<$7.StatusResponse> markAsRead($grpc.ServiceCall call, $7.MarkAsReadRequest request);
  $async.Future<$7.StatusResponse> markAllAsRead($grpc.ServiceCall call, $7.MarkAllAsReadRequest request);
  $async.Future<$7.StatusResponse> createNotification($grpc.ServiceCall call, $7.CreateNotificationRequest request);
  $async.Stream<$7.NotificationItem> streamNotifications($grpc.ServiceCall call, $7.StreamRequest request);
}
