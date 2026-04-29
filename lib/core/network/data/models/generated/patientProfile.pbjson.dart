//
//  Generated code. Do not modify.
//  source: patientProfile.proto
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
    {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `GetByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getByIdRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRCeUlkUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSFwoHdXNlcl9pZBgCIAEoBVIGdXNlck'
    'lk');

@$core.Deprecated('Use getProfilesRequestDescriptor instead')
const GetProfilesRequest$json = {
  '1': 'GetProfilesRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `GetProfilesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProfilesRequestDescriptor = $convert.base64Decode(
    'ChJHZXRQcm9maWxlc1JlcXVlc3QSFwoHdXNlcl9pZBgBIAEoBVIGdXNlcklk');

@$core.Deprecated('Use createProfileRequestDescriptor instead')
const CreateProfileRequest$json = {
  '1': 'CreateProfileRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'full_name', '3': 2, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'birthday', '3': 3, '4': 1, '5': 9, '10': 'birthday'},
    {'1': 'gender', '3': 4, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'phone_number', '3': 5, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'address', '3': 6, '4': 1, '5': 9, '10': 'address'},
    {'1': 'relationship', '3': 7, '4': 1, '5': 9, '10': 'relationship'},
  ],
};

/// Descriptor for `CreateProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createProfileRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVQcm9maWxlUmVxdWVzdBIXCgd1c2VyX2lkGAEgASgFUgZ1c2VySWQSGwoJZnVsbF'
    '9uYW1lGAIgASgJUghmdWxsTmFtZRIaCghiaXJ0aGRheRgDIAEoCVIIYmlydGhkYXkSFgoGZ2Vu'
    'ZGVyGAQgASgJUgZnZW5kZXISIQoMcGhvbmVfbnVtYmVyGAUgASgJUgtwaG9uZU51bWJlchIYCg'
    'dhZGRyZXNzGAYgASgJUgdhZGRyZXNzEiIKDHJlbGF0aW9uc2hpcBgHIAEoCVIMcmVsYXRpb25z'
    'aGlw');

@$core.Deprecated('Use updateProfileRequestDescriptor instead')
const UpdateProfileRequest$json = {
  '1': 'UpdateProfileRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'full_name', '3': 3, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'birthday', '3': 4, '4': 1, '5': 9, '10': 'birthday'},
    {'1': 'gender', '3': 5, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'phone_number', '3': 6, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'address', '3': 7, '4': 1, '5': 9, '10': 'address'},
    {'1': 'relationship', '3': 8, '4': 1, '5': 9, '10': 'relationship'},
  ],
};

/// Descriptor for `UpdateProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVQcm9maWxlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSFwoHdXNlcl9pZBgCIAEoBV'
    'IGdXNlcklkEhsKCWZ1bGxfbmFtZRgDIAEoCVIIZnVsbE5hbWUSGgoIYmlydGhkYXkYBCABKAlS'
    'CGJpcnRoZGF5EhYKBmdlbmRlchgFIAEoCVIGZ2VuZGVyEiEKDHBob25lX251bWJlchgGIAEoCV'
    'ILcGhvbmVOdW1iZXISGAoHYWRkcmVzcxgHIAEoCVIHYWRkcmVzcxIiCgxyZWxhdGlvbnNoaXAY'
    'CCABKAlSDHJlbGF0aW9uc2hpcA==');

@$core.Deprecated('Use deleteProfileRequestDescriptor instead')
const DeleteProfileRequest$json = {
  '1': 'DeleteProfileRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `DeleteProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteProfileRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVQcm9maWxlUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSFwoHdXNlcl9pZBgCIAEoBV'
    'IGdXNlcklk');

@$core.Deprecated('Use profileResponseDescriptor instead')
const ProfileResponse$json = {
  '1': 'ProfileResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'full_name', '3': 3, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'birthday', '3': 4, '4': 1, '5': 9, '10': 'birthday'},
    {'1': 'gender', '3': 5, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'phone_number', '3': 6, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'address', '3': 7, '4': 1, '5': 9, '10': 'address'},
    {'1': 'relationship', '3': 8, '4': 1, '5': 9, '10': 'relationship'},
  ],
};

/// Descriptor for `ProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileResponseDescriptor = $convert.base64Decode(
    'Cg9Qcm9maWxlUmVzcG9uc2USDgoCaWQYASABKAVSAmlkEhcKB3VzZXJfaWQYAiABKAVSBnVzZX'
    'JJZBIbCglmdWxsX25hbWUYAyABKAlSCGZ1bGxOYW1lEhoKCGJpcnRoZGF5GAQgASgJUghiaXJ0'
    'aGRheRIWCgZnZW5kZXIYBSABKAlSBmdlbmRlchIhCgxwaG9uZV9udW1iZXIYBiABKAlSC3Bob2'
    '5lTnVtYmVyEhgKB2FkZHJlc3MYByABKAlSB2FkZHJlc3MSIgoMcmVsYXRpb25zaGlwGAggASgJ'
    'UgxyZWxhdGlvbnNoaXA=');

@$core.Deprecated('Use getProfilesResponseDescriptor instead')
const GetProfilesResponse$json = {
  '1': 'GetProfilesResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.patient_profile.ProfileResponse', '10': 'data'},
  ],
};

/// Descriptor for `GetProfilesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProfilesResponseDescriptor = $convert.base64Decode(
    'ChNHZXRQcm9maWxlc1Jlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSNAoEZGF0YR'
    'gCIAMoCzIgLnBhdGllbnRfcHJvZmlsZS5Qcm9maWxlUmVzcG9uc2VSBGRhdGE=');

