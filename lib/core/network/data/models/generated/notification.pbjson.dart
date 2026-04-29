//
//  Generated code. Do not modify.
//  source: notification.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use streamRequestDescriptor instead')
const StreamRequest$json = {
  '1': 'StreamRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `StreamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamRequestDescriptor = $convert.base64Decode(
    'Cg1TdHJlYW1SZXF1ZXN0EhcKB3VzZXJfaWQYASABKAVSBnVzZXJJZA==');

@$core.Deprecated('Use getMyNotificationsRequestDescriptor instead')
const GetMyNotificationsRequest$json = {
  '1': 'GetMyNotificationsRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `GetMyNotificationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMyNotificationsRequestDescriptor = $convert.base64Decode(
    'ChlHZXRNeU5vdGlmaWNhdGlvbnNSZXF1ZXN0EhcKB3VzZXJfaWQYASABKAVSBnVzZXJJZA==');

@$core.Deprecated('Use markAsReadRequestDescriptor instead')
const MarkAsReadRequest$json = {
  '1': 'MarkAsReadRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `MarkAsReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markAsReadRequestDescriptor = $convert.base64Decode(
    'ChFNYXJrQXNSZWFkUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSFwoHdXNlcl9pZBgCIAEoBVIGdX'
    'Nlcklk');

@$core.Deprecated('Use markAllAsReadRequestDescriptor instead')
const MarkAllAsReadRequest$json = {
  '1': 'MarkAllAsReadRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `MarkAllAsReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markAllAsReadRequestDescriptor = $convert.base64Decode(
    'ChRNYXJrQWxsQXNSZWFkUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgFUgZ1c2VySWQ=');

@$core.Deprecated('Use createNotificationRequestDescriptor instead')
const CreateNotificationRequest$json = {
  '1': 'CreateNotificationRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `CreateNotificationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createNotificationRequestDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVOb3RpZmljYXRpb25SZXF1ZXN0EhcKB3VzZXJfaWQYASABKAVSBnVzZXJJZBIUCg'
    'V0aXRsZRgCIAEoCVIFdGl0bGUSGAoHbWVzc2FnZRgDIAEoCVIHbWVzc2FnZRISCgR0eXBlGAQg'
    'ASgJUgR0eXBl');

@$core.Deprecated('Use statusResponseDescriptor instead')
const StatusResponse$json = {
  '1': 'StatusResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `StatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusResponseDescriptor = $convert.base64Decode(
    'Cg5TdGF0dXNSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2UYAi'
    'ABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use notificationItemDescriptor instead')
const NotificationItem$json = {
  '1': 'NotificationItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
    {'1': 'is_read', '3': 6, '4': 1, '5': 8, '10': 'isRead'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
  ],
};

/// Descriptor for `NotificationItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationItemDescriptor = $convert.base64Decode(
    'ChBOb3RpZmljYXRpb25JdGVtEg4KAmlkGAEgASgFUgJpZBIXCgd1c2VyX2lkGAIgASgFUgZ1c2'
    'VySWQSFAoFdGl0bGUYAyABKAlSBXRpdGxlEhgKB21lc3NhZ2UYBCABKAlSB21lc3NhZ2USEgoE'
    'dHlwZRgFIAEoCVIEdHlwZRIXCgdpc19yZWFkGAYgASgIUgZpc1JlYWQSHQoKY3JlYXRlZF9hdB'
    'gHIAEoCVIJY3JlYXRlZEF0');

@$core.Deprecated('Use notificationListResponseDescriptor instead')
const NotificationListResponse$json = {
  '1': 'NotificationListResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'data', '3': 3, '4': 3, '5': 11, '6': '.notification.NotificationItem', '10': 'data'},
  ],
};

/// Descriptor for `NotificationListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationListResponseDescriptor = $convert.base64Decode(
    'ChhOb3RpZmljYXRpb25MaXN0UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCg'
    'dtZXNzYWdlGAIgASgJUgdtZXNzYWdlEjIKBGRhdGEYAyADKAsyHi5ub3RpZmljYXRpb24uTm90'
    'aWZpY2F0aW9uSXRlbVIEZGF0YQ==');

