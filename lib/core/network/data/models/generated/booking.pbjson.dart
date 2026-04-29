//
//  Generated code. Do not modify.
//  source: booking.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use bookingResponseDescriptor instead')
const BookingResponse$json = {
  '1': 'BookingResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'booking_id', '3': 3, '4': 1, '5': 5, '10': 'bookingId'},
  ],
};

/// Descriptor for `BookingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookingResponseDescriptor = $convert.base64Decode(
    'Cg9Cb29raW5nUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCgdtZXNzYWdlGA'
    'IgASgJUgdtZXNzYWdlEh0KCmJvb2tpbmdfaWQYAyABKAVSCWJvb2tpbmdJZA==');

@$core.Deprecated('Use createBookingRequestDescriptor instead')
const CreateBookingRequest$json = {
  '1': 'CreateBookingRequest',
  '2': [
    {'1': 'doctor_id', '3': 1, '4': 1, '5': 5, '10': 'doctorId'},
    {'1': 'patient_id', '3': 2, '4': 1, '5': 5, '10': 'patientId'},
    {'1': 'profile_id', '3': 3, '4': 1, '5': 5, '10': 'profileId'},
    {'1': 'date', '3': 4, '4': 1, '5': 9, '10': 'date'},
    {'1': 'time_type', '3': 5, '4': 1, '5': 9, '10': 'timeType'},
    {'1': 'reason', '3': 6, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'photos', '3': 7, '4': 3, '5': 9, '10': 'photos'},
    {'1': 'service_id', '3': 8, '4': 1, '5': 5, '10': 'serviceId'},
    {'1': 'location_id', '3': 9, '4': 1, '5': 5, '10': 'locationId'},
    {'1': 'payment_method', '3': 10, '4': 1, '5': 9, '10': 'paymentMethod'},
  ],
};

/// Descriptor for `CreateBookingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createBookingRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVCb29raW5nUmVxdWVzdBIbCglkb2N0b3JfaWQYASABKAVSCGRvY3RvcklkEh0KCn'
    'BhdGllbnRfaWQYAiABKAVSCXBhdGllbnRJZBIdCgpwcm9maWxlX2lkGAMgASgFUglwcm9maWxl'
    'SWQSEgoEZGF0ZRgEIAEoCVIEZGF0ZRIbCgl0aW1lX3R5cGUYBSABKAlSCHRpbWVUeXBlEhYKBn'
    'JlYXNvbhgGIAEoCVIGcmVhc29uEhYKBnBob3RvcxgHIAMoCVIGcGhvdG9zEh0KCnNlcnZpY2Vf'
    'aWQYCCABKAVSCXNlcnZpY2VJZBIfCgtsb2NhdGlvbl9pZBgJIAEoBVIKbG9jYXRpb25JZBIlCg'
    '5wYXltZW50X21ldGhvZBgKIAEoCVINcGF5bWVudE1ldGhvZA==');

@$core.Deprecated('Use getHistoryRequestDescriptor instead')
const GetHistoryRequest$json = {
  '1': 'GetHistoryRequest',
  '2': [
    {'1': 'patient_id', '3': 1, '4': 1, '5': 5, '10': 'patientId'},
  ],
};

/// Descriptor for `GetHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getHistoryRequestDescriptor = $convert.base64Decode(
    'ChFHZXRIaXN0b3J5UmVxdWVzdBIdCgpwYXRpZW50X2lkGAEgASgFUglwYXRpZW50SWQ=');

@$core.Deprecated('Use bookingItemDescriptor instead')
const BookingItem$json = {
  '1': 'BookingItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'doctor_name', '3': 2, '4': 1, '5': 9, '10': 'doctorName'},
    {'1': 'date', '3': 3, '4': 1, '5': 9, '10': 'date'},
    {'1': 'time_display', '3': 4, '4': 1, '5': 9, '10': 'timeDisplay'},
    {'1': 'status', '3': 5, '4': 1, '5': 9, '10': 'status'},
    {'1': 'reason', '3': 6, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'patient_name', '3': 7, '4': 1, '5': 9, '10': 'patientName'},
    {'1': 'service_name', '3': 8, '4': 1, '5': 9, '10': 'serviceName'},
    {'1': 'price', '3': 9, '4': 1, '5': 1, '10': 'price'},
    {'1': 'address', '3': 10, '4': 1, '5': 9, '10': 'address'},
    {'1': 'cancel_reason', '3': 11, '4': 1, '5': 9, '10': 'cancelReason'},
    {'1': 'payment_method', '3': 12, '4': 1, '5': 9, '10': 'paymentMethod'},
    {'1': 'payment_status', '3': 13, '4': 1, '5': 5, '10': 'paymentStatus'},
    {'1': 'doctor_id', '3': 14, '4': 1, '5': 5, '10': 'doctorId'},
    {'1': 'patient_id', '3': 15, '4': 1, '5': 5, '10': 'patientId'},
    {'1': 'clinic_id', '3': 16, '4': 1, '5': 5, '10': 'clinicId'},
    {'1': 'service_id', '3': 17, '4': 1, '5': 5, '10': 'serviceId'},
  ],
};

/// Descriptor for `BookingItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookingItemDescriptor = $convert.base64Decode(
    'CgtCb29raW5nSXRlbRIOCgJpZBgBIAEoBVICaWQSHwoLZG9jdG9yX25hbWUYAiABKAlSCmRvY3'
    'Rvck5hbWUSEgoEZGF0ZRgDIAEoCVIEZGF0ZRIhCgx0aW1lX2Rpc3BsYXkYBCABKAlSC3RpbWVE'
    'aXNwbGF5EhYKBnN0YXR1cxgFIAEoCVIGc3RhdHVzEhYKBnJlYXNvbhgGIAEoCVIGcmVhc29uEi'
    'EKDHBhdGllbnRfbmFtZRgHIAEoCVILcGF0aWVudE5hbWUSIQoMc2VydmljZV9uYW1lGAggASgJ'
    'UgtzZXJ2aWNlTmFtZRIUCgVwcmljZRgJIAEoAVIFcHJpY2USGAoHYWRkcmVzcxgKIAEoCVIHYW'
    'RkcmVzcxIjCg1jYW5jZWxfcmVhc29uGAsgASgJUgxjYW5jZWxSZWFzb24SJQoOcGF5bWVudF9t'
    'ZXRob2QYDCABKAlSDXBheW1lbnRNZXRob2QSJQoOcGF5bWVudF9zdGF0dXMYDSABKAVSDXBheW'
    '1lbnRTdGF0dXMSGwoJZG9jdG9yX2lkGA4gASgFUghkb2N0b3JJZBIdCgpwYXRpZW50X2lkGA8g'
    'ASgFUglwYXRpZW50SWQSGwoJY2xpbmljX2lkGBAgASgFUghjbGluaWNJZBIdCgpzZXJ2aWNlX2'
    'lkGBEgASgFUglzZXJ2aWNlSWQ=');

@$core.Deprecated('Use historyResponseDescriptor instead')
const HistoryResponse$json = {
  '1': 'HistoryResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.booking.BookingItem', '10': 'data'},
  ],
};

/// Descriptor for `HistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyResponseDescriptor = $convert.base64Decode(
    'Cg9IaXN0b3J5UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIoCgRkYXRhGAIgAy'
    'gLMhQuYm9va2luZy5Cb29raW5nSXRlbVIEZGF0YQ==');

@$core.Deprecated('Use cancelBookingRequestDescriptor instead')
const CancelBookingRequest$json = {
  '1': 'CancelBookingRequest',
  '2': [
    {'1': 'booking_id', '3': 1, '4': 1, '5': 5, '10': 'bookingId'},
    {'1': 'patient_id', '3': 2, '4': 1, '5': 5, '10': 'patientId'},
    {'1': 'reason', '3': 3, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `CancelBookingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelBookingRequestDescriptor = $convert.base64Decode(
    'ChRDYW5jZWxCb29raW5nUmVxdWVzdBIdCgpib29raW5nX2lkGAEgASgFUglib29raW5nSWQSHQ'
    'oKcGF0aWVudF9pZBgCIAEoBVIJcGF0aWVudElkEhYKBnJlYXNvbhgDIAEoCVIGcmVhc29u');

@$core.Deprecated('Use deleteBookingRequestDescriptor instead')
const DeleteBookingRequest$json = {
  '1': 'DeleteBookingRequest',
  '2': [
    {'1': 'booking_id', '3': 1, '4': 1, '5': 5, '10': 'bookingId'},
  ],
};

/// Descriptor for `DeleteBookingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteBookingRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVCb29raW5nUmVxdWVzdBIdCgpib29raW5nX2lkGAEgASgFUglib29raW5nSWQ=');

