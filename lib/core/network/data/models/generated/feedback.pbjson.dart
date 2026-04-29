//
//  Generated code. Do not modify.
//  source: feedback.proto
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

@$core.Deprecated('Use feedbackRequestDescriptor instead')
const FeedbackRequest$json = {
  '1': 'FeedbackRequest',
  '2': [
    {'1': 'booking_id', '3': 1, '4': 1, '5': 5, '10': 'bookingId'},
    {'1': 'patient_id', '3': 2, '4': 1, '5': 5, '10': 'patientId'},
    {'1': 'doctor_id', '3': 3, '4': 1, '5': 5, '10': 'doctorId'},
    {'1': 'clinic_id', '3': 4, '4': 1, '5': 5, '10': 'clinicId'},
    {'1': 'service_id', '3': 5, '4': 1, '5': 5, '10': 'serviceId'},
    {'1': 'rating_doctor', '3': 6, '4': 1, '5': 5, '10': 'ratingDoctor'},
    {'1': 'rating_clinic', '3': 7, '4': 1, '5': 5, '10': 'ratingClinic'},
    {'1': 'rating_service', '3': 8, '4': 1, '5': 5, '10': 'ratingService'},
    {'1': 'rating_booking', '3': 9, '4': 1, '5': 5, '10': 'ratingBooking'},
    {'1': 'comment', '3': 10, '4': 1, '5': 9, '10': 'comment'},
  ],
};

/// Descriptor for `FeedbackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedbackRequestDescriptor = $convert.base64Decode(
    'Cg9GZWVkYmFja1JlcXVlc3QSHQoKYm9va2luZ19pZBgBIAEoBVIJYm9va2luZ0lkEh0KCnBhdG'
    'llbnRfaWQYAiABKAVSCXBhdGllbnRJZBIbCglkb2N0b3JfaWQYAyABKAVSCGRvY3RvcklkEhsK'
    'CWNsaW5pY19pZBgEIAEoBVIIY2xpbmljSWQSHQoKc2VydmljZV9pZBgFIAEoBVIJc2VydmljZU'
    'lkEiMKDXJhdGluZ19kb2N0b3IYBiABKAVSDHJhdGluZ0RvY3RvchIjCg1yYXRpbmdfY2xpbmlj'
    'GAcgASgFUgxyYXRpbmdDbGluaWMSJQoOcmF0aW5nX3NlcnZpY2UYCCABKAVSDXJhdGluZ1Nlcn'
    'ZpY2USJQoOcmF0aW5nX2Jvb2tpbmcYCSABKAVSDXJhdGluZ0Jvb2tpbmcSGAoHY29tbWVudBgK'
    'IAEoCVIHY29tbWVudA==');

@$core.Deprecated('Use feedbackResponseDescriptor instead')
const FeedbackResponse$json = {
  '1': 'FeedbackResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `FeedbackResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedbackResponseDescriptor = $convert.base64Decode(
    'ChBGZWVkYmFja1Jlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZR'
    'gCIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use doctorIdRequestDescriptor instead')
const DoctorIdRequest$json = {
  '1': 'DoctorIdRequest',
  '2': [
    {'1': 'doctor_id', '3': 1, '4': 1, '5': 5, '10': 'doctorId'},
  ],
};

/// Descriptor for `DoctorIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doctorIdRequestDescriptor = $convert.base64Decode(
    'Cg9Eb2N0b3JJZFJlcXVlc3QSGwoJZG9jdG9yX2lkGAEgASgFUghkb2N0b3JJZA==');

@$core.Deprecated('Use clinicIdRequestDescriptor instead')
const ClinicIdRequest$json = {
  '1': 'ClinicIdRequest',
  '2': [
    {'1': 'clinic_id', '3': 1, '4': 1, '5': 5, '10': 'clinicId'},
  ],
};

/// Descriptor for `ClinicIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clinicIdRequestDescriptor = $convert.base64Decode(
    'Cg9DbGluaWNJZFJlcXVlc3QSGwoJY2xpbmljX2lkGAEgASgFUghjbGluaWNJZA==');

@$core.Deprecated('Use serviceIdRequestDescriptor instead')
const ServiceIdRequest$json = {
  '1': 'ServiceIdRequest',
  '2': [
    {'1': 'service_id', '3': 1, '4': 1, '5': 5, '10': 'serviceId'},
  ],
};

/// Descriptor for `ServiceIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceIdRequestDescriptor = $convert.base64Decode(
    'ChBTZXJ2aWNlSWRSZXF1ZXN0Eh0KCnNlcnZpY2VfaWQYASABKAVSCXNlcnZpY2VJZA==');

@$core.Deprecated('Use feedbackItemDescriptor instead')
const FeedbackItem$json = {
  '1': 'FeedbackItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'patient_name', '3': 2, '4': 1, '5': 9, '10': 'patientName'},
    {'1': 'patient_avatar', '3': 3, '4': 1, '5': 9, '10': 'patientAvatar'},
    {'1': 'rating_doctor', '3': 4, '4': 1, '5': 5, '10': 'ratingDoctor'},
    {'1': 'rating_clinic', '3': 5, '4': 1, '5': 5, '10': 'ratingClinic'},
    {'1': 'rating_service', '3': 6, '4': 1, '5': 5, '10': 'ratingService'},
    {'1': 'rating_booking', '3': 7, '4': 1, '5': 5, '10': 'ratingBooking'},
    {'1': 'comment', '3': 8, '4': 1, '5': 9, '10': 'comment'},
    {'1': 'created_at', '3': 9, '4': 1, '5': 9, '10': 'createdAt'},
    {'1': 'doctor_name', '3': 10, '4': 1, '5': 9, '10': 'doctorName'},
  ],
};

/// Descriptor for `FeedbackItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedbackItemDescriptor = $convert.base64Decode(
    'CgxGZWVkYmFja0l0ZW0SDgoCaWQYASABKAVSAmlkEiEKDHBhdGllbnRfbmFtZRgCIAEoCVILcG'
    'F0aWVudE5hbWUSJQoOcGF0aWVudF9hdmF0YXIYAyABKAlSDXBhdGllbnRBdmF0YXISIwoNcmF0'
    'aW5nX2RvY3RvchgEIAEoBVIMcmF0aW5nRG9jdG9yEiMKDXJhdGluZ19jbGluaWMYBSABKAVSDH'
    'JhdGluZ0NsaW5pYxIlCg5yYXRpbmdfc2VydmljZRgGIAEoBVINcmF0aW5nU2VydmljZRIlCg5y'
    'YXRpbmdfYm9va2luZxgHIAEoBVINcmF0aW5nQm9va2luZxIYCgdjb21tZW50GAggASgJUgdjb2'
    '1tZW50Eh0KCmNyZWF0ZWRfYXQYCSABKAlSCWNyZWF0ZWRBdBIfCgtkb2N0b3JfbmFtZRgKIAEo'
    'CVIKZG9jdG9yTmFtZQ==');

@$core.Deprecated('Use feedbackListResponseDescriptor instead')
const FeedbackListResponse$json = {
  '1': 'FeedbackListResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.feedback.FeedbackItem', '10': 'data'},
    {'1': 'avg_rating', '3': 3, '4': 1, '5': 1, '10': 'avgRating'},
  ],
};

/// Descriptor for `FeedbackListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feedbackListResponseDescriptor = $convert.base64Decode(
    'ChRGZWVkYmFja0xpc3RSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEioKBGRhdG'
    'EYAiADKAsyFi5mZWVkYmFjay5GZWVkYmFja0l0ZW1SBGRhdGESHQoKYXZnX3JhdGluZxgDIAEo'
    'AVIJYXZnUmF0aW5n');

