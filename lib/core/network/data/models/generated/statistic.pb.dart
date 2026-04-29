//
//  Generated code. Do not modify.
//  source: statistic.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DashboardRequest extends $pb.GeneratedMessage {
  factory DashboardRequest({
    $core.String? fromDate,
    $core.String? toDate,
  }) {
    final $result = create();
    if (fromDate != null) {
      $result.fromDate = fromDate;
    }
    if (toDate != null) {
      $result.toDate = toDate;
    }
    return $result;
  }
  DashboardRequest._() : super();
  factory DashboardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DashboardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DashboardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'statistic'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fromDate')
    ..aOS(2, _omitFieldNames ? '' : 'toDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DashboardRequest clone() => DashboardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DashboardRequest copyWith(void Function(DashboardRequest) updates) => super.copyWith((message) => updates(message as DashboardRequest)) as DashboardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DashboardRequest create() => DashboardRequest._();
  DashboardRequest createEmptyInstance() => create();
  static $pb.PbList<DashboardRequest> createRepeated() => $pb.PbList<DashboardRequest>();
  @$core.pragma('dart2js:noInline')
  static DashboardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DashboardRequest>(create);
  static DashboardRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fromDate => $_getSZ(0);
  @$pb.TagNumber(1)
  set fromDate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFromDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get toDate => $_getSZ(1);
  @$pb.TagNumber(2)
  set toDate($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearToDate() => clearField(2);
}

class AdminDashboardResponse extends $pb.GeneratedMessage {
  factory AdminDashboardResponse({
    $core.bool? success,
    $core.int? totalDoctors,
    $core.int? totalPatients,
    $core.int? totalBookings,
    $core.double? totalRevenue,
    BookingStatusStats? bookingStatusBreakdown,
    $core.Iterable<SpecialtyDistribution>? specialtyStats,
    $core.Iterable<ChartData>? revenueByMonth,
    $core.Iterable<TopDoctor>? topDoctors,
    PatientDemographics? demographics,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (totalDoctors != null) {
      $result.totalDoctors = totalDoctors;
    }
    if (totalPatients != null) {
      $result.totalPatients = totalPatients;
    }
    if (totalBookings != null) {
      $result.totalBookings = totalBookings;
    }
    if (totalRevenue != null) {
      $result.totalRevenue = totalRevenue;
    }
    if (bookingStatusBreakdown != null) {
      $result.bookingStatusBreakdown = bookingStatusBreakdown;
    }
    if (specialtyStats != null) {
      $result.specialtyStats.addAll(specialtyStats);
    }
    if (revenueByMonth != null) {
      $result.revenueByMonth.addAll(revenueByMonth);
    }
    if (topDoctors != null) {
      $result.topDoctors.addAll(topDoctors);
    }
    if (demographics != null) {
      $result.demographics = demographics;
    }
    return $result;
  }
  AdminDashboardResponse._() : super();
  factory AdminDashboardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdminDashboardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AdminDashboardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'statistic'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'totalDoctors', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalPatients', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'totalBookings', $pb.PbFieldType.O3)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'totalRevenue', $pb.PbFieldType.OD)
    ..aOM<BookingStatusStats>(6, _omitFieldNames ? '' : 'bookingStatusBreakdown', subBuilder: BookingStatusStats.create)
    ..pc<SpecialtyDistribution>(7, _omitFieldNames ? '' : 'specialtyStats', $pb.PbFieldType.PM, subBuilder: SpecialtyDistribution.create)
    ..pc<ChartData>(8, _omitFieldNames ? '' : 'revenueByMonth', $pb.PbFieldType.PM, subBuilder: ChartData.create)
    ..pc<TopDoctor>(9, _omitFieldNames ? '' : 'topDoctors', $pb.PbFieldType.PM, subBuilder: TopDoctor.create)
    ..aOM<PatientDemographics>(10, _omitFieldNames ? '' : 'demographics', subBuilder: PatientDemographics.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdminDashboardResponse clone() => AdminDashboardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdminDashboardResponse copyWith(void Function(AdminDashboardResponse) updates) => super.copyWith((message) => updates(message as AdminDashboardResponse)) as AdminDashboardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdminDashboardResponse create() => AdminDashboardResponse._();
  AdminDashboardResponse createEmptyInstance() => create();
  static $pb.PbList<AdminDashboardResponse> createRepeated() => $pb.PbList<AdminDashboardResponse>();
  @$core.pragma('dart2js:noInline')
  static AdminDashboardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdminDashboardResponse>(create);
  static AdminDashboardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get totalDoctors => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalDoctors($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalDoctors() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalDoctors() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalPatients => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalPatients($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalPatients() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalPatients() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get totalBookings => $_getIZ(3);
  @$pb.TagNumber(4)
  set totalBookings($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTotalBookings() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalBookings() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get totalRevenue => $_getN(4);
  @$pb.TagNumber(5)
  set totalRevenue($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalRevenue() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalRevenue() => clearField(5);

  @$pb.TagNumber(6)
  BookingStatusStats get bookingStatusBreakdown => $_getN(5);
  @$pb.TagNumber(6)
  set bookingStatusBreakdown(BookingStatusStats v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasBookingStatusBreakdown() => $_has(5);
  @$pb.TagNumber(6)
  void clearBookingStatusBreakdown() => clearField(6);
  @$pb.TagNumber(6)
  BookingStatusStats ensureBookingStatusBreakdown() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<SpecialtyDistribution> get specialtyStats => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<ChartData> get revenueByMonth => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<TopDoctor> get topDoctors => $_getList(8);

  @$pb.TagNumber(10)
  PatientDemographics get demographics => $_getN(9);
  @$pb.TagNumber(10)
  set demographics(PatientDemographics v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasDemographics() => $_has(9);
  @$pb.TagNumber(10)
  void clearDemographics() => clearField(10);
  @$pb.TagNumber(10)
  PatientDemographics ensureDemographics() => $_ensure(9);
}

/// Các message con giữ nguyên như bản trước để vẽ biểu đồ
class BookingStatusStats extends $pb.GeneratedMessage {
  factory BookingStatusStats({
    $core.int? pending,
    $core.int? confirmed,
    $core.int? finished,
    $core.int? cancelled,
  }) {
    final $result = create();
    if (pending != null) {
      $result.pending = pending;
    }
    if (confirmed != null) {
      $result.confirmed = confirmed;
    }
    if (finished != null) {
      $result.finished = finished;
    }
    if (cancelled != null) {
      $result.cancelled = cancelled;
    }
    return $result;
  }
  BookingStatusStats._() : super();
  factory BookingStatusStats.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BookingStatusStats.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BookingStatusStats', package: const $pb.PackageName(_omitMessageNames ? '' : 'statistic'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pending', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'confirmed', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'finished', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'cancelled', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BookingStatusStats clone() => BookingStatusStats()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BookingStatusStats copyWith(void Function(BookingStatusStats) updates) => super.copyWith((message) => updates(message as BookingStatusStats)) as BookingStatusStats;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BookingStatusStats create() => BookingStatusStats._();
  BookingStatusStats createEmptyInstance() => create();
  static $pb.PbList<BookingStatusStats> createRepeated() => $pb.PbList<BookingStatusStats>();
  @$core.pragma('dart2js:noInline')
  static BookingStatusStats getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BookingStatusStats>(create);
  static BookingStatusStats? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pending => $_getIZ(0);
  @$pb.TagNumber(1)
  set pending($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPending() => $_has(0);
  @$pb.TagNumber(1)
  void clearPending() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get confirmed => $_getIZ(1);
  @$pb.TagNumber(2)
  set confirmed($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfirmed() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfirmed() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get finished => $_getIZ(2);
  @$pb.TagNumber(3)
  set finished($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFinished() => $_has(2);
  @$pb.TagNumber(3)
  void clearFinished() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get cancelled => $_getIZ(3);
  @$pb.TagNumber(4)
  set cancelled($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCancelled() => $_has(3);
  @$pb.TagNumber(4)
  void clearCancelled() => clearField(4);
}

class SpecialtyDistribution extends $pb.GeneratedMessage {
  factory SpecialtyDistribution({
    $core.String? specialtyName,
    $core.int? doctorCount,
    $core.int? bookingCount,
    $core.double? revenue,
  }) {
    final $result = create();
    if (specialtyName != null) {
      $result.specialtyName = specialtyName;
    }
    if (doctorCount != null) {
      $result.doctorCount = doctorCount;
    }
    if (bookingCount != null) {
      $result.bookingCount = bookingCount;
    }
    if (revenue != null) {
      $result.revenue = revenue;
    }
    return $result;
  }
  SpecialtyDistribution._() : super();
  factory SpecialtyDistribution.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpecialtyDistribution.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SpecialtyDistribution', package: const $pb.PackageName(_omitMessageNames ? '' : 'statistic'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'specialtyName')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'doctorCount', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'bookingCount', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'revenue', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpecialtyDistribution clone() => SpecialtyDistribution()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpecialtyDistribution copyWith(void Function(SpecialtyDistribution) updates) => super.copyWith((message) => updates(message as SpecialtyDistribution)) as SpecialtyDistribution;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpecialtyDistribution create() => SpecialtyDistribution._();
  SpecialtyDistribution createEmptyInstance() => create();
  static $pb.PbList<SpecialtyDistribution> createRepeated() => $pb.PbList<SpecialtyDistribution>();
  @$core.pragma('dart2js:noInline')
  static SpecialtyDistribution getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpecialtyDistribution>(create);
  static SpecialtyDistribution? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get specialtyName => $_getSZ(0);
  @$pb.TagNumber(1)
  set specialtyName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpecialtyName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpecialtyName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get doctorCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set doctorCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDoctorCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearDoctorCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get bookingCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set bookingCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBookingCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearBookingCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get revenue => $_getN(3);
  @$pb.TagNumber(4)
  set revenue($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRevenue() => $_has(3);
  @$pb.TagNumber(4)
  void clearRevenue() => clearField(4);
}

class PatientDemographics extends $pb.GeneratedMessage {
  factory PatientDemographics({
    $core.int? maleCount,
    $core.int? femaleCount,
    $core.int? otherCount,
  }) {
    final $result = create();
    if (maleCount != null) {
      $result.maleCount = maleCount;
    }
    if (femaleCount != null) {
      $result.femaleCount = femaleCount;
    }
    if (otherCount != null) {
      $result.otherCount = otherCount;
    }
    return $result;
  }
  PatientDemographics._() : super();
  factory PatientDemographics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PatientDemographics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PatientDemographics', package: const $pb.PackageName(_omitMessageNames ? '' : 'statistic'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'maleCount', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'femaleCount', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'otherCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PatientDemographics clone() => PatientDemographics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PatientDemographics copyWith(void Function(PatientDemographics) updates) => super.copyWith((message) => updates(message as PatientDemographics)) as PatientDemographics;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatientDemographics create() => PatientDemographics._();
  PatientDemographics createEmptyInstance() => create();
  static $pb.PbList<PatientDemographics> createRepeated() => $pb.PbList<PatientDemographics>();
  @$core.pragma('dart2js:noInline')
  static PatientDemographics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PatientDemographics>(create);
  static PatientDemographics? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get maleCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set maleCount($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMaleCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaleCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get femaleCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set femaleCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFemaleCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearFemaleCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get otherCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set otherCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOtherCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearOtherCount() => clearField(3);
}

class TopDoctor extends $pb.GeneratedMessage {
  factory TopDoctor({
    $core.int? id,
    $core.String? name,
    $core.int? totalDone,
    $core.double? revenue,
    $core.double? rating,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (totalDone != null) {
      $result.totalDone = totalDone;
    }
    if (revenue != null) {
      $result.revenue = revenue;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    return $result;
  }
  TopDoctor._() : super();
  factory TopDoctor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TopDoctor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TopDoctor', package: const $pb.PackageName(_omitMessageNames ? '' : 'statistic'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalDone', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'revenue', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'rating', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TopDoctor clone() => TopDoctor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TopDoctor copyWith(void Function(TopDoctor) updates) => super.copyWith((message) => updates(message as TopDoctor)) as TopDoctor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopDoctor create() => TopDoctor._();
  TopDoctor createEmptyInstance() => create();
  static $pb.PbList<TopDoctor> createRepeated() => $pb.PbList<TopDoctor>();
  @$core.pragma('dart2js:noInline')
  static TopDoctor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TopDoctor>(create);
  static TopDoctor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalDone => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalDone($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalDone() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get revenue => $_getN(3);
  @$pb.TagNumber(4)
  set revenue($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRevenue() => $_has(3);
  @$pb.TagNumber(4)
  void clearRevenue() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get rating => $_getN(4);
  @$pb.TagNumber(5)
  set rating($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRating() => $_has(4);
  @$pb.TagNumber(5)
  void clearRating() => clearField(5);
}

class ChartData extends $pb.GeneratedMessage {
  factory ChartData({
    $core.String? label,
    $core.double? value,
  }) {
    final $result = create();
    if (label != null) {
      $result.label = label;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  ChartData._() : super();
  factory ChartData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChartData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChartData', package: const $pb.PackageName(_omitMessageNames ? '' : 'statistic'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'label')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChartData clone() => ChartData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChartData copyWith(void Function(ChartData) updates) => super.copyWith((message) => updates(message as ChartData)) as ChartData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChartData create() => ChartData._();
  ChartData createEmptyInstance() => create();
  static $pb.PbList<ChartData> createRepeated() => $pb.PbList<ChartData>();
  @$core.pragma('dart2js:noInline')
  static ChartData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChartData>(create);
  static ChartData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get label => $_getSZ(0);
  @$pb.TagNumber(1)
  set label($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabel() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabel() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
