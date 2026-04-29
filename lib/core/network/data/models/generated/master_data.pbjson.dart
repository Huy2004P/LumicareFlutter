//
//  Generated code. Do not modify.
//  source: master_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

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

@$core.Deprecated('Use getByIdRequestDescriptor instead')
const GetByIdRequest$json = {
  '1': 'GetByIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByIdRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRCeUlkUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use deleteRequestDescriptor instead')
const DeleteRequest$json = {
  '1': 'DeleteRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRequestDescriptor = $convert.base64Decode(
    'Cg1EZWxldGVSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZA==');

@$core.Deprecated('Use searchRequestDescriptor instead')
const SearchRequest$json = {
  '1': 'SearchRequest',
  '2': [
    {'1': 'keyword', '3': 1, '4': 1, '5': 9, '10': 'keyword'},
    {'1': 'limit', '3': 2, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'offset', '3': 3, '4': 1, '5': 5, '10': 'offset'},
    {'1': 'specialty_id', '3': 4, '4': 1, '5': 5, '10': 'specialtyId'},
  ],
};

/// Descriptor for `SearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchRequestDescriptor = $convert.base64Decode(
    'Cg1TZWFyY2hSZXF1ZXN0EhgKB2tleXdvcmQYASABKAlSB2tleXdvcmQSFAoFbGltaXQYAiABKA'
    'VSBWxpbWl0EhYKBm9mZnNldBgDIAEoBVIGb2Zmc2V0EiEKDHNwZWNpYWx0eV9pZBgEIAEoBVIL'
    'c3BlY2lhbHR5SWQ=');

@$core.Deprecated('Use createSpecialtyRequestDescriptor instead')
const CreateSpecialtyRequest$json = {
  '1': 'CreateSpecialtyRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 3, '4': 1, '5': 9, '10': 'image'},
    {'1': 'content_html', '3': 4, '4': 1, '5': 9, '10': 'contentHtml'},
    {'1': 'content_markdown', '3': 5, '4': 1, '5': 9, '10': 'contentMarkdown'},
  ],
};

/// Descriptor for `CreateSpecialtyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSpecialtyRequestDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVTcGVjaWFsdHlSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSIAoLZGVzY3JpcH'
    'Rpb24YAiABKAlSC2Rlc2NyaXB0aW9uEhQKBWltYWdlGAMgASgJUgVpbWFnZRIhCgxjb250ZW50'
    'X2h0bWwYBCABKAlSC2NvbnRlbnRIdG1sEikKEGNvbnRlbnRfbWFya2Rvd24YBSABKAlSD2Nvbn'
    'RlbnRNYXJrZG93bg==');

@$core.Deprecated('Use updateSpecialtyRequestDescriptor instead')
const UpdateSpecialtyRequest$json = {
  '1': 'UpdateSpecialtyRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 4, '4': 1, '5': 9, '10': 'image'},
    {'1': 'content_html', '3': 5, '4': 1, '5': 9, '10': 'contentHtml'},
    {'1': 'content_markdown', '3': 6, '4': 1, '5': 9, '10': 'contentMarkdown'},
  ],
};

/// Descriptor for `UpdateSpecialtyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSpecialtyRequestDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVTcGVjaWFsdHlSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUg'
    'RuYW1lEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIUCgVpbWFnZRgEIAEoCVIF'
    'aW1hZ2USIQoMY29udGVudF9odG1sGAUgASgJUgtjb250ZW50SHRtbBIpChBjb250ZW50X21hcm'
    'tkb3duGAYgASgJUg9jb250ZW50TWFya2Rvd24=');

@$core.Deprecated('Use specialtyResponseDescriptor instead')
const SpecialtyResponse$json = {
  '1': 'SpecialtyResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 4, '4': 1, '5': 9, '10': 'image'},
    {'1': 'content_html', '3': 5, '4': 1, '5': 9, '10': 'contentHtml'},
    {'1': 'content_markdown', '3': 6, '4': 1, '5': 9, '10': 'contentMarkdown'},
  ],
};

/// Descriptor for `SpecialtyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List specialtyResponseDescriptor = $convert.base64Decode(
    'ChFTcGVjaWFsdHlSZXNwb25zZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'IgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SFAoFaW1hZ2UYBCABKAlSBWltYWdl'
    'EiEKDGNvbnRlbnRfaHRtbBgFIAEoCVILY29udGVudEh0bWwSKQoQY29udGVudF9tYXJrZG93bh'
    'gGIAEoCVIPY29udGVudE1hcmtkb3du');

@$core.Deprecated('Use specialtyListResponseDescriptor instead')
const SpecialtyListResponse$json = {
  '1': 'SpecialtyListResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.master_data.SpecialtyResponse', '10': 'data'},
    {'1': 'total_count', '3': 2, '4': 1, '5': 5, '10': 'totalCount'},
  ],
};

/// Descriptor for `SpecialtyListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List specialtyListResponseDescriptor = $convert.base64Decode(
    'ChVTcGVjaWFsdHlMaXN0UmVzcG9uc2USMgoEZGF0YRgBIAMoCzIeLm1hc3Rlcl9kYXRhLlNwZW'
    'NpYWx0eVJlc3BvbnNlUgRkYXRhEh8KC3RvdGFsX2NvdW50GAIgASgFUgp0b3RhbENvdW50');

@$core.Deprecated('Use createClinicRequestDescriptor instead')
const CreateClinicRequest$json = {
  '1': 'CreateClinicRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 4, '4': 1, '5': 9, '10': 'image'},
    {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
    {'1': 'content_html', '3': 6, '4': 1, '5': 9, '10': 'contentHtml'},
    {'1': 'content_markdown', '3': 7, '4': 1, '5': 9, '10': 'contentMarkdown'},
  ],
};

/// Descriptor for `CreateClinicRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createClinicRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVDbGluaWNSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSGAoHYWRkcmVzcxgCIA'
    'EoCVIHYWRkcmVzcxIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SFAoFaW1hZ2UY'
    'BCABKAlSBWltYWdlEhIKBHR5cGUYBSABKAlSBHR5cGUSIQoMY29udGVudF9odG1sGAYgASgJUg'
    'tjb250ZW50SHRtbBIpChBjb250ZW50X21hcmtkb3duGAcgASgJUg9jb250ZW50TWFya2Rvd24=');

@$core.Deprecated('Use updateClinicRequestDescriptor instead')
const UpdateClinicRequest$json = {
  '1': 'UpdateClinicRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 5, '4': 1, '5': 9, '10': 'image'},
    {'1': 'type', '3': 6, '4': 1, '5': 9, '10': 'type'},
    {'1': 'content_html', '3': 7, '4': 1, '5': 9, '10': 'contentHtml'},
    {'1': 'content_markdown', '3': 8, '4': 1, '5': 9, '10': 'contentMarkdown'},
  ],
};

/// Descriptor for `UpdateClinicRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateClinicRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVDbGluaWNSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW'
    '1lEhgKB2FkZHJlc3MYAyABKAlSB2FkZHJlc3MSIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2Ny'
    'aXB0aW9uEhQKBWltYWdlGAUgASgJUgVpbWFnZRISCgR0eXBlGAYgASgJUgR0eXBlEiEKDGNvbn'
    'RlbnRfaHRtbBgHIAEoCVILY29udGVudEh0bWwSKQoQY29udGVudF9tYXJrZG93bhgIIAEoCVIP'
    'Y29udGVudE1hcmtkb3du');

@$core.Deprecated('Use clinicResponseDescriptor instead')
const ClinicResponse$json = {
  '1': 'ClinicResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 5, '4': 1, '5': 9, '10': 'image'},
    {'1': 'type', '3': 6, '4': 1, '5': 9, '10': 'type'},
    {'1': 'content_html', '3': 7, '4': 1, '5': 9, '10': 'contentHtml'},
    {'1': 'content_markdown', '3': 8, '4': 1, '5': 9, '10': 'contentMarkdown'},
    {'1': 'rating', '3': 9, '4': 1, '5': 1, '10': 'rating'},
  ],
};

/// Descriptor for `ClinicResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clinicResponseDescriptor = $convert.base64Decode(
    'Cg5DbGluaWNSZXNwb25zZRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIYCg'
    'dhZGRyZXNzGAMgASgJUgdhZGRyZXNzEiAKC2Rlc2NyaXB0aW9uGAQgASgJUgtkZXNjcmlwdGlv'
    'bhIUCgVpbWFnZRgFIAEoCVIFaW1hZ2USEgoEdHlwZRgGIAEoCVIEdHlwZRIhCgxjb250ZW50X2'
    'h0bWwYByABKAlSC2NvbnRlbnRIdG1sEikKEGNvbnRlbnRfbWFya2Rvd24YCCABKAlSD2NvbnRl'
    'bnRNYXJrZG93bhIWCgZyYXRpbmcYCSABKAFSBnJhdGluZw==');

@$core.Deprecated('Use clinicListResponseDescriptor instead')
const ClinicListResponse$json = {
  '1': 'ClinicListResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.master_data.ClinicResponse', '10': 'data'},
    {'1': 'total_count', '3': 2, '4': 1, '5': 5, '10': 'totalCount'},
  ],
};

/// Descriptor for `ClinicListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clinicListResponseDescriptor = $convert.base64Decode(
    'ChJDbGluaWNMaXN0UmVzcG9uc2USLwoEZGF0YRgBIAMoCzIbLm1hc3Rlcl9kYXRhLkNsaW5pY1'
    'Jlc3BvbnNlUgRkYXRhEh8KC3RvdGFsX2NvdW50GAIgASgFUgp0b3RhbENvdW50');

@$core.Deprecated('Use createRoomRequestDescriptor instead')
const CreateRoomRequest$json = {
  '1': 'CreateRoomRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'clinicId', '3': 2, '4': 1, '5': 5, '10': 'clinicId'},
    {'1': 'location', '3': 3, '4': 1, '5': 9, '10': 'location'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `CreateRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRoomRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVSb29tUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhoKCGNsaW5pY0lkGAIgAS'
    'gFUghjbGluaWNJZBIaCghsb2NhdGlvbhgDIAEoCVIIbG9jYXRpb24SIAoLZGVzY3JpcHRpb24Y'
    'BCABKAlSC2Rlc2NyaXB0aW9u');

@$core.Deprecated('Use updateRoomRequestDescriptor instead')
const UpdateRoomRequest$json = {
  '1': 'UpdateRoomRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'location', '3': 3, '4': 1, '5': 9, '10': 'location'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'clinicId', '3': 5, '4': 1, '5': 5, '10': 'clinicId'},
  ],
};

/// Descriptor for `UpdateRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRoomRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVSb29tUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'IaCghsb2NhdGlvbhgDIAEoCVIIbG9jYXRpb24SIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2Ny'
    'aXB0aW9uEhoKCGNsaW5pY0lkGAUgASgFUghjbGluaWNJZA==');

@$core.Deprecated('Use roomResponseDescriptor instead')
const RoomResponse$json = {
  '1': 'RoomResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'clinicName', '3': 3, '4': 1, '5': 9, '10': 'clinicName'},
    {'1': 'clinicId', '3': 4, '4': 1, '5': 5, '10': 'clinicId'},
    {'1': 'location', '3': 5, '4': 1, '5': 9, '10': 'location'},
    {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `RoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomResponseDescriptor = $convert.base64Decode(
    'CgxSb29tUmVzcG9uc2USDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSHgoKY2'
    'xpbmljTmFtZRgDIAEoCVIKY2xpbmljTmFtZRIaCghjbGluaWNJZBgEIAEoBVIIY2xpbmljSWQS'
    'GgoIbG9jYXRpb24YBSABKAlSCGxvY2F0aW9uEiAKC2Rlc2NyaXB0aW9uGAYgASgJUgtkZXNjcm'
    'lwdGlvbg==');

@$core.Deprecated('Use roomFilterRequestDescriptor instead')
const RoomFilterRequest$json = {
  '1': 'RoomFilterRequest',
  '2': [
    {'1': 'clinicId', '3': 1, '4': 1, '5': 5, '10': 'clinicId'},
    {'1': 'keyword', '3': 2, '4': 1, '5': 9, '10': 'keyword'},
  ],
};

/// Descriptor for `RoomFilterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomFilterRequestDescriptor = $convert.base64Decode(
    'ChFSb29tRmlsdGVyUmVxdWVzdBIaCghjbGluaWNJZBgBIAEoBVIIY2xpbmljSWQSGAoHa2V5d2'
    '9yZBgCIAEoCVIHa2V5d29yZA==');

@$core.Deprecated('Use roomListResponseDescriptor instead')
const RoomListResponse$json = {
  '1': 'RoomListResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.master_data.RoomResponse', '10': 'data'},
  ],
};

/// Descriptor for `RoomListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomListResponseDescriptor = $convert.base64Decode(
    'ChBSb29tTGlzdFJlc3BvbnNlEi0KBGRhdGEYASADKAsyGS5tYXN0ZXJfZGF0YS5Sb29tUmVzcG'
    '9uc2VSBGRhdGE=');

@$core.Deprecated('Use createServiceRequestDescriptor instead')
const CreateServiceRequest$json = {
  '1': 'CreateServiceRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'price', '3': 2, '4': 1, '5': 1, '10': 'price'},
    {'1': 'specialty_id', '3': 3, '4': 1, '5': 5, '10': 'specialtyId'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 5, '4': 1, '5': 9, '10': 'image'},
    {'1': 'content_html', '3': 6, '4': 1, '5': 9, '10': 'contentHtml'},
    {'1': 'content_markdown', '3': 7, '4': 1, '5': 9, '10': 'contentMarkdown'},
  ],
};

/// Descriptor for `CreateServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createServiceRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVTZXJ2aWNlUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhQKBXByaWNlGAIgAS'
    'gBUgVwcmljZRIhCgxzcGVjaWFsdHlfaWQYAyABKAVSC3NwZWNpYWx0eUlkEiAKC2Rlc2NyaXB0'
    'aW9uGAQgASgJUgtkZXNjcmlwdGlvbhIUCgVpbWFnZRgFIAEoCVIFaW1hZ2USIQoMY29udGVudF'
    '9odG1sGAYgASgJUgtjb250ZW50SHRtbBIpChBjb250ZW50X21hcmtkb3duGAcgASgJUg9jb250'
    'ZW50TWFya2Rvd24=');

@$core.Deprecated('Use updateServiceRequestDescriptor instead')
const UpdateServiceRequest$json = {
  '1': 'UpdateServiceRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'price', '3': 3, '4': 1, '5': 1, '10': 'price'},
    {'1': 'specialty_id', '3': 4, '4': 1, '5': 5, '10': 'specialtyId'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 6, '4': 1, '5': 9, '10': 'image'},
    {'1': 'content_html', '3': 7, '4': 1, '5': 9, '10': 'contentHtml'},
    {'1': 'content_markdown', '3': 8, '4': 1, '5': 9, '10': 'contentMarkdown'},
  ],
};

/// Descriptor for `UpdateServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateServiceRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVTZXJ2aWNlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbm'
    'FtZRIUCgVwcmljZRgDIAEoAVIFcHJpY2USIQoMc3BlY2lhbHR5X2lkGAQgASgFUgtzcGVjaWFs'
    'dHlJZBIgCgtkZXNjcmlwdGlvbhgFIAEoCVILZGVzY3JpcHRpb24SFAoFaW1hZ2UYBiABKAlSBW'
    'ltYWdlEiEKDGNvbnRlbnRfaHRtbBgHIAEoCVILY29udGVudEh0bWwSKQoQY29udGVudF9tYXJr'
    'ZG93bhgIIAEoCVIPY29udGVudE1hcmtkb3du');

@$core.Deprecated('Use serviceResponseDescriptor instead')
const ServiceResponse$json = {
  '1': 'ServiceResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'price', '3': 3, '4': 1, '5': 1, '10': 'price'},
    {'1': 'specialty_id', '3': 4, '4': 1, '5': 5, '10': 'specialtyId'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 6, '4': 1, '5': 9, '10': 'image'},
    {'1': 'content_html', '3': 7, '4': 1, '5': 9, '10': 'contentHtml'},
    {'1': 'content_markdown', '3': 8, '4': 1, '5': 9, '10': 'contentMarkdown'},
    {'1': 'rating', '3': 9, '4': 1, '5': 1, '10': 'rating'},
  ],
};

/// Descriptor for `ServiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceResponseDescriptor = $convert.base64Decode(
    'Cg9TZXJ2aWNlUmVzcG9uc2USDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSFA'
    'oFcHJpY2UYAyABKAFSBXByaWNlEiEKDHNwZWNpYWx0eV9pZBgEIAEoBVILc3BlY2lhbHR5SWQS'
    'IAoLZGVzY3JpcHRpb24YBSABKAlSC2Rlc2NyaXB0aW9uEhQKBWltYWdlGAYgASgJUgVpbWFnZR'
    'IhCgxjb250ZW50X2h0bWwYByABKAlSC2NvbnRlbnRIdG1sEikKEGNvbnRlbnRfbWFya2Rvd24Y'
    'CCABKAlSD2NvbnRlbnRNYXJrZG93bhIWCgZyYXRpbmcYCSABKAFSBnJhdGluZw==');

@$core.Deprecated('Use serviceListResponseDescriptor instead')
const ServiceListResponse$json = {
  '1': 'ServiceListResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.master_data.ServiceResponse', '10': 'data'},
    {'1': 'total_count', '3': 2, '4': 1, '5': 5, '10': 'totalCount'},
  ],
};

/// Descriptor for `ServiceListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceListResponseDescriptor = $convert.base64Decode(
    'ChNTZXJ2aWNlTGlzdFJlc3BvbnNlEjAKBGRhdGEYASADKAsyHC5tYXN0ZXJfZGF0YS5TZXJ2aW'
    'NlUmVzcG9uc2VSBGRhdGESHwoLdG90YWxfY291bnQYAiABKAVSCnRvdGFsQ291bnQ=');

@$core.Deprecated('Use doctorInfoDescriptor instead')
const DoctorInfo$json = {
  '1': 'DoctorInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'full_name', '3': 2, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'phone', '3': 3, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'avatar', '3': 4, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'price', '3': 6, '4': 1, '5': 1, '10': 'price'},
    {'1': 'position', '3': 7, '4': 1, '5': 9, '10': 'position'},
    {'1': 'specialty_id', '3': 8, '4': 1, '5': 5, '10': 'specialtyId'},
    {'1': 'room_id', '3': 9, '4': 1, '5': 5, '10': 'roomId'},
    {'1': 'specialty_name', '3': 10, '4': 1, '5': 9, '10': 'specialtyName'},
    {'1': 'rating', '3': 11, '4': 1, '5': 1, '10': 'rating'},
  ],
};

/// Descriptor for `DoctorInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doctorInfoDescriptor = $convert.base64Decode(
    'CgpEb2N0b3JJbmZvEg4KAmlkGAEgASgFUgJpZBIbCglmdWxsX25hbWUYAiABKAlSCGZ1bGxOYW'
    '1lEhQKBXBob25lGAMgASgJUgVwaG9uZRIWCgZhdmF0YXIYBCABKAlSBmF2YXRhchIgCgtkZXNj'
    'cmlwdGlvbhgFIAEoCVILZGVzY3JpcHRpb24SFAoFcHJpY2UYBiABKAFSBXByaWNlEhoKCHBvc2'
    'l0aW9uGAcgASgJUghwb3NpdGlvbhIhCgxzcGVjaWFsdHlfaWQYCCABKAVSC3NwZWNpYWx0eUlk'
    'EhcKB3Jvb21faWQYCSABKAVSBnJvb21JZBIlCg5zcGVjaWFsdHlfbmFtZRgKIAEoCVINc3BlY2'
    'lhbHR5TmFtZRIWCgZyYXRpbmcYCyABKAFSBnJhdGluZw==');

@$core.Deprecated('Use doctorListByServiceResponseDescriptor instead')
const DoctorListByServiceResponse$json = {
  '1': 'DoctorListByServiceResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.master_data.DoctorInfo', '10': 'data'},
  ],
};

/// Descriptor for `DoctorListByServiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doctorListByServiceResponseDescriptor = $convert.base64Decode(
    'ChtEb2N0b3JMaXN0QnlTZXJ2aWNlUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcx'
    'IrCgRkYXRhGAIgAygLMhcubWFzdGVyX2RhdGEuRG9jdG9ySW5mb1IEZGF0YQ==');

@$core.Deprecated('Use createDrugRequestDescriptor instead')
const CreateDrugRequest$json = {
  '1': 'CreateDrugRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'unit', '3': 2, '4': 1, '5': 9, '10': 'unit'},
    {'1': 'price', '3': 3, '4': 1, '5': 1, '10': 'price'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'content_html', '3': 5, '4': 1, '5': 9, '10': 'contentHtml'},
    {'1': 'content_markdown', '3': 6, '4': 1, '5': 9, '10': 'contentMarkdown'},
    {'1': 'specialty_id', '3': 7, '4': 1, '5': 5, '10': 'specialtyId'},
  ],
};

/// Descriptor for `CreateDrugRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDrugRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVEcnVnUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhIKBHVuaXQYAiABKAlSBH'
    'VuaXQSFAoFcHJpY2UYAyABKAFSBXByaWNlEiAKC2Rlc2NyaXB0aW9uGAQgASgJUgtkZXNjcmlw'
    'dGlvbhIhCgxjb250ZW50X2h0bWwYBSABKAlSC2NvbnRlbnRIdG1sEikKEGNvbnRlbnRfbWFya2'
    'Rvd24YBiABKAlSD2NvbnRlbnRNYXJrZG93bhIhCgxzcGVjaWFsdHlfaWQYByABKAVSC3NwZWNp'
    'YWx0eUlk');

@$core.Deprecated('Use updateDrugRequestDescriptor instead')
const UpdateDrugRequest$json = {
  '1': 'UpdateDrugRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'unit', '3': 3, '4': 1, '5': 9, '10': 'unit'},
    {'1': 'price', '3': 4, '4': 1, '5': 1, '10': 'price'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'content_html', '3': 6, '4': 1, '5': 9, '10': 'contentHtml'},
    {'1': 'content_markdown', '3': 7, '4': 1, '5': 9, '10': 'contentMarkdown'},
    {'1': 'specialty_id', '3': 8, '4': 1, '5': 5, '10': 'specialtyId'},
  ],
};

/// Descriptor for `UpdateDrugRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDrugRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVEcnVnUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZR'
    'ISCgR1bml0GAMgASgJUgR1bml0EhQKBXByaWNlGAQgASgBUgVwcmljZRIgCgtkZXNjcmlwdGlv'
    'bhgFIAEoCVILZGVzY3JpcHRpb24SIQoMY29udGVudF9odG1sGAYgASgJUgtjb250ZW50SHRtbB'
    'IpChBjb250ZW50X21hcmtkb3duGAcgASgJUg9jb250ZW50TWFya2Rvd24SIQoMc3BlY2lhbHR5'
    'X2lkGAggASgFUgtzcGVjaWFsdHlJZA==');

@$core.Deprecated('Use drugResponseDescriptor instead')
const DrugResponse$json = {
  '1': 'DrugResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'unit', '3': 3, '4': 1, '5': 9, '10': 'unit'},
    {'1': 'price', '3': 4, '4': 1, '5': 1, '10': 'price'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'content_html', '3': 6, '4': 1, '5': 9, '10': 'contentHtml'},
    {'1': 'content_markdown', '3': 7, '4': 1, '5': 9, '10': 'contentMarkdown'},
    {'1': 'specialty_id', '3': 8, '4': 1, '5': 5, '10': 'specialtyId'},
  ],
};

/// Descriptor for `DrugResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List drugResponseDescriptor = $convert.base64Decode(
    'CgxEcnVnUmVzcG9uc2USDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSEgoEdW'
    '5pdBgDIAEoCVIEdW5pdBIUCgVwcmljZRgEIAEoAVIFcHJpY2USIAoLZGVzY3JpcHRpb24YBSAB'
    'KAlSC2Rlc2NyaXB0aW9uEiEKDGNvbnRlbnRfaHRtbBgGIAEoCVILY29udGVudEh0bWwSKQoQY2'
    '9udGVudF9tYXJrZG93bhgHIAEoCVIPY29udGVudE1hcmtkb3duEiEKDHNwZWNpYWx0eV9pZBgI'
    'IAEoBVILc3BlY2lhbHR5SWQ=');

@$core.Deprecated('Use drugListResponseDescriptor instead')
const DrugListResponse$json = {
  '1': 'DrugListResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.master_data.DrugResponse', '10': 'data'},
    {'1': 'total_count', '3': 2, '4': 1, '5': 5, '10': 'totalCount'},
  ],
};

/// Descriptor for `DrugListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List drugListResponseDescriptor = $convert.base64Decode(
    'ChBEcnVnTGlzdFJlc3BvbnNlEi0KBGRhdGEYASADKAsyGS5tYXN0ZXJfZGF0YS5EcnVnUmVzcG'
    '9uc2VSBGRhdGESHwoLdG90YWxfY291bnQYAiABKAVSCnRvdGFsQ291bnQ=');

@$core.Deprecated('Use createAllCodeRequestDescriptor instead')
const CreateAllCodeRequest$json = {
  '1': 'CreateAllCodeRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value_vi', '3': 3, '4': 1, '5': 9, '10': 'valueVi'},
    {'1': 'value_en', '3': 4, '4': 1, '5': 9, '10': 'valueEn'},
  ],
};

/// Descriptor for `CreateAllCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAllCodeRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVBbGxDb2RlUmVxdWVzdBISCgR0eXBlGAEgASgJUgR0eXBlEhAKA2tleRgCIAEoCV'
    'IDa2V5EhkKCHZhbHVlX3ZpGAMgASgJUgd2YWx1ZVZpEhkKCHZhbHVlX2VuGAQgASgJUgd2YWx1'
    'ZUVu');

@$core.Deprecated('Use updateAllCodeRequestDescriptor instead')
const UpdateAllCodeRequest$json = {
  '1': 'UpdateAllCodeRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value_vi', '3': 4, '4': 1, '5': 9, '10': 'valueVi'},
    {'1': 'value_en', '3': 5, '4': 1, '5': 9, '10': 'valueEn'},
  ],
};

/// Descriptor for `UpdateAllCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAllCodeRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVBbGxDb2RlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSEgoEdHlwZRgCIAEoCVIEdH'
    'lwZRIQCgNrZXkYAyABKAlSA2tleRIZCgh2YWx1ZV92aRgEIAEoCVIHdmFsdWVWaRIZCgh2YWx1'
    'ZV9lbhgFIAEoCVIHdmFsdWVFbg==');

@$core.Deprecated('Use allCodeResponseDescriptor instead')
const AllCodeResponse$json = {
  '1': 'AllCodeResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    {'1': 'key', '3': 3, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value_vi', '3': 4, '4': 1, '5': 9, '10': 'valueVi'},
    {'1': 'value_en', '3': 5, '4': 1, '5': 9, '10': 'valueEn'},
  ],
};

/// Descriptor for `AllCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allCodeResponseDescriptor = $convert.base64Decode(
    'Cg9BbGxDb2RlUmVzcG9uc2USDgoCaWQYASABKAVSAmlkEhIKBHR5cGUYAiABKAlSBHR5cGUSEA'
    'oDa2V5GAMgASgJUgNrZXkSGQoIdmFsdWVfdmkYBCABKAlSB3ZhbHVlVmkSGQoIdmFsdWVfZW4Y'
    'BSABKAlSB3ZhbHVlRW4=');

@$core.Deprecated('Use getAllCodesRequestDescriptor instead')
const GetAllCodesRequest$json = {
  '1': 'GetAllCodesRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `GetAllCodesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAllCodesRequestDescriptor = $convert.base64Decode(
    'ChJHZXRBbGxDb2Rlc1JlcXVlc3QSEgoEdHlwZRgBIAEoCVIEdHlwZQ==');

@$core.Deprecated('Use allCodeListResponseDescriptor instead')
const AllCodeListResponse$json = {
  '1': 'AllCodeListResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.master_data.AllCodeResponse', '10': 'data'},
  ],
};

/// Descriptor for `AllCodeListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allCodeListResponseDescriptor = $convert.base64Decode(
    'ChNBbGxDb2RlTGlzdFJlc3BvbnNlEjAKBGRhdGEYASADKAsyHC5tYXN0ZXJfZGF0YS5BbGxDb2'
    'RlUmVzcG9uc2VSBGRhdGE=');

