//
//  Generated code. Do not modify.
//  source: payment.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use paymentRequestDescriptor instead')
const PaymentRequest$json = {
  '1': 'PaymentRequest',
  '2': [
    {'1': 'bookingId', '3': 1, '4': 1, '5': 5, '10': 'bookingId'},
    {'1': 'paymentMethod', '3': 2, '4': 1, '5': 9, '10': 'paymentMethod'},
    {'1': 'totalPrice', '3': 3, '4': 1, '5': 1, '10': 'totalPrice'},
  ],
};

/// Descriptor for `PaymentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentRequestDescriptor = $convert.base64Decode(
    'Cg5QYXltZW50UmVxdWVzdBIcCglib29raW5nSWQYASABKAVSCWJvb2tpbmdJZBIkCg1wYXltZW'
    '50TWV0aG9kGAIgASgJUg1wYXltZW50TWV0aG9kEh4KCnRvdGFsUHJpY2UYAyABKAFSCnRvdGFs'
    'UHJpY2U=');

@$core.Deprecated('Use paymentResponseDescriptor instead')
const PaymentResponse$json = {
  '1': 'PaymentResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'qrUrl', '3': 2, '4': 1, '5': 9, '10': 'qrUrl'},
    {'1': 'bankInfo', '3': 3, '4': 1, '5': 9, '10': 'bankInfo'},
    {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PaymentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentResponseDescriptor = $convert.base64Decode(
    'Cg9QYXltZW50UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIUCgVxclVybBgCIA'
    'EoCVIFcXJVcmwSGgoIYmFua0luZm8YAyABKAlSCGJhbmtJbmZvEhgKB21lc3NhZ2UYBCABKAlS'
    'B21lc3NhZ2U=');

@$core.Deprecated('Use confirmRequestDescriptor instead')
const ConfirmRequest$json = {
  '1': 'ConfirmRequest',
  '2': [
    {'1': 'bookingId', '3': 1, '4': 1, '5': 5, '10': 'bookingId'},
    {'1': 'transactionId', '3': 2, '4': 1, '5': 9, '10': 'transactionId'},
  ],
};

/// Descriptor for `ConfirmRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confirmRequestDescriptor = $convert.base64Decode(
    'Cg5Db25maXJtUmVxdWVzdBIcCglib29raW5nSWQYASABKAVSCWJvb2tpbmdJZBIkCg10cmFuc2'
    'FjdGlvbklkGAIgASgJUg10cmFuc2FjdGlvbklk');

@$core.Deprecated('Use adminVerifyRequestDescriptor instead')
const AdminVerifyRequest$json = {
  '1': 'AdminVerifyRequest',
  '2': [
    {'1': 'bookingId', '3': 1, '4': 1, '5': 5, '10': 'bookingId'},
  ],
};

/// Descriptor for `AdminVerifyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminVerifyRequestDescriptor = $convert.base64Decode(
    'ChJBZG1pblZlcmlmeVJlcXVlc3QSHAoJYm9va2luZ0lkGAEgASgFUglib29raW5nSWQ=');

@$core.Deprecated('Use paymentStatusRequestDescriptor instead')
const PaymentStatusRequest$json = {
  '1': 'PaymentStatusRequest',
  '2': [
    {'1': 'bookingId', '3': 1, '4': 1, '5': 5, '10': 'bookingId'},
  ],
};

/// Descriptor for `PaymentStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentStatusRequestDescriptor = $convert.base64Decode(
    'ChRQYXltZW50U3RhdHVzUmVxdWVzdBIcCglib29raW5nSWQYASABKAVSCWJvb2tpbmdJZA==');

@$core.Deprecated('Use paymentStatusResponseDescriptor instead')
const PaymentStatusResponse$json = {
  '1': 'PaymentStatusResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PaymentStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentStatusResponseDescriptor = $convert.base64Decode(
    'ChVQYXltZW50U3RhdHVzUmVzcG9uc2USFgoGc3RhdHVzGAEgASgFUgZzdGF0dXMSGAoHbWVzc2'
    'FnZRgCIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use commonResponseDescriptor instead')
const CommonResponse$json = {
  '1': 'CommonResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CommonResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commonResponseDescriptor = $convert.base64Decode(
    'Cg5Db21tb25SZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2UYAi'
    'ABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use paymentFilterRequestDescriptor instead')
const PaymentFilterRequest$json = {
  '1': 'PaymentFilterRequest',
  '2': [
    {'1': 'searchTerm', '3': 1, '4': 1, '5': 9, '10': 'searchTerm'},
    {'1': 'status', '3': 2, '4': 1, '5': 5, '10': 'status'},
  ],
};

/// Descriptor for `PaymentFilterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentFilterRequestDescriptor = $convert.base64Decode(
    'ChRQYXltZW50RmlsdGVyUmVxdWVzdBIeCgpzZWFyY2hUZXJtGAEgASgJUgpzZWFyY2hUZXJtEh'
    'YKBnN0YXR1cxgCIAEoBVIGc3RhdHVz');

@$core.Deprecated('Use paymentDetailDescriptor instead')
const PaymentDetail$json = {
  '1': 'PaymentDetail',
  '2': [
    {'1': 'bookingId', '3': 1, '4': 1, '5': 5, '10': 'bookingId'},
    {'1': 'patientName', '3': 2, '4': 1, '5': 9, '10': 'patientName'},
    {'1': 'amount', '3': 3, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'method', '3': 4, '4': 1, '5': 9, '10': 'method'},
    {'1': 'status', '3': 5, '4': 1, '5': 5, '10': 'status'},
    {'1': 'transactionId', '3': 6, '4': 1, '5': 9, '10': 'transactionId'},
    {'1': 'createdAt', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
  ],
};

/// Descriptor for `PaymentDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentDetailDescriptor = $convert.base64Decode(
    'Cg1QYXltZW50RGV0YWlsEhwKCWJvb2tpbmdJZBgBIAEoBVIJYm9va2luZ0lkEiAKC3BhdGllbn'
    'ROYW1lGAIgASgJUgtwYXRpZW50TmFtZRIWCgZhbW91bnQYAyABKAFSBmFtb3VudBIWCgZtZXRo'
    'b2QYBCABKAlSBm1ldGhvZBIWCgZzdGF0dXMYBSABKAVSBnN0YXR1cxIkCg10cmFuc2FjdGlvbk'
    'lkGAYgASgJUg10cmFuc2FjdGlvbklkEhwKCWNyZWF0ZWRBdBgHIAEoCVIJY3JlYXRlZEF0');

@$core.Deprecated('Use paymentListResponseDescriptor instead')
const PaymentListResponse$json = {
  '1': 'PaymentListResponse',
  '2': [
    {'1': 'payments', '3': 1, '4': 3, '5': 11, '6': '.payment.PaymentDetail', '10': 'payments'},
  ],
};

/// Descriptor for `PaymentListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentListResponseDescriptor = $convert.base64Decode(
    'ChNQYXltZW50TGlzdFJlc3BvbnNlEjIKCHBheW1lbnRzGAEgAygLMhYucGF5bWVudC5QYXltZW'
    '50RGV0YWlsUghwYXltZW50cw==');

