//
//  Generated code. Do not modify.
//  source: profile.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

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

@$core.Deprecated('Use userProfileResponseDescriptor instead')
const UserProfileResponse$json = {
  '1': 'UserProfileResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'role', '3': 3, '4': 1, '5': 9, '10': 'role'},
    {'1': 'fullName', '3': 4, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'phone', '3': 5, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'avatar', '3': 6, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'createdAt', '3': 7, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'birthday', '3': 8, '4': 1, '5': 9, '10': 'birthday'},
  ],
};

/// Descriptor for `UserProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProfileResponseDescriptor = $convert.base64Decode(
    'ChNVc2VyUHJvZmlsZVJlc3BvbnNlEg4KAmlkGAEgASgFUgJpZBIUCgVlbWFpbBgCIAEoCVIFZW'
    '1haWwSEgoEcm9sZRgDIAEoCVIEcm9sZRIaCghmdWxsTmFtZRgEIAEoCVIIZnVsbE5hbWUSFAoF'
    'cGhvbmUYBSABKAlSBXBob25lEhYKBmF2YXRhchgGIAEoCVIGYXZhdGFyEhwKCWNyZWF0ZWRBdB'
    'gHIAEoCVIJY3JlYXRlZEF0EhoKCGJpcnRoZGF5GAggASgJUghiaXJ0aGRheQ==');

@$core.Deprecated('Use updateProfileRequestDescriptor instead')
const UpdateProfileRequest$json = {
  '1': 'UpdateProfileRequest',
  '2': [
    {'1': 'fullName', '3': 1, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'phone', '3': 2, '4': 1, '5': 9, '10': 'phone'},
    {'1': 'avatar', '3': 3, '4': 1, '5': 9, '10': 'avatar'},
    {'1': 'birthday', '3': 4, '4': 1, '5': 9, '10': 'birthday'},
  ],
};

/// Descriptor for `UpdateProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVQcm9maWxlUmVxdWVzdBIaCghmdWxsTmFtZRgBIAEoCVIIZnVsbE5hbWUSFAoFcG'
    'hvbmUYAiABKAlSBXBob25lEhYKBmF2YXRhchgDIAEoCVIGYXZhdGFyEhoKCGJpcnRoZGF5GAQg'
    'ASgJUghiaXJ0aGRheQ==');

@$core.Deprecated('Use changePasswordRequestDescriptor instead')
const ChangePasswordRequest$json = {
  '1': 'ChangePasswordRequest',
  '2': [
    {'1': 'oldPassword', '3': 1, '4': 1, '5': 9, '10': 'oldPassword'},
    {'1': 'newPassword', '3': 2, '4': 1, '5': 9, '10': 'newPassword'},
    {'1': 'otp', '3': 3, '4': 1, '5': 9, '10': 'otp'},
  ],
};

/// Descriptor for `ChangePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordRequestDescriptor = $convert.base64Decode(
    'ChVDaGFuZ2VQYXNzd29yZFJlcXVlc3QSIAoLb2xkUGFzc3dvcmQYASABKAlSC29sZFBhc3N3b3'
    'JkEiAKC25ld1Bhc3N3b3JkGAIgASgJUgtuZXdQYXNzd29yZBIQCgNvdHAYAyABKAlSA290cA==');

