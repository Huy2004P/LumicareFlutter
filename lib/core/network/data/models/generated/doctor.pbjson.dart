//
//  Generated code. Do not modify.
//  source: doctor.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use updatePasswordRequestDescriptor instead')
const UpdatePasswordRequest$json = {
  '1': 'UpdatePasswordRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'newPassword', '3': 2, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

/// Descriptor for `UpdatePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePasswordRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVQYXNzd29yZFJlcXVlc3QSDgoCaWQYASABKAVSAmlkEiAKC25ld1Bhc3N3b3JkGA'
    'IgASgJUgtuZXdQYXNzd29yZA==');

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

@$core.Deprecated('Use doctorIdRequestDescriptor instead')
const DoctorIdRequest$json = {
  '1': 'DoctorIdRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DoctorIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doctorIdRequestDescriptor = $convert.base64Decode(
    'Cg9Eb2N0b3JJZFJlcXVlc3QSDgoCaWQYASABKAVSAmlk');

@$core.Deprecated('Use doctorResponseDescriptor instead')
const DoctorResponse$json = {
  '1': 'DoctorResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'fullName', '3': 2, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'position', '3': 5, '4': 1, '5': 9, '10': 'position'},
    {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    {'1': 'price', '3': 7, '4': 1, '5': 1, '10': 'price'},
    {'1': 'avatar', '3': 8, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'specialtyName', '3': 9, '4': 1, '5': 9, '10': 'specialtyName'},
    {'1': 'roomName', '3': 10, '4': 1, '5': 9, '10': 'roomName'},
    {'1': 'clinicName', '3': 11, '4': 1, '5': 9, '10': 'clinicName'},
    {'1': 'active', '3': 12, '4': 1, '5': 8, '10': 'active'},
    {'1': 'specialtyId', '3': 13, '4': 1, '5': 5, '10': 'specialtyId'},
    {'1': 'rating', '3': 14, '4': 1, '5': 1, '10': 'rating'},
    {'1': 'roomId', '3': 15, '4': 1, '5': 5, '10': 'roomId'},
  ],
};

/// Descriptor for `DoctorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doctorResponseDescriptor = $convert.base64Decode(
    'Cg5Eb2N0b3JSZXNwb25zZRIOCgJpZBgBIAEoBVICaWQSGgoIZnVsbE5hbWUYAiABKAlSCGZ1bG'
    'xOYW1lEhQKBWVtYWlsGAMgASgJUgVlbWFpbBIUCgVwaG9uZRgEIAEoCVIFcGhvbmUSGgoIcG9z'
    'aXRpb24YBSABKAlSCHBvc2l0aW9uEiAKC2Rlc2NyaXB0aW9uGAYgASgJUgtkZXNjcmlwdGlvbh'
    'IUCgVwcmljZRgHIAEoAVIFcHJpY2USFgoGYXZhdGFyGAggASgJUgZhdmF0YXISJAoNc3BlY2lh'
    'bHR5TmFtZRgJIAEoCVINc3BlY2lhbHR5TmFtZRIaCghyb29tTmFtZRgKIAEoCVIIcm9vbU5hbW'
    'USHgoKY2xpbmljTmFtZRgLIAEoCVIKY2xpbmljTmFtZRIWCgZhY3RpdmUYDCABKAhSBmFjdGl2'
    'ZRIgCgtzcGVjaWFsdHlJZBgNIAEoBVILc3BlY2lhbHR5SWQSFgoGcmF0aW5nGA4gASgBUgZyYX'
    'RpbmcSFgoGcm9vbUlkGA8gASgFUgZyb29tSWQ=');

@$core.Deprecated('Use createDoctorRequestDescriptor instead')
const CreateDoctorRequest$json = {
  '1': 'CreateDoctorRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'fullName', '3': 3, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'phone', '3': 4, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'position', '3': 5, '4': 1, '5': 9, '10': 'position'},
    {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    {'1': 'price', '3': 7, '4': 1, '5': 1, '10': 'price'},
    {'1': 'avatar', '3': 8, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'specialtyId', '3': 9, '4': 1, '5': 5, '10': 'specialtyId'},
    {'1': 'roomId', '3': 10, '4': 1, '5': 5, '10': 'roomId'},
  ],
};

/// Descriptor for `CreateDoctorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDoctorRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVEb2N0b3JSZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbBIaCghwYXNzd29yZB'
    'gCIAEoCVIIcGFzc3dvcmQSGgoIZnVsbE5hbWUYAyABKAlSCGZ1bGxOYW1lEhQKBXBob25lGAQg'
    'ASgJUgVwaG9uZRIaCghwb3NpdGlvbhgFIAEoCVIIcG9zaXRpb24SIAoLZGVzY3JpcHRpb24YBi'
    'ABKAlSC2Rlc2NyaXB0aW9uEhQKBXByaWNlGAcgASgBUgVwcmljZRIWCgZhdmF0YXIYCCABKAlS'
    'BmF2YXRhchIgCgtzcGVjaWFsdHlJZBgJIAEoBVILc3BlY2lhbHR5SWQSFgoGcm9vbUlkGAogAS'
    'gFUgZyb29tSWQ=');

@$core.Deprecated('Use doctorFilterDescriptor instead')
const DoctorFilter$json = {
  '1': 'DoctorFilter',
  '2': [
    {'1': 'searchTerm', '3': 1, '4': 1, '5': 9, '10': 'searchTerm'},
    {'1': 'specialtyId', '3': 2, '4': 1, '5': 5, '10': 'specialtyId'},
    {'1': 'roomId', '3': 3, '4': 1, '5': 5, '10': 'roomId'},
  ],
};

/// Descriptor for `DoctorFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doctorFilterDescriptor = $convert.base64Decode(
    'CgxEb2N0b3JGaWx0ZXISHgoKc2VhcmNoVGVybRgBIAEoCVIKc2VhcmNoVGVybRIgCgtzcGVjaW'
    'FsdHlJZBgCIAEoBVILc3BlY2lhbHR5SWQSFgoGcm9vbUlkGAMgASgFUgZyb29tSWQ=');

@$core.Deprecated('Use doctorListResponseDescriptor instead')
const DoctorListResponse$json = {
  '1': 'DoctorListResponse',
  '2': [
    {'1': 'doctors', '3': 1, '4': 3, '5': 11, '6': '.doctor.DoctorResponse', '10': 'doctors'},
  ],
};

/// Descriptor for `DoctorListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doctorListResponseDescriptor = $convert.base64Decode(
    'ChJEb2N0b3JMaXN0UmVzcG9uc2USMAoHZG9jdG9ycxgBIAMoCzIWLmRvY3Rvci5Eb2N0b3JSZX'
    'Nwb25zZVIHZG9jdG9ycw==');

@$core.Deprecated('Use serviceItemDescriptor instead')
const ServiceItem$json = {
  '1': 'ServiceItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'price', '3': 3, '4': 1, '5': 1, '10': 'price'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'image', '3': 5, '4': 1, '5': 9, '10': 'image'},
  ],
};

/// Descriptor for `ServiceItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceItemDescriptor = $convert.base64Decode(
    'CgtTZXJ2aWNlSXRlbRIOCgJpZBgBIAEoBVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIUCgVwcm'
    'ljZRgDIAEoAVIFcHJpY2USIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaXB0aW9uEhQKBWlt'
    'YWdlGAUgASgJUgVpbWFnZQ==');

@$core.Deprecated('Use doctorServiceListResponseDescriptor instead')
const DoctorServiceListResponse$json = {
  '1': 'DoctorServiceListResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'doctorName', '3': 2, '4': 1, '5': 9, '10': 'doctorName'},
    {'1': 'data', '3': 3, '4': 3, '5': 11, '6': '.doctor.ServiceItem', '10': 'data'},
  ],
};

/// Descriptor for `DoctorServiceListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doctorServiceListResponseDescriptor = $convert.base64Decode(
    'ChlEb2N0b3JTZXJ2aWNlTGlzdFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSHg'
    'oKZG9jdG9yTmFtZRgCIAEoCVIKZG9jdG9yTmFtZRInCgRkYXRhGAMgAygLMhMuZG9jdG9yLlNl'
    'cnZpY2VJdGVtUgRkYXRh');

@$core.Deprecated('Use assignServiceRequestDescriptor instead')
const AssignServiceRequest$json = {
  '1': 'AssignServiceRequest',
  '2': [
    {'1': 'doctorId', '3': 1, '4': 1, '5': 5, '10': 'doctorId'},
    {'1': 'serviceIds', '3': 2, '4': 3, '5': 5, '10': 'serviceIds'},
  ],
};

/// Descriptor for `AssignServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assignServiceRequestDescriptor = $convert.base64Decode(
    'ChRBc3NpZ25TZXJ2aWNlUmVxdWVzdBIaCghkb2N0b3JJZBgBIAEoBVIIZG9jdG9ySWQSHgoKc2'
    'VydmljZUlkcxgCIAMoBVIKc2VydmljZUlkcw==');

@$core.Deprecated('Use globalSearchRequestDescriptor instead')
const GlobalSearchRequest$json = {
  '1': 'GlobalSearchRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {'1': 'limit', '3': 2, '4': 1, '5': 5, '10': 'limit'},
  ],
};

/// Descriptor for `GlobalSearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List globalSearchRequestDescriptor = $convert.base64Decode(
    'ChNHbG9iYWxTZWFyY2hSZXF1ZXN0EhQKBXF1ZXJ5GAEgASgJUgVxdWVyeRIUCgVsaW1pdBgCIA'
    'EoBVIFbGltaXQ=');

@$core.Deprecated('Use searchResultItemDescriptor instead')
const SearchResultItem$json = {
  '1': 'SearchResultItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'subTitle', '3': 3, '4': 1, '5': 9, '10': 'subTitle'},
    {'1': 'avatar', '3': 4, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `SearchResultItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchResultItemDescriptor = $convert.base64Decode(
    'ChBTZWFyY2hSZXN1bHRJdGVtEg4KAmlkGAEgASgFUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEh'
    'oKCHN1YlRpdGxlGAMgASgJUghzdWJUaXRsZRIWCgZhdmF0YXIYBCABKAlSBmF2YXRhchISCgR0'
    'eXBlGAUgASgJUgR0eXBl');

@$core.Deprecated('Use globalSearchResponseDescriptor instead')
const GlobalSearchResponse$json = {
  '1': 'GlobalSearchResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'results', '3': 2, '4': 3, '5': 11, '6': '.doctor.SearchResultItem', '10': 'results'},
  ],
};

/// Descriptor for `GlobalSearchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List globalSearchResponseDescriptor = $convert.base64Decode(
    'ChRHbG9iYWxTZWFyY2hSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEjIKB3Jlc3'
    'VsdHMYAiADKAsyGC5kb2N0b3IuU2VhcmNoUmVzdWx0SXRlbVIHcmVzdWx0cw==');

@$core.Deprecated('Use updateDoctorRequestDescriptor instead')
const UpdateDoctorRequest$json = {
  '1': 'UpdateDoctorRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'fullName', '3': 2, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'phone', '3': 3, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'position', '3': 4, '4': 1, '5': 9, '10': 'position'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
    {'1': 'price', '3': 6, '4': 1, '5': 1, '10': 'price'},
    {'1': 'avatar', '3': 7, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'specialtyId', '3': 8, '4': 1, '5': 5, '10': 'specialtyId'},
    {'1': 'roomId', '3': 9, '4': 1, '5': 5, '10': 'roomId'},
    {'1': 'active', '3': 10, '4': 1, '5': 8, '10': 'active'},
  ],
};

/// Descriptor for `UpdateDoctorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDoctorRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVEb2N0b3JSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBIaCghmdWxsTmFtZRgCIAEoCV'
    'IIZnVsbE5hbWUSFAoFcGhvbmUYAyABKAlSBXBob25lEhoKCHBvc2l0aW9uGAQgASgJUghwb3Np'
    'dGlvbhIgCgtkZXNjcmlwdGlvbhgFIAEoCVILZGVzY3JpcHRpb24SFAoFcHJpY2UYBiABKAFSBX'
    'ByaWNlEhYKBmF2YXRhchgHIAEoCVIGYXZhdGFyEiAKC3NwZWNpYWx0eUlkGAggASgFUgtzcGVj'
    'aWFsdHlJZBIWCgZyb29tSWQYCSABKAVSBnJvb21JZBIWCgZhY3RpdmUYCiABKAhSBmFjdGl2ZQ'
    '==');

