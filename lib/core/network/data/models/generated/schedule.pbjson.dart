//
//  Generated code. Do not modify.
//  source: schedule.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use scheduleResponseDescriptor instead')
const ScheduleResponse$json = {
  '1': 'ScheduleResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'conflict_times', '3': 3, '4': 3, '5': 9, '10': 'conflictTimes'},
  ],
};

/// Descriptor for `ScheduleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleResponseDescriptor = $convert.base64Decode(
    'ChBTY2hlZHVsZVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZR'
    'gCIAEoCVIHbWVzc2FnZRIlCg5jb25mbGljdF90aW1lcxgDIAMoCVINY29uZmxpY3RUaW1lcw==');

@$core.Deprecated('Use bulkCreateScheduleRequestDescriptor instead')
const BulkCreateScheduleRequest$json = {
  '1': 'BulkCreateScheduleRequest',
  '2': [
    {'1': 'doctor_id', '3': 1, '4': 1, '5': 5, '10': 'doctorId'},
    {'1': 'date', '3': 2, '4': 1, '5': 9, '10': 'date'},
    {'1': 'time_types', '3': 3, '4': 3, '5': 9, '10': 'timeTypes'},
    {'1': 'max_booking', '3': 4, '4': 1, '5': 5, '10': 'maxBooking'},
  ],
};

/// Descriptor for `BulkCreateScheduleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bulkCreateScheduleRequestDescriptor = $convert.base64Decode(
    'ChlCdWxrQ3JlYXRlU2NoZWR1bGVSZXF1ZXN0EhsKCWRvY3Rvcl9pZBgBIAEoBVIIZG9jdG9ySW'
    'QSEgoEZGF0ZRgCIAEoCVIEZGF0ZRIdCgp0aW1lX3R5cGVzGAMgAygJUgl0aW1lVHlwZXMSHwoL'
    'bWF4X2Jvb2tpbmcYBCABKAVSCm1heEJvb2tpbmc=');

@$core.Deprecated('Use getScheduleRequestDescriptor instead')
const GetScheduleRequest$json = {
  '1': 'GetScheduleRequest',
  '2': [
    {'1': 'doctor_id', '3': 1, '4': 1, '5': 5, '10': 'doctorId'},
    {'1': 'date', '3': 2, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `GetScheduleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getScheduleRequestDescriptor = $convert.base64Decode(
    'ChJHZXRTY2hlZHVsZVJlcXVlc3QSGwoJZG9jdG9yX2lkGAEgASgFUghkb2N0b3JJZBISCgRkYX'
    'RlGAIgASgJUgRkYXRl');

@$core.Deprecated('Use scheduleItemDescriptor instead')
const ScheduleItem$json = {
  '1': 'ScheduleItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'time_type', '3': 2, '4': 1, '5': 9, '10': 'timeType'},
    {'1': 'time_display', '3': 3, '4': 1, '5': 9, '10': 'timeDisplay'},
    {'1': 'max_booking', '3': 4, '4': 1, '5': 5, '10': 'maxBooking'},
    {'1': 'current_booking', '3': 5, '4': 1, '5': 5, '10': 'currentBooking'},
    {'1': 'is_available', '3': 6, '4': 1, '5': 8, '10': 'isAvailable'},
  ],
};

/// Descriptor for `ScheduleItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleItemDescriptor = $convert.base64Decode(
    'CgxTY2hlZHVsZUl0ZW0SDgoCaWQYASABKAVSAmlkEhsKCXRpbWVfdHlwZRgCIAEoCVIIdGltZV'
    'R5cGUSIQoMdGltZV9kaXNwbGF5GAMgASgJUgt0aW1lRGlzcGxheRIfCgttYXhfYm9va2luZxgE'
    'IAEoBVIKbWF4Qm9va2luZxInCg9jdXJyZW50X2Jvb2tpbmcYBSABKAVSDmN1cnJlbnRCb29raW'
    '5nEiEKDGlzX2F2YWlsYWJsZRgGIAEoCFILaXNBdmFpbGFibGU=');

@$core.Deprecated('Use getScheduleListResponseDescriptor instead')
const GetScheduleListResponse$json = {
  '1': 'GetScheduleListResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.schedule.ScheduleItem', '10': 'data'},
  ],
};

/// Descriptor for `GetScheduleListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getScheduleListResponseDescriptor = $convert.base64Decode(
    'ChdHZXRTY2hlZHVsZUxpc3RSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEioKBG'
    'RhdGEYAiADKAsyFi5zY2hlZHVsZS5TY2hlZHVsZUl0ZW1SBGRhdGE=');

