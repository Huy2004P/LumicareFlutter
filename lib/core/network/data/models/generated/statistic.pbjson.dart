//
//  Generated code. Do not modify.
//  source: statistic.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use dashboardRequestDescriptor instead')
const DashboardRequest$json = {
  '1': 'DashboardRequest',
  '2': [
    {'1': 'from_date', '3': 1, '4': 1, '5': 9, '10': 'fromDate'},
    {'1': 'to_date', '3': 2, '4': 1, '5': 9, '10': 'toDate'},
  ],
};

/// Descriptor for `DashboardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dashboardRequestDescriptor = $convert.base64Decode(
    'ChBEYXNoYm9hcmRSZXF1ZXN0EhsKCWZyb21fZGF0ZRgBIAEoCVIIZnJvbURhdGUSFwoHdG9fZG'
    'F0ZRgCIAEoCVIGdG9EYXRl');

@$core.Deprecated('Use adminDashboardResponseDescriptor instead')
const AdminDashboardResponse$json = {
  '1': 'AdminDashboardResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'total_doctors', '3': 2, '4': 1, '5': 5, '10': 'totalDoctors'},
    {'1': 'total_patients', '3': 3, '4': 1, '5': 5, '10': 'totalPatients'},
    {'1': 'total_bookings', '3': 4, '4': 1, '5': 5, '10': 'totalBookings'},
    {'1': 'total_revenue', '3': 5, '4': 1, '5': 1, '10': 'totalRevenue'},
    {'1': 'booking_status_breakdown', '3': 6, '4': 1, '5': 11, '6': '.statistic.BookingStatusStats', '10': 'bookingStatusBreakdown'},
    {'1': 'specialty_stats', '3': 7, '4': 3, '5': 11, '6': '.statistic.SpecialtyDistribution', '10': 'specialtyStats'},
    {'1': 'revenue_by_month', '3': 8, '4': 3, '5': 11, '6': '.statistic.ChartData', '10': 'revenueByMonth'},
    {'1': 'top_doctors', '3': 9, '4': 3, '5': 11, '6': '.statistic.TopDoctor', '10': 'topDoctors'},
    {'1': 'demographics', '3': 10, '4': 1, '5': 11, '6': '.statistic.PatientDemographics', '10': 'demographics'},
  ],
};

/// Descriptor for `AdminDashboardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adminDashboardResponseDescriptor = $convert.base64Decode(
    'ChZBZG1pbkRhc2hib2FyZFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSIwoNdG'
    '90YWxfZG9jdG9ycxgCIAEoBVIMdG90YWxEb2N0b3JzEiUKDnRvdGFsX3BhdGllbnRzGAMgASgF'
    'Ug10b3RhbFBhdGllbnRzEiUKDnRvdGFsX2Jvb2tpbmdzGAQgASgFUg10b3RhbEJvb2tpbmdzEi'
    'MKDXRvdGFsX3JldmVudWUYBSABKAFSDHRvdGFsUmV2ZW51ZRJXChhib29raW5nX3N0YXR1c19i'
    'cmVha2Rvd24YBiABKAsyHS5zdGF0aXN0aWMuQm9va2luZ1N0YXR1c1N0YXRzUhZib29raW5nU3'
    'RhdHVzQnJlYWtkb3duEkkKD3NwZWNpYWx0eV9zdGF0cxgHIAMoCzIgLnN0YXRpc3RpYy5TcGVj'
    'aWFsdHlEaXN0cmlidXRpb25SDnNwZWNpYWx0eVN0YXRzEj4KEHJldmVudWVfYnlfbW9udGgYCC'
    'ADKAsyFC5zdGF0aXN0aWMuQ2hhcnREYXRhUg5yZXZlbnVlQnlNb250aBI1Cgt0b3BfZG9jdG9y'
    'cxgJIAMoCzIULnN0YXRpc3RpYy5Ub3BEb2N0b3JSCnRvcERvY3RvcnMSQgoMZGVtb2dyYXBoaW'
    'NzGAogASgLMh4uc3RhdGlzdGljLlBhdGllbnREZW1vZ3JhcGhpY3NSDGRlbW9ncmFwaGljcw==');

@$core.Deprecated('Use bookingStatusStatsDescriptor instead')
const BookingStatusStats$json = {
  '1': 'BookingStatusStats',
  '2': [
    {'1': 'pending', '3': 1, '4': 1, '5': 5, '10': 'pending'},
    {'1': 'confirmed', '3': 2, '4': 1, '5': 5, '10': 'confirmed'},
    {'1': 'finished', '3': 3, '4': 1, '5': 5, '10': 'finished'},
    {'1': 'cancelled', '3': 4, '4': 1, '5': 5, '10': 'cancelled'},
  ],
};

/// Descriptor for `BookingStatusStats`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bookingStatusStatsDescriptor = $convert.base64Decode(
    'ChJCb29raW5nU3RhdHVzU3RhdHMSGAoHcGVuZGluZxgBIAEoBVIHcGVuZGluZxIcCgljb25maX'
    'JtZWQYAiABKAVSCWNvbmZpcm1lZBIaCghmaW5pc2hlZBgDIAEoBVIIZmluaXNoZWQSHAoJY2Fu'
    'Y2VsbGVkGAQgASgFUgljYW5jZWxsZWQ=');

@$core.Deprecated('Use specialtyDistributionDescriptor instead')
const SpecialtyDistribution$json = {
  '1': 'SpecialtyDistribution',
  '2': [
    {'1': 'specialty_name', '3': 1, '4': 1, '5': 9, '10': 'specialtyName'},
    {'1': 'doctor_count', '3': 2, '4': 1, '5': 5, '10': 'doctorCount'},
    {'1': 'booking_count', '3': 3, '4': 1, '5': 5, '10': 'bookingCount'},
    {'1': 'revenue', '3': 4, '4': 1, '5': 1, '10': 'revenue'},
  ],
};

/// Descriptor for `SpecialtyDistribution`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List specialtyDistributionDescriptor = $convert.base64Decode(
    'ChVTcGVjaWFsdHlEaXN0cmlidXRpb24SJQoOc3BlY2lhbHR5X25hbWUYASABKAlSDXNwZWNpYW'
    'x0eU5hbWUSIQoMZG9jdG9yX2NvdW50GAIgASgFUgtkb2N0b3JDb3VudBIjCg1ib29raW5nX2Nv'
    'dW50GAMgASgFUgxib29raW5nQ291bnQSGAoHcmV2ZW51ZRgEIAEoAVIHcmV2ZW51ZQ==');

@$core.Deprecated('Use patientDemographicsDescriptor instead')
const PatientDemographics$json = {
  '1': 'PatientDemographics',
  '2': [
    {'1': 'male_count', '3': 1, '4': 1, '5': 5, '10': 'maleCount'},
    {'1': 'female_count', '3': 2, '4': 1, '5': 5, '10': 'femaleCount'},
    {'1': 'other_count', '3': 3, '4': 1, '5': 5, '10': 'otherCount'},
  ],
};

/// Descriptor for `PatientDemographics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patientDemographicsDescriptor = $convert.base64Decode(
    'ChNQYXRpZW50RGVtb2dyYXBoaWNzEh0KCm1hbGVfY291bnQYASABKAVSCW1hbGVDb3VudBIhCg'
    'xmZW1hbGVfY291bnQYAiABKAVSC2ZlbWFsZUNvdW50Eh8KC290aGVyX2NvdW50GAMgASgFUgpv'
    'dGhlckNvdW50');

@$core.Deprecated('Use topDoctorDescriptor instead')
const TopDoctor$json = {
  '1': 'TopDoctor',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'total_done', '3': 3, '4': 1, '5': 5, '10': 'totalDone'},
    {'1': 'revenue', '3': 4, '4': 1, '5': 1, '10': 'revenue'},
    {'1': 'rating', '3': 5, '4': 1, '5': 1, '10': 'rating'},
  ],
};

/// Descriptor for `TopDoctor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topDoctorDescriptor = $convert.base64Decode(
    'CglUb3BEb2N0b3ISDgoCaWQYASABKAVSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSHQoKdG90YW'
    'xfZG9uZRgDIAEoBVIJdG90YWxEb25lEhgKB3JldmVudWUYBCABKAFSB3JldmVudWUSFgoGcmF0'
    'aW5nGAUgASgBUgZyYXRpbmc=');

@$core.Deprecated('Use chartDataDescriptor instead')
const ChartData$json = {
  '1': 'ChartData',
  '2': [
    {'1': 'label', '3': 1, '4': 1, '5': 9, '10': 'label'},
    {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
  ],
};

/// Descriptor for `ChartData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chartDataDescriptor = $convert.base64Decode(
    'CglDaGFydERhdGESFAoFbGFiZWwYASABKAlSBWxhYmVsEhQKBXZhbHVlGAIgASgBUgV2YWx1ZQ'
    '==');

