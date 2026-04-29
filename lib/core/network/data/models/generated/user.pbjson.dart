//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userResponseDescriptor instead')
const UserResponse$json = {
  '1': 'UserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'role', '3': 3, '4': 1, '5': 9, '10': 'role'},
    {'1': 'fullName', '3': 4, '4': 1, '5': 9, '10': 'fullName'},
    {'1': 'active', '3': 5, '4': 1, '5': 8, '10': 'active'},
    {'1': 'createdAt', '3': 6, '4': 1, '5': 9, '10': 'createdAt'},
  ],
};

/// Descriptor for `UserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userResponseDescriptor = $convert.base64Decode(
    'CgxVc2VyUmVzcG9uc2USDgoCaWQYASABKAVSAmlkEhQKBWVtYWlsGAIgASgJUgVlbWFpbBISCg'
    'Ryb2xlGAMgASgJUgRyb2xlEhoKCGZ1bGxOYW1lGAQgASgJUghmdWxsTmFtZRIWCgZhY3RpdmUY'
    'BSABKAhSBmFjdGl2ZRIcCgljcmVhdGVkQXQYBiABKAlSCWNyZWF0ZWRBdA==');

@$core.Deprecated('Use userFilterRequestDescriptor instead')
const UserFilterRequest$json = {
  '1': 'UserFilterRequest',
  '2': [
    {'1': 'searchTerm', '3': 1, '4': 1, '5': 9, '10': 'searchTerm'},
    {'1': 'role', '3': 2, '4': 1, '5': 9, '10': 'role'},
  ],
};

/// Descriptor for `UserFilterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userFilterRequestDescriptor = $convert.base64Decode(
    'ChFVc2VyRmlsdGVyUmVxdWVzdBIeCgpzZWFyY2hUZXJtGAEgASgJUgpzZWFyY2hUZXJtEhIKBH'
    'JvbGUYAiABKAlSBHJvbGU=');

@$core.Deprecated('Use userListResponseDescriptor instead')
const UserListResponse$json = {
  '1': 'UserListResponse',
  '2': [
    {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.user.UserResponse', '10': 'users'},
  ],
};

/// Descriptor for `UserListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userListResponseDescriptor = $convert.base64Decode(
    'ChBVc2VyTGlzdFJlc3BvbnNlEigKBXVzZXJzGAEgAygLMhIudXNlci5Vc2VyUmVzcG9uc2VSBX'
    'VzZXJz');

@$core.Deprecated('Use userStatusRequestDescriptor instead')
const UserStatusRequest$json = {
  '1': 'UserStatusRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `UserStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userStatusRequestDescriptor = $convert.base64Decode(
    'ChFVc2VyU3RhdHVzUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use userActionResponseDescriptor instead')
const UserActionResponse$json = {
  '1': 'UserActionResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `UserActionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userActionResponseDescriptor = $convert.base64Decode(
    'ChJVc2VyQWN0aW9uUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCgdtZXNzYW'
    'dlGAIgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use changePasswordRequestDescriptor instead')
const ChangePasswordRequest$json = {
  '1': 'ChangePasswordRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 5, '10': 'userId'},
    {'1': 'oldPassword', '3': 2, '4': 1, '5': 9, '10': 'oldPassword'},
    {'1': 'newPassword', '3': 3, '4': 1, '5': 9, '10': 'newPassword'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `ChangePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordRequestDescriptor = $convert.base64Decode(
    'ChVDaGFuZ2VQYXNzd29yZFJlcXVlc3QSFgoGdXNlcklkGAEgASgFUgZ1c2VySWQSIAoLb2xkUG'
    'Fzc3dvcmQYAiABKAlSC29sZFBhc3N3b3JkEiAKC25ld1Bhc3N3b3JkGAMgASgJUgtuZXdQYXNz'
    'd29yZBIUCgVlbWFpbBgEIAEoCVIFZW1haWw=');

