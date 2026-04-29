//
//  Generated code. Do not modify.
//  source: treatment.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userRecordsRequestDescriptor instead')
const UserRecordsRequest$json = {
  '1': 'UserRecordsRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `UserRecordsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRecordsRequestDescriptor = $convert.base64Decode(
    'ChJVc2VyUmVjb3Jkc1JlcXVlc3QSFwoHdXNlcl9pZBgBIAEoBVIGdXNlcklk');

@$core.Deprecated('Use userRecordsResponseDescriptor instead')
const UserRecordsResponse$json = {
  '1': 'UserRecordsResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'data', '3': 3, '4': 3, '5': 11, '6': '.treatment.MedicalRecordSummary', '10': 'data'},
  ],
};

/// Descriptor for `UserRecordsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRecordsResponseDescriptor = $convert.base64Decode(
    'ChNVc2VyUmVjb3Jkc1Jlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2'
    'FnZRgCIAEoCVIHbWVzc2FnZRIzCgRkYXRhGAMgAygLMh8udHJlYXRtZW50Lk1lZGljYWxSZWNv'
    'cmRTdW1tYXJ5UgRkYXRh');

@$core.Deprecated('Use medicalRecordSummaryDescriptor instead')
const MedicalRecordSummary$json = {
  '1': 'MedicalRecordSummary',
  '2': [
    {'1': 'booking_id', '3': 1, '4': 1, '5': 5, '10': 'bookingId'},
    {'1': 'exam_date', '3': 2, '4': 1, '5': 9, '10': 'examDate'},
    {'1': 'doctor_name', '3': 3, '4': 1, '5': 9, '10': 'doctorName'},
    {'1': 'diagnosis', '3': 4, '4': 1, '5': 9, '10': 'diagnosis'},
    {'1': 'specialty_name', '3': 5, '4': 1, '5': 9, '10': 'specialtyName'},
  ],
};

/// Descriptor for `MedicalRecordSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List medicalRecordSummaryDescriptor = $convert.base64Decode(
    'ChRNZWRpY2FsUmVjb3JkU3VtbWFyeRIdCgpib29raW5nX2lkGAEgASgFUglib29raW5nSWQSGw'
    'oJZXhhbV9kYXRlGAIgASgJUghleGFtRGF0ZRIfCgtkb2N0b3JfbmFtZRgDIAEoCVIKZG9jdG9y'
    'TmFtZRIcCglkaWFnbm9zaXMYBCABKAlSCWRpYWdub3NpcxIlCg5zcGVjaWFsdHlfbmFtZRgFIA'
    'EoCVINc3BlY2lhbHR5TmFtZQ==');

@$core.Deprecated('Use treatmentRequestDescriptor instead')
const TreatmentRequest$json = {
  '1': 'TreatmentRequest',
  '2': [
    {'1': 'booking_id', '3': 1, '4': 1, '5': 5, '10': 'bookingId'},
  ],
};

/// Descriptor for `TreatmentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List treatmentRequestDescriptor = $convert.base64Decode(
    'ChBUcmVhdG1lbnRSZXF1ZXN0Eh0KCmJvb2tpbmdfaWQYASABKAVSCWJvb2tpbmdJZA==');

@$core.Deprecated('Use treatmentResponseDescriptor instead')
const TreatmentResponse$json = {
  '1': 'TreatmentResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'data', '3': 3, '4': 1, '5': 11, '6': '.treatment.TreatmentData', '10': 'data'},
  ],
};

/// Descriptor for `TreatmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List treatmentResponseDescriptor = $convert.base64Decode(
    'ChFUcmVhdG1lbnRSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2'
    'UYAiABKAlSB21lc3NhZ2USLAoEZGF0YRgDIAEoCzIYLnRyZWF0bWVudC5UcmVhdG1lbnREYXRh'
    'UgRkYXRh');

@$core.Deprecated('Use treatmentDataDescriptor instead')
const TreatmentData$json = {
  '1': 'TreatmentData',
  '2': [
    {'1': 'diagnosis', '3': 1, '4': 1, '5': 9, '10': 'diagnosis'},
    {'1': 'symptoms', '3': 2, '4': 1, '5': 9, '10': 'symptoms'},
    {'1': 'treatment_plan', '3': 3, '4': 1, '5': 9, '10': 'treatmentPlan'},
    {'1': 're_exam_date', '3': 4, '4': 1, '5': 9, '10': 'reExamDate'},
    {'1': 'instructions', '3': 5, '4': 3, '5': 11, '6': '.treatment.DetailedInstruction', '10': 'instructions'},
    {'1': 'medicines', '3': 6, '4': 3, '5': 11, '6': '.treatment.MedicineData', '10': 'medicines'},
  ],
};

/// Descriptor for `TreatmentData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List treatmentDataDescriptor = $convert.base64Decode(
    'Cg1UcmVhdG1lbnREYXRhEhwKCWRpYWdub3NpcxgBIAEoCVIJZGlhZ25vc2lzEhoKCHN5bXB0b2'
    '1zGAIgASgJUghzeW1wdG9tcxIlCg50cmVhdG1lbnRfcGxhbhgDIAEoCVINdHJlYXRtZW50UGxh'
    'bhIgCgxyZV9leGFtX2RhdGUYBCABKAlSCnJlRXhhbURhdGUSQgoMaW5zdHJ1Y3Rpb25zGAUgAy'
    'gLMh4udHJlYXRtZW50LkRldGFpbGVkSW5zdHJ1Y3Rpb25SDGluc3RydWN0aW9ucxI1CgltZWRp'
    'Y2luZXMYBiADKAsyFy50cmVhdG1lbnQuTWVkaWNpbmVEYXRhUgltZWRpY2luZXM=');

@$core.Deprecated('Use detailedInstructionDescriptor instead')
const DetailedInstruction$json = {
  '1': 'DetailedInstruction',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'times', '3': 2, '4': 1, '5': 9, '10': 'times'},
    {'1': 'instruction', '3': 3, '4': 1, '5': 9, '10': 'instruction'},
  ],
};

/// Descriptor for `DetailedInstruction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List detailedInstructionDescriptor = $convert.base64Decode(
    'ChNEZXRhaWxlZEluc3RydWN0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUSFAoFdGltZXMYAiABKA'
    'lSBXRpbWVzEiAKC2luc3RydWN0aW9uGAMgASgJUgtpbnN0cnVjdGlvbg==');

@$core.Deprecated('Use medicineDataDescriptor instead')
const MedicineData$json = {
  '1': 'MedicineData',
  '2': [
    {'1': 'medicine_name', '3': 1, '4': 1, '5': 9, '10': 'medicineName'},
    {'1': 'quantity', '3': 2, '4': 1, '5': 5, '10': 'quantity'},
    {'1': 'instruction', '3': 3, '4': 1, '5': 9, '10': 'instruction'},
  ],
};

/// Descriptor for `MedicineData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List medicineDataDescriptor = $convert.base64Decode(
    'CgxNZWRpY2luZURhdGESIwoNbWVkaWNpbmVfbmFtZRgBIAEoCVIMbWVkaWNpbmVOYW1lEhoKCH'
    'F1YW50aXR5GAIgASgFUghxdWFudGl0eRIgCgtpbnN0cnVjdGlvbhgDIAEoCVILaW5zdHJ1Y3Rp'
    'b24=');

