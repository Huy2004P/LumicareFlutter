//
//  Generated code. Do not modify.
//  source: search.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'search.pb.dart' as $12;

export 'search.pb.dart';

@$pb.GrpcServiceName('search.SearchService')
class SearchServiceClient extends $grpc.Client {
  static final _$globalSearch = $grpc.ClientMethod<$12.SearchRequest, $12.SearchResponse>(
      '/search.SearchService/GlobalSearch',
      ($12.SearchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.SearchResponse.fromBuffer(value));
  static final _$getSuggestions = $grpc.ClientMethod<$12.SearchRequest, $12.SuggestionResponse>(
      '/search.SearchService/GetSuggestions',
      ($12.SearchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $12.SuggestionResponse.fromBuffer(value));

  SearchServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$12.SearchResponse> globalSearch($12.SearchRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$globalSearch, request, options: options);
  }

  $grpc.ResponseFuture<$12.SuggestionResponse> getSuggestions($12.SearchRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSuggestions, request, options: options);
  }
}

@$pb.GrpcServiceName('search.SearchService')
abstract class SearchServiceBase extends $grpc.Service {
  $core.String get $name => 'search.SearchService';

  SearchServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.SearchRequest, $12.SearchResponse>(
        'GlobalSearch',
        globalSearch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.SearchRequest.fromBuffer(value),
        ($12.SearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.SearchRequest, $12.SuggestionResponse>(
        'GetSuggestions',
        getSuggestions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $12.SearchRequest.fromBuffer(value),
        ($12.SuggestionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.SearchResponse> globalSearch_Pre($grpc.ServiceCall call, $async.Future<$12.SearchRequest> request) async {
    return globalSearch(call, await request);
  }

  $async.Future<$12.SuggestionResponse> getSuggestions_Pre($grpc.ServiceCall call, $async.Future<$12.SearchRequest> request) async {
    return getSuggestions(call, await request);
  }

  $async.Future<$12.SearchResponse> globalSearch($grpc.ServiceCall call, $12.SearchRequest request);
  $async.Future<$12.SuggestionResponse> getSuggestions($grpc.ServiceCall call, $12.SearchRequest request);
}
