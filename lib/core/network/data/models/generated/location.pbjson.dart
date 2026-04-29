//
//  Generated code. Do not modify.
//  source: location.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use locationMessageDescriptor instead')
const LocationMessage$json = {
  '1': 'LocationMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'label', '3': 3, '4': 1, '5': 9, '10': 'label'},
    {'1': 'address_detail', '3': 4, '4': 1, '5': 9, '10': 'addressDetail'},
    {'1': 'province', '3': 5, '4': 1, '5': 9, '10': 'province'},
    {'1': 'district', '3': 6, '4': 1, '5': 9, '10': 'district'},
    {'1': 'ward', '3': 7, '4': 1, '5': 9, '10': 'ward'},
    {'1': 'latitude', '3': 8, '4': 1, '5': 1, '10': 'latitude'},
    {'1': 'longitude', '3': 9, '4': 1, '5': 1, '10': 'longitude'},
    {'1': 'is_default', '3': 10, '4': 1, '5': 8, '10': 'isDefault'},
  ],
};

/// Descriptor for `LocationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationMessageDescriptor = $convert.base64Decode(
    'Cg9Mb2NhdGlvbk1lc3NhZ2USDgoCaWQYASABKAVSAmlkEhcKB3VzZXJfaWQYAiABKAVSBnVzZX'
    'JJZBIUCgVsYWJlbBgDIAEoCVIFbGFiZWwSJQoOYWRkcmVzc19kZXRhaWwYBCABKAlSDWFkZHJl'
    'c3NEZXRhaWwSGgoIcHJvdmluY2UYBSABKAlSCHByb3ZpbmNlEhoKCGRpc3RyaWN0GAYgASgJUg'
    'hkaXN0cmljdBISCgR3YXJkGAcgASgJUgR3YXJkEhoKCGxhdGl0dWRlGAggASgBUghsYXRpdHVk'
    'ZRIcCglsb25naXR1ZGUYCSABKAFSCWxvbmdpdHVkZRIdCgppc19kZWZhdWx0GAogASgIUglpc0'
    'RlZmF1bHQ=');

@$core.Deprecated('Use patientIdRequestDescriptor instead')
const PatientIdRequest$json = {
  '1': 'PatientIdRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `PatientIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patientIdRequestDescriptor = $convert.base64Decode(
    'ChBQYXRpZW50SWRSZXF1ZXN0EhcKB3VzZXJfaWQYASABKAVSBnVzZXJJZA==');

@$core.Deprecated('Use locationIdRequestDescriptor instead')
const LocationIdRequest$json = {
  '1': 'LocationIdRequest',
  '2': [
    {'1': 'location_id', '3': 1, '4': 1, '5': 5, '10': 'locationId'},
  ],
};

/// Descriptor for `LocationIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationIdRequestDescriptor = $convert.base64Decode(
    'ChFMb2NhdGlvbklkUmVxdWVzdBIfCgtsb2NhdGlvbl9pZBgBIAEoBVIKbG9jYXRpb25JZA==');

@$core.Deprecated('Use locationListDescriptor instead')
const LocationList$json = {
  '1': 'LocationList',
  '2': [
    {'1': 'locations', '3': 1, '4': 3, '5': 11, '6': '.location.LocationMessage', '10': 'locations'},
  ],
};

/// Descriptor for `LocationList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationListDescriptor = $convert.base64Decode(
    'CgxMb2NhdGlvbkxpc3QSNwoJbG9jYXRpb25zGAEgAygLMhkubG9jYXRpb24uTG9jYXRpb25NZX'
    'NzYWdlUglsb2NhdGlvbnM=');

@$core.Deprecated('Use locationResponseDescriptor instead')
const LocationResponse$json = {
  '1': 'LocationResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'location_id', '3': 3, '4': 1, '5': 5, '10': 'locationId'},
  ],
};

/// Descriptor for `LocationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationResponseDescriptor = $convert.base64Decode(
    'ChBMb2NhdGlvblJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZR'
    'gCIAEoCVIHbWVzc2FnZRIfCgtsb2NhdGlvbl9pZBgDIAEoBVIKbG9jYXRpb25JZA==');

@$core.Deprecated('Use emptyResponseDescriptor instead')
const EmptyResponse$json = {
  '1': 'EmptyResponse',
};

/// Descriptor for `EmptyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyResponseDescriptor = $convert.base64Decode(
    'Cg1FbXB0eVJlc3BvbnNl');

