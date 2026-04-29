//
//  Generated code. Do not modify.
//  source: appointment.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getMedicalHistoryRequestDescriptor instead')
const GetMedicalHistoryRequest$json = {
  '1': 'GetMedicalHistoryRequest',
  '2': [
    {'1': 'patient_id', '3': 1, '4': 1, '5': 5, '10': 'patientId'},
    {'1': 'doctor_id', '3': 2, '4': 1, '5': 5, '10': 'doctorId'},
    {'1': 'keyword', '3': 3, '4': 1, '5': 9, '10': 'keyword'},
  ],
};

/// Descriptor for `GetMedicalHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMedicalHistoryRequestDescriptor = $convert.base64Decode(
    'ChhHZXRNZWRpY2FsSGlzdG9yeVJlcXVlc3QSHQoKcGF0aWVudF9pZBgBIAEoBVIJcGF0aWVudE'
    'lkEhsKCWRvY3Rvcl9pZBgCIAEoBVIIZG9jdG9ySWQSGAoHa2V5d29yZBgDIAEoCVIHa2V5d29y'
    'ZA==');

@$core.Deprecated('Use medicalRecordItemDescriptor instead')
const MedicalRecordItem$json = {
  '1': 'MedicalRecordItem',
  '2': [
    {'1': 'record_id', '3': 1, '4': 1, '5': 5, '10': 'recordId'},
    {'1': 'booking_id', '3': 2, '4': 1, '5': 5, '10': 'bookingId'},
    {'1': 'patient_id', '3': 3, '4': 1, '5': 5, '10': 'patientId'},
    {'1': 'patient_name', '3': 4, '4': 1, '5': 9, '10': 'patientName'},
    {'1': 'doctor_name', '3': 5, '4': 1, '5': 9, '10': 'doctorName'},
    {'1': 'date', '3': 6, '4': 1, '5': 9, '10': 'date'},
    {'1': 'symptoms', '3': 7, '4': 1, '5': 9, '10': 'symptoms'},
    {'1': 'diagnosis', '3': 8, '4': 1, '5': 9, '10': 'diagnosis'},
    {'1': 'treatment_plan', '3': 9, '4': 1, '5': 9, '10': 'treatmentPlan'},
    {'1': 'medicines', '3': 10, '4': 3, '5': 11, '6': '.appointment.MedicineItem', '10': 'medicines'},
    {'1': 'treatments', '3': 11, '4': 3, '5': 11, '6': '.appointment.TreatmentItem', '10': 'treatments'},
    {'1': 're_exam_date', '3': 12, '4': 1, '5': 9, '10': 'reExamDate'},
  ],
};

/// Descriptor for `MedicalRecordItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List medicalRecordItemDescriptor = $convert.base64Decode(
    'ChFNZWRpY2FsUmVjb3JkSXRlbRIbCglyZWNvcmRfaWQYASABKAVSCHJlY29yZElkEh0KCmJvb2'
    'tpbmdfaWQYAiABKAVSCWJvb2tpbmdJZBIdCgpwYXRpZW50X2lkGAMgASgFUglwYXRpZW50SWQS'
    'IQoMcGF0aWVudF9uYW1lGAQgASgJUgtwYXRpZW50TmFtZRIfCgtkb2N0b3JfbmFtZRgFIAEoCV'
    'IKZG9jdG9yTmFtZRISCgRkYXRlGAYgASgJUgRkYXRlEhoKCHN5bXB0b21zGAcgASgJUghzeW1w'
    'dG9tcxIcCglkaWFnbm9zaXMYCCABKAlSCWRpYWdub3NpcxIlCg50cmVhdG1lbnRfcGxhbhgJIA'
    'EoCVINdHJlYXRtZW50UGxhbhI3CgltZWRpY2luZXMYCiADKAsyGS5hcHBvaW50bWVudC5NZWRp'
    'Y2luZUl0ZW1SCW1lZGljaW5lcxI6Cgp0cmVhdG1lbnRzGAsgAygLMhouYXBwb2ludG1lbnQuVH'
    'JlYXRtZW50SXRlbVIKdHJlYXRtZW50cxIgCgxyZV9leGFtX2RhdGUYDCABKAlSCnJlRXhhbURh'
    'dGU=');

@$core.Deprecated('Use medicalHistoryResponseDescriptor instead')
const MedicalHistoryResponse$json = {
  '1': 'MedicalHistoryResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'data', '3': 3, '4': 3, '5': 11, '6': '.appointment.MedicalRecordItem', '10': 'data'},
  ],
};

/// Descriptor for `MedicalHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List medicalHistoryResponseDescriptor = $convert.base64Decode(
    'ChZNZWRpY2FsSGlzdG9yeVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbW'
    'Vzc2FnZRgCIAEoCVIHbWVzc2FnZRIyCgRkYXRhGAMgAygLMh4uYXBwb2ludG1lbnQuTWVkaWNh'
    'bFJlY29yZEl0ZW1SBGRhdGE=');

@$core.Deprecated('Use getListPatientRequestDescriptor instead')
const GetListPatientRequest$json = {
  '1': 'GetListPatientRequest',
  '2': [
    {'1': 'doctor_id', '3': 1, '4': 1, '5': 5, '10': 'doctorId'},
    {'1': 'date', '3': 2, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `GetListPatientRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getListPatientRequestDescriptor = $convert.base64Decode(
    'ChVHZXRMaXN0UGF0aWVudFJlcXVlc3QSGwoJZG9jdG9yX2lkGAEgASgFUghkb2N0b3JJZBISCg'
    'RkYXRlGAIgASgJUgRkYXRl');

@$core.Deprecated('Use patientBookingItemDescriptor instead')
const PatientBookingItem$json = {
  '1': 'PatientBookingItem',
  '2': [
    {'1': 'booking_id', '3': 1, '4': 1, '5': 5, '10': 'bookingId'},
    {'1': 'patient_id', '3': 2, '4': 1, '5': 5, '10': 'patientId'},
    {'1': 'patient_name', '3': 3, '4': 1, '5': 9, '10': 'patientName'},
    {'1': 'phone_number', '3': 4, '4': 1, '5': 9, '10': 'phoneNumber'},
    {'1': 'time_type', '3': 5, '4': 1, '5': 9, '10': 'timeType'},
    {'1': 'time_display', '3': 6, '4': 1, '5': 9, '10': 'timeDisplay'},
    {'1': 'reason', '3': 7, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'status', '3': 8, '4': 1, '5': 9, '10': 'status'},
    {'1': 'gender', '3': 9, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'birthday', '3': 10, '4': 1, '5': 9, '10': 'birthday'},
    {'1': 'address', '3': 11, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `PatientBookingItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patientBookingItemDescriptor = $convert.base64Decode(
    'ChJQYXRpZW50Qm9va2luZ0l0ZW0SHQoKYm9va2luZ19pZBgBIAEoBVIJYm9va2luZ0lkEh0KCn'
    'BhdGllbnRfaWQYAiABKAVSCXBhdGllbnRJZBIhCgxwYXRpZW50X25hbWUYAyABKAlSC3BhdGll'
    'bnROYW1lEiEKDHBob25lX251bWJlchgEIAEoCVILcGhvbmVOdW1iZXISGwoJdGltZV90eXBlGA'
    'UgASgJUgh0aW1lVHlwZRIhCgx0aW1lX2Rpc3BsYXkYBiABKAlSC3RpbWVEaXNwbGF5EhYKBnJl'
    'YXNvbhgHIAEoCVIGcmVhc29uEhYKBnN0YXR1cxgIIAEoCVIGc3RhdHVzEhYKBmdlbmRlchgJIA'
    'EoCVIGZ2VuZGVyEhoKCGJpcnRoZGF5GAogASgJUghiaXJ0aGRheRIYCgdhZGRyZXNzGAsgASgJ'
    'UgdhZGRyZXNz');

@$core.Deprecated('Use listPatientResponseDescriptor instead')
const ListPatientResponse$json = {
  '1': 'ListPatientResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'data', '3': 3, '4': 3, '5': 11, '6': '.appointment.PatientBookingItem', '10': 'data'},
  ],
};

/// Descriptor for `ListPatientResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPatientResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0UGF0aWVudFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2'
    'FnZRgCIAEoCVIHbWVzc2FnZRIzCgRkYXRhGAMgAygLMh8uYXBwb2ludG1lbnQuUGF0aWVudEJv'
    'b2tpbmdJdGVtUgRkYXRh');

@$core.Deprecated('Use verifyBookingRequestDescriptor instead')
const VerifyBookingRequest$json = {
  '1': 'VerifyBookingRequest',
  '2': [
    {'1': 'doctor_id', '3': 1, '4': 1, '5': 5, '10': 'doctorId'},
    {'1': 'booking_id', '3': 2, '4': 1, '5': 5, '10': 'bookingId'},
    {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `VerifyBookingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyBookingRequestDescriptor = $convert.base64Decode(
    'ChRWZXJpZnlCb29raW5nUmVxdWVzdBIbCglkb2N0b3JfaWQYASABKAVSCGRvY3RvcklkEh0KCm'
    'Jvb2tpbmdfaWQYAiABKAVSCWJvb2tpbmdJZBIWCgZzdGF0dXMYAyABKAlSBnN0YXR1cw==');

@$core.Deprecated('Use verifyResponseDescriptor instead')
const VerifyResponse$json = {
  '1': 'VerifyResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `VerifyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyResponseDescriptor = $convert.base64Decode(
    'Cg5WZXJpZnlSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2UYAi'
    'ABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use medicineItemDescriptor instead')
const MedicineItem$json = {
  '1': 'MedicineItem',
  '2': [
    {'1': 'drug_id', '3': 1, '4': 1, '5': 5, '10': 'drugId'},
    {'1': 'drug_name', '3': 2, '4': 1, '5': 9, '10': 'drugName'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 5, '10': 'quantity'},
    {'1': 'instruction', '3': 4, '4': 1, '5': 9, '10': 'instruction'},
  ],
};

/// Descriptor for `MedicineItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List medicineItemDescriptor = $convert.base64Decode(
    'CgxNZWRpY2luZUl0ZW0SFwoHZHJ1Z19pZBgBIAEoBVIGZHJ1Z0lkEhsKCWRydWdfbmFtZRgCIA'
    'EoCVIIZHJ1Z05hbWUSGgoIcXVhbnRpdHkYAyABKAVSCHF1YW50aXR5EiAKC2luc3RydWN0aW9u'
    'GAQgASgJUgtpbnN0cnVjdGlvbg==');

@$core.Deprecated('Use finishAppointmentRequestDescriptor instead')
const FinishAppointmentRequest$json = {
  '1': 'FinishAppointmentRequest',
  '2': [
    {'1': 'doctor_id', '3': 1, '4': 1, '5': 5, '10': 'doctorId'},
    {'1': 'booking_id', '3': 2, '4': 1, '5': 5, '10': 'bookingId'},
    {'1': 'reason', '3': 3, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'symptoms', '3': 4, '4': 1, '5': 9, '10': 'symptoms'},
    {'1': 'diagnosis', '3': 5, '4': 1, '5': 9, '10': 'diagnosis'},
    {'1': 'treatment_plan', '3': 6, '4': 1, '5': 9, '10': 'treatmentPlan'},
    {'1': 'medicines', '3': 7, '4': 3, '5': 11, '6': '.appointment.MedicineItem', '10': 'medicines'},
    {'1': 'treatments', '3': 8, '4': 3, '5': 11, '6': '.appointment.TreatmentItem', '10': 'treatments'},
    {'1': 're_exam_date', '3': 9, '4': 1, '5': 9, '10': 'reExamDate'},
  ],
};

/// Descriptor for `FinishAppointmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finishAppointmentRequestDescriptor = $convert.base64Decode(
    'ChhGaW5pc2hBcHBvaW50bWVudFJlcXVlc3QSGwoJZG9jdG9yX2lkGAEgASgFUghkb2N0b3JJZB'
    'IdCgpib29raW5nX2lkGAIgASgFUglib29raW5nSWQSFgoGcmVhc29uGAMgASgJUgZyZWFzb24S'
    'GgoIc3ltcHRvbXMYBCABKAlSCHN5bXB0b21zEhwKCWRpYWdub3NpcxgFIAEoCVIJZGlhZ25vc2'
    'lzEiUKDnRyZWF0bWVudF9wbGFuGAYgASgJUg10cmVhdG1lbnRQbGFuEjcKCW1lZGljaW5lcxgH'
    'IAMoCzIZLmFwcG9pbnRtZW50Lk1lZGljaW5lSXRlbVIJbWVkaWNpbmVzEjoKCnRyZWF0bWVudH'
    'MYCCADKAsyGi5hcHBvaW50bWVudC5UcmVhdG1lbnRJdGVtUgp0cmVhdG1lbnRzEiAKDHJlX2V4'
    'YW1fZGF0ZRgJIAEoCVIKcmVFeGFtRGF0ZQ==');

@$core.Deprecated('Use treatmentItemDescriptor instead')
const TreatmentItem$json = {
  '1': 'TreatmentItem',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'times', '3': 2, '4': 1, '5': 9, '10': 'times'},
    {'1': 'instruction', '3': 3, '4': 1, '5': 9, '10': 'instruction'},
    {'1': 'repeat_days', '3': 4, '4': 1, '5': 9, '10': 'repeatDays'},
  ],
};

/// Descriptor for `TreatmentItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List treatmentItemDescriptor = $convert.base64Decode(
    'Cg1UcmVhdG1lbnRJdGVtEhIKBG5hbWUYASABKAlSBG5hbWUSFAoFdGltZXMYAiABKAlSBXRpbW'
    'VzEiAKC2luc3RydWN0aW9uGAMgASgJUgtpbnN0cnVjdGlvbhIfCgtyZXBlYXRfZGF5cxgEIAEo'
    'CVIKcmVwZWF0RGF5cw==');

@$core.Deprecated('Use finishResponseDescriptor instead')
const FinishResponse$json = {
  '1': 'FinishResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'record_id', '3': 3, '4': 1, '5': 5, '10': 'recordId'},
  ],
};

/// Descriptor for `FinishResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finishResponseDescriptor = $convert.base64Decode(
    'Cg5GaW5pc2hSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2UYAi'
    'ABKAlSB21lc3NhZ2USGwoJcmVjb3JkX2lkGAMgASgFUghyZWNvcmRJZA==');

