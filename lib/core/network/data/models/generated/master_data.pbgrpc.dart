//
//  Generated code. Do not modify.
//  source: master_data.proto
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

import 'master_data.pb.dart' as $6;

export 'master_data.pb.dart';

@$pb.GrpcServiceName('master_data.MasterDataService')
class MasterDataServiceClient extends $grpc.Client {
  static final _$createSpecialty = $grpc.ClientMethod<$6.CreateSpecialtyRequest, $6.SpecialtyResponse>(
      '/master_data.MasterDataService/CreateSpecialty',
      ($6.CreateSpecialtyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.SpecialtyResponse.fromBuffer(value));
  static final _$updateSpecialty = $grpc.ClientMethod<$6.UpdateSpecialtyRequest, $6.SpecialtyResponse>(
      '/master_data.MasterDataService/UpdateSpecialty',
      ($6.UpdateSpecialtyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.SpecialtyResponse.fromBuffer(value));
  static final _$deleteSpecialty = $grpc.ClientMethod<$6.DeleteRequest, $6.StatusResponse>(
      '/master_data.MasterDataService/DeleteSpecialty',
      ($6.DeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.StatusResponse.fromBuffer(value));
  static final _$getSpecialtyById = $grpc.ClientMethod<$6.GetByIdRequest, $6.SpecialtyResponse>(
      '/master_data.MasterDataService/GetSpecialtyById',
      ($6.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.SpecialtyResponse.fromBuffer(value));
  static final _$getAllSpecialties = $grpc.ClientMethod<$6.SearchRequest, $6.SpecialtyListResponse>(
      '/master_data.MasterDataService/GetAllSpecialties',
      ($6.SearchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.SpecialtyListResponse.fromBuffer(value));
  static final _$createClinic = $grpc.ClientMethod<$6.CreateClinicRequest, $6.ClinicResponse>(
      '/master_data.MasterDataService/CreateClinic',
      ($6.CreateClinicRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ClinicResponse.fromBuffer(value));
  static final _$updateClinic = $grpc.ClientMethod<$6.UpdateClinicRequest, $6.ClinicResponse>(
      '/master_data.MasterDataService/UpdateClinic',
      ($6.UpdateClinicRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ClinicResponse.fromBuffer(value));
  static final _$deleteClinic = $grpc.ClientMethod<$6.DeleteRequest, $6.StatusResponse>(
      '/master_data.MasterDataService/DeleteClinic',
      ($6.DeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.StatusResponse.fromBuffer(value));
  static final _$getClinicById = $grpc.ClientMethod<$6.GetByIdRequest, $6.ClinicResponse>(
      '/master_data.MasterDataService/GetClinicById',
      ($6.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ClinicResponse.fromBuffer(value));
  static final _$getAllClinics = $grpc.ClientMethod<$6.SearchRequest, $6.ClinicListResponse>(
      '/master_data.MasterDataService/GetAllClinics',
      ($6.SearchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ClinicListResponse.fromBuffer(value));
  static final _$createRoom = $grpc.ClientMethod<$6.CreateRoomRequest, $6.RoomResponse>(
      '/master_data.MasterDataService/CreateRoom',
      ($6.CreateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.RoomResponse.fromBuffer(value));
  static final _$updateRoom = $grpc.ClientMethod<$6.UpdateRoomRequest, $6.RoomResponse>(
      '/master_data.MasterDataService/UpdateRoom',
      ($6.UpdateRoomRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.RoomResponse.fromBuffer(value));
  static final _$deleteRoom = $grpc.ClientMethod<$6.DeleteRequest, $6.StatusResponse>(
      '/master_data.MasterDataService/DeleteRoom',
      ($6.DeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.StatusResponse.fromBuffer(value));
  static final _$getRoomById = $grpc.ClientMethod<$6.GetByIdRequest, $6.RoomResponse>(
      '/master_data.MasterDataService/GetRoomById',
      ($6.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.RoomResponse.fromBuffer(value));
  static final _$getAllRooms = $grpc.ClientMethod<$6.RoomFilterRequest, $6.RoomListResponse>(
      '/master_data.MasterDataService/GetAllRooms',
      ($6.RoomFilterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.RoomListResponse.fromBuffer(value));
  static final _$getRoomsByClinicId = $grpc.ClientMethod<$6.GetByIdRequest, $6.RoomListResponse>(
      '/master_data.MasterDataService/GetRoomsByClinicId',
      ($6.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.RoomListResponse.fromBuffer(value));
  static final _$createService = $grpc.ClientMethod<$6.CreateServiceRequest, $6.ServiceResponse>(
      '/master_data.MasterDataService/CreateService',
      ($6.CreateServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ServiceResponse.fromBuffer(value));
  static final _$updateService = $grpc.ClientMethod<$6.UpdateServiceRequest, $6.ServiceResponse>(
      '/master_data.MasterDataService/UpdateService',
      ($6.UpdateServiceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ServiceResponse.fromBuffer(value));
  static final _$deleteService = $grpc.ClientMethod<$6.DeleteRequest, $6.StatusResponse>(
      '/master_data.MasterDataService/DeleteService',
      ($6.DeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.StatusResponse.fromBuffer(value));
  static final _$getServiceById = $grpc.ClientMethod<$6.GetByIdRequest, $6.ServiceResponse>(
      '/master_data.MasterDataService/GetServiceById',
      ($6.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ServiceResponse.fromBuffer(value));
  static final _$getAllServices = $grpc.ClientMethod<$6.SearchRequest, $6.ServiceListResponse>(
      '/master_data.MasterDataService/GetAllServices',
      ($6.SearchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.ServiceListResponse.fromBuffer(value));
  static final _$getDoctorsByService = $grpc.ClientMethod<$6.GetByIdRequest, $6.DoctorListByServiceResponse>(
      '/master_data.MasterDataService/GetDoctorsByService',
      ($6.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DoctorListByServiceResponse.fromBuffer(value));
  static final _$getDoctorsByRoomId = $grpc.ClientMethod<$6.GetByIdRequest, $6.DoctorListByServiceResponse>(
      '/master_data.MasterDataService/GetDoctorsByRoomId',
      ($6.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DoctorListByServiceResponse.fromBuffer(value));
  static final _$createDrug = $grpc.ClientMethod<$6.CreateDrugRequest, $6.DrugResponse>(
      '/master_data.MasterDataService/CreateDrug',
      ($6.CreateDrugRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DrugResponse.fromBuffer(value));
  static final _$updateDrug = $grpc.ClientMethod<$6.UpdateDrugRequest, $6.DrugResponse>(
      '/master_data.MasterDataService/UpdateDrug',
      ($6.UpdateDrugRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DrugResponse.fromBuffer(value));
  static final _$deleteDrug = $grpc.ClientMethod<$6.DeleteRequest, $6.StatusResponse>(
      '/master_data.MasterDataService/DeleteDrug',
      ($6.DeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.StatusResponse.fromBuffer(value));
  static final _$getDrugById = $grpc.ClientMethod<$6.GetByIdRequest, $6.DrugResponse>(
      '/master_data.MasterDataService/GetDrugById',
      ($6.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DrugResponse.fromBuffer(value));
  static final _$getAllDrugs = $grpc.ClientMethod<$6.SearchRequest, $6.DrugListResponse>(
      '/master_data.MasterDataService/GetAllDrugs',
      ($6.SearchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DrugListResponse.fromBuffer(value));
  static final _$createAllCode = $grpc.ClientMethod<$6.CreateAllCodeRequest, $6.AllCodeResponse>(
      '/master_data.MasterDataService/CreateAllCode',
      ($6.CreateAllCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AllCodeResponse.fromBuffer(value));
  static final _$updateAllCode = $grpc.ClientMethod<$6.UpdateAllCodeRequest, $6.AllCodeResponse>(
      '/master_data.MasterDataService/UpdateAllCode',
      ($6.UpdateAllCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AllCodeResponse.fromBuffer(value));
  static final _$deleteAllCode = $grpc.ClientMethod<$6.DeleteRequest, $6.StatusResponse>(
      '/master_data.MasterDataService/DeleteAllCode',
      ($6.DeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.StatusResponse.fromBuffer(value));
  static final _$getAllCodeById = $grpc.ClientMethod<$6.GetByIdRequest, $6.AllCodeResponse>(
      '/master_data.MasterDataService/GetAllCodeById',
      ($6.GetByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AllCodeResponse.fromBuffer(value));
  static final _$getAllCodes = $grpc.ClientMethod<$6.GetAllCodesRequest, $6.AllCodeListResponse>(
      '/master_data.MasterDataService/GetAllCodes',
      ($6.GetAllCodesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AllCodeListResponse.fromBuffer(value));

  MasterDataServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.SpecialtyResponse> createSpecialty($6.CreateSpecialtyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSpecialty, request, options: options);
  }

  $grpc.ResponseFuture<$6.SpecialtyResponse> updateSpecialty($6.UpdateSpecialtyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSpecialty, request, options: options);
  }

  $grpc.ResponseFuture<$6.StatusResponse> deleteSpecialty($6.DeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSpecialty, request, options: options);
  }

  $grpc.ResponseFuture<$6.SpecialtyResponse> getSpecialtyById($6.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSpecialtyById, request, options: options);
  }

  $grpc.ResponseFuture<$6.SpecialtyListResponse> getAllSpecialties($6.SearchRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllSpecialties, request, options: options);
  }

  $grpc.ResponseFuture<$6.ClinicResponse> createClinic($6.CreateClinicRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createClinic, request, options: options);
  }

  $grpc.ResponseFuture<$6.ClinicResponse> updateClinic($6.UpdateClinicRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateClinic, request, options: options);
  }

  $grpc.ResponseFuture<$6.StatusResponse> deleteClinic($6.DeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteClinic, request, options: options);
  }

  $grpc.ResponseFuture<$6.ClinicResponse> getClinicById($6.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getClinicById, request, options: options);
  }

  $grpc.ResponseFuture<$6.ClinicListResponse> getAllClinics($6.SearchRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllClinics, request, options: options);
  }

  $grpc.ResponseFuture<$6.RoomResponse> createRoom($6.CreateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRoom, request, options: options);
  }

  $grpc.ResponseFuture<$6.RoomResponse> updateRoom($6.UpdateRoomRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRoom, request, options: options);
  }

  $grpc.ResponseFuture<$6.StatusResponse> deleteRoom($6.DeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRoom, request, options: options);
  }

  $grpc.ResponseFuture<$6.RoomResponse> getRoomById($6.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomById, request, options: options);
  }

  $grpc.ResponseFuture<$6.RoomListResponse> getAllRooms($6.RoomFilterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllRooms, request, options: options);
  }

  $grpc.ResponseFuture<$6.RoomListResponse> getRoomsByClinicId($6.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoomsByClinicId, request, options: options);
  }

  $grpc.ResponseFuture<$6.ServiceResponse> createService($6.CreateServiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createService, request, options: options);
  }

  $grpc.ResponseFuture<$6.ServiceResponse> updateService($6.UpdateServiceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateService, request, options: options);
  }

  $grpc.ResponseFuture<$6.StatusResponse> deleteService($6.DeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteService, request, options: options);
  }

  $grpc.ResponseFuture<$6.ServiceResponse> getServiceById($6.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getServiceById, request, options: options);
  }

  $grpc.ResponseFuture<$6.ServiceListResponse> getAllServices($6.SearchRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllServices, request, options: options);
  }

  $grpc.ResponseFuture<$6.DoctorListByServiceResponse> getDoctorsByService($6.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDoctorsByService, request, options: options);
  }

  $grpc.ResponseFuture<$6.DoctorListByServiceResponse> getDoctorsByRoomId($6.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDoctorsByRoomId, request, options: options);
  }

  $grpc.ResponseFuture<$6.DrugResponse> createDrug($6.CreateDrugRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDrug, request, options: options);
  }

  $grpc.ResponseFuture<$6.DrugResponse> updateDrug($6.UpdateDrugRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateDrug, request, options: options);
  }

  $grpc.ResponseFuture<$6.StatusResponse> deleteDrug($6.DeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteDrug, request, options: options);
  }

  $grpc.ResponseFuture<$6.DrugResponse> getDrugById($6.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDrugById, request, options: options);
  }

  $grpc.ResponseFuture<$6.DrugListResponse> getAllDrugs($6.SearchRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllDrugs, request, options: options);
  }

  $grpc.ResponseFuture<$6.AllCodeResponse> createAllCode($6.CreateAllCodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAllCode, request, options: options);
  }

  $grpc.ResponseFuture<$6.AllCodeResponse> updateAllCode($6.UpdateAllCodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAllCode, request, options: options);
  }

  $grpc.ResponseFuture<$6.StatusResponse> deleteAllCode($6.DeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAllCode, request, options: options);
  }

  $grpc.ResponseFuture<$6.AllCodeResponse> getAllCodeById($6.GetByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllCodeById, request, options: options);
  }

  $grpc.ResponseFuture<$6.AllCodeListResponse> getAllCodes($6.GetAllCodesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllCodes, request, options: options);
  }
}

@$pb.GrpcServiceName('master_data.MasterDataService')
abstract class MasterDataServiceBase extends $grpc.Service {
  $core.String get $name => 'master_data.MasterDataService';

  MasterDataServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.CreateSpecialtyRequest, $6.SpecialtyResponse>(
        'CreateSpecialty',
        createSpecialty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateSpecialtyRequest.fromBuffer(value),
        ($6.SpecialtyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateSpecialtyRequest, $6.SpecialtyResponse>(
        'UpdateSpecialty',
        updateSpecialty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateSpecialtyRequest.fromBuffer(value),
        ($6.SpecialtyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteRequest, $6.StatusResponse>(
        'DeleteSpecialty',
        deleteSpecialty_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteRequest.fromBuffer(value),
        ($6.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetByIdRequest, $6.SpecialtyResponse>(
        'GetSpecialtyById',
        getSpecialtyById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetByIdRequest.fromBuffer(value),
        ($6.SpecialtyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SearchRequest, $6.SpecialtyListResponse>(
        'GetAllSpecialties',
        getAllSpecialties_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SearchRequest.fromBuffer(value),
        ($6.SpecialtyListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateClinicRequest, $6.ClinicResponse>(
        'CreateClinic',
        createClinic_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateClinicRequest.fromBuffer(value),
        ($6.ClinicResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateClinicRequest, $6.ClinicResponse>(
        'UpdateClinic',
        updateClinic_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateClinicRequest.fromBuffer(value),
        ($6.ClinicResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteRequest, $6.StatusResponse>(
        'DeleteClinic',
        deleteClinic_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteRequest.fromBuffer(value),
        ($6.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetByIdRequest, $6.ClinicResponse>(
        'GetClinicById',
        getClinicById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetByIdRequest.fromBuffer(value),
        ($6.ClinicResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SearchRequest, $6.ClinicListResponse>(
        'GetAllClinics',
        getAllClinics_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SearchRequest.fromBuffer(value),
        ($6.ClinicListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateRoomRequest, $6.RoomResponse>(
        'CreateRoom',
        createRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateRoomRequest.fromBuffer(value),
        ($6.RoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateRoomRequest, $6.RoomResponse>(
        'UpdateRoom',
        updateRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateRoomRequest.fromBuffer(value),
        ($6.RoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteRequest, $6.StatusResponse>(
        'DeleteRoom',
        deleteRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteRequest.fromBuffer(value),
        ($6.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetByIdRequest, $6.RoomResponse>(
        'GetRoomById',
        getRoomById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetByIdRequest.fromBuffer(value),
        ($6.RoomResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.RoomFilterRequest, $6.RoomListResponse>(
        'GetAllRooms',
        getAllRooms_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.RoomFilterRequest.fromBuffer(value),
        ($6.RoomListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetByIdRequest, $6.RoomListResponse>(
        'GetRoomsByClinicId',
        getRoomsByClinicId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetByIdRequest.fromBuffer(value),
        ($6.RoomListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateServiceRequest, $6.ServiceResponse>(
        'CreateService',
        createService_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateServiceRequest.fromBuffer(value),
        ($6.ServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateServiceRequest, $6.ServiceResponse>(
        'UpdateService',
        updateService_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateServiceRequest.fromBuffer(value),
        ($6.ServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteRequest, $6.StatusResponse>(
        'DeleteService',
        deleteService_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteRequest.fromBuffer(value),
        ($6.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetByIdRequest, $6.ServiceResponse>(
        'GetServiceById',
        getServiceById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetByIdRequest.fromBuffer(value),
        ($6.ServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SearchRequest, $6.ServiceListResponse>(
        'GetAllServices',
        getAllServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SearchRequest.fromBuffer(value),
        ($6.ServiceListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetByIdRequest, $6.DoctorListByServiceResponse>(
        'GetDoctorsByService',
        getDoctorsByService_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetByIdRequest.fromBuffer(value),
        ($6.DoctorListByServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetByIdRequest, $6.DoctorListByServiceResponse>(
        'GetDoctorsByRoomId',
        getDoctorsByRoomId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetByIdRequest.fromBuffer(value),
        ($6.DoctorListByServiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateDrugRequest, $6.DrugResponse>(
        'CreateDrug',
        createDrug_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateDrugRequest.fromBuffer(value),
        ($6.DrugResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateDrugRequest, $6.DrugResponse>(
        'UpdateDrug',
        updateDrug_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateDrugRequest.fromBuffer(value),
        ($6.DrugResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteRequest, $6.StatusResponse>(
        'DeleteDrug',
        deleteDrug_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteRequest.fromBuffer(value),
        ($6.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetByIdRequest, $6.DrugResponse>(
        'GetDrugById',
        getDrugById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetByIdRequest.fromBuffer(value),
        ($6.DrugResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SearchRequest, $6.DrugListResponse>(
        'GetAllDrugs',
        getAllDrugs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SearchRequest.fromBuffer(value),
        ($6.DrugListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateAllCodeRequest, $6.AllCodeResponse>(
        'CreateAllCode',
        createAllCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CreateAllCodeRequest.fromBuffer(value),
        ($6.AllCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateAllCodeRequest, $6.AllCodeResponse>(
        'UpdateAllCode',
        updateAllCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.UpdateAllCodeRequest.fromBuffer(value),
        ($6.AllCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteRequest, $6.StatusResponse>(
        'DeleteAllCode',
        deleteAllCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DeleteRequest.fromBuffer(value),
        ($6.StatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetByIdRequest, $6.AllCodeResponse>(
        'GetAllCodeById',
        getAllCodeById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetByIdRequest.fromBuffer(value),
        ($6.AllCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetAllCodesRequest, $6.AllCodeListResponse>(
        'GetAllCodes',
        getAllCodes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetAllCodesRequest.fromBuffer(value),
        ($6.AllCodeListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.SpecialtyResponse> createSpecialty_Pre($grpc.ServiceCall call, $async.Future<$6.CreateSpecialtyRequest> request) async {
    return createSpecialty(call, await request);
  }

  $async.Future<$6.SpecialtyResponse> updateSpecialty_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateSpecialtyRequest> request) async {
    return updateSpecialty(call, await request);
  }

  $async.Future<$6.StatusResponse> deleteSpecialty_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteRequest> request) async {
    return deleteSpecialty(call, await request);
  }

  $async.Future<$6.SpecialtyResponse> getSpecialtyById_Pre($grpc.ServiceCall call, $async.Future<$6.GetByIdRequest> request) async {
    return getSpecialtyById(call, await request);
  }

  $async.Future<$6.SpecialtyListResponse> getAllSpecialties_Pre($grpc.ServiceCall call, $async.Future<$6.SearchRequest> request) async {
    return getAllSpecialties(call, await request);
  }

  $async.Future<$6.ClinicResponse> createClinic_Pre($grpc.ServiceCall call, $async.Future<$6.CreateClinicRequest> request) async {
    return createClinic(call, await request);
  }

  $async.Future<$6.ClinicResponse> updateClinic_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateClinicRequest> request) async {
    return updateClinic(call, await request);
  }

  $async.Future<$6.StatusResponse> deleteClinic_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteRequest> request) async {
    return deleteClinic(call, await request);
  }

  $async.Future<$6.ClinicResponse> getClinicById_Pre($grpc.ServiceCall call, $async.Future<$6.GetByIdRequest> request) async {
    return getClinicById(call, await request);
  }

  $async.Future<$6.ClinicListResponse> getAllClinics_Pre($grpc.ServiceCall call, $async.Future<$6.SearchRequest> request) async {
    return getAllClinics(call, await request);
  }

  $async.Future<$6.RoomResponse> createRoom_Pre($grpc.ServiceCall call, $async.Future<$6.CreateRoomRequest> request) async {
    return createRoom(call, await request);
  }

  $async.Future<$6.RoomResponse> updateRoom_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateRoomRequest> request) async {
    return updateRoom(call, await request);
  }

  $async.Future<$6.StatusResponse> deleteRoom_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteRequest> request) async {
    return deleteRoom(call, await request);
  }

  $async.Future<$6.RoomResponse> getRoomById_Pre($grpc.ServiceCall call, $async.Future<$6.GetByIdRequest> request) async {
    return getRoomById(call, await request);
  }

  $async.Future<$6.RoomListResponse> getAllRooms_Pre($grpc.ServiceCall call, $async.Future<$6.RoomFilterRequest> request) async {
    return getAllRooms(call, await request);
  }

  $async.Future<$6.RoomListResponse> getRoomsByClinicId_Pre($grpc.ServiceCall call, $async.Future<$6.GetByIdRequest> request) async {
    return getRoomsByClinicId(call, await request);
  }

  $async.Future<$6.ServiceResponse> createService_Pre($grpc.ServiceCall call, $async.Future<$6.CreateServiceRequest> request) async {
    return createService(call, await request);
  }

  $async.Future<$6.ServiceResponse> updateService_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateServiceRequest> request) async {
    return updateService(call, await request);
  }

  $async.Future<$6.StatusResponse> deleteService_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteRequest> request) async {
    return deleteService(call, await request);
  }

  $async.Future<$6.ServiceResponse> getServiceById_Pre($grpc.ServiceCall call, $async.Future<$6.GetByIdRequest> request) async {
    return getServiceById(call, await request);
  }

  $async.Future<$6.ServiceListResponse> getAllServices_Pre($grpc.ServiceCall call, $async.Future<$6.SearchRequest> request) async {
    return getAllServices(call, await request);
  }

  $async.Future<$6.DoctorListByServiceResponse> getDoctorsByService_Pre($grpc.ServiceCall call, $async.Future<$6.GetByIdRequest> request) async {
    return getDoctorsByService(call, await request);
  }

  $async.Future<$6.DoctorListByServiceResponse> getDoctorsByRoomId_Pre($grpc.ServiceCall call, $async.Future<$6.GetByIdRequest> request) async {
    return getDoctorsByRoomId(call, await request);
  }

  $async.Future<$6.DrugResponse> createDrug_Pre($grpc.ServiceCall call, $async.Future<$6.CreateDrugRequest> request) async {
    return createDrug(call, await request);
  }

  $async.Future<$6.DrugResponse> updateDrug_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateDrugRequest> request) async {
    return updateDrug(call, await request);
  }

  $async.Future<$6.StatusResponse> deleteDrug_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteRequest> request) async {
    return deleteDrug(call, await request);
  }

  $async.Future<$6.DrugResponse> getDrugById_Pre($grpc.ServiceCall call, $async.Future<$6.GetByIdRequest> request) async {
    return getDrugById(call, await request);
  }

  $async.Future<$6.DrugListResponse> getAllDrugs_Pre($grpc.ServiceCall call, $async.Future<$6.SearchRequest> request) async {
    return getAllDrugs(call, await request);
  }

  $async.Future<$6.AllCodeResponse> createAllCode_Pre($grpc.ServiceCall call, $async.Future<$6.CreateAllCodeRequest> request) async {
    return createAllCode(call, await request);
  }

  $async.Future<$6.AllCodeResponse> updateAllCode_Pre($grpc.ServiceCall call, $async.Future<$6.UpdateAllCodeRequest> request) async {
    return updateAllCode(call, await request);
  }

  $async.Future<$6.StatusResponse> deleteAllCode_Pre($grpc.ServiceCall call, $async.Future<$6.DeleteRequest> request) async {
    return deleteAllCode(call, await request);
  }

  $async.Future<$6.AllCodeResponse> getAllCodeById_Pre($grpc.ServiceCall call, $async.Future<$6.GetByIdRequest> request) async {
    return getAllCodeById(call, await request);
  }

  $async.Future<$6.AllCodeListResponse> getAllCodes_Pre($grpc.ServiceCall call, $async.Future<$6.GetAllCodesRequest> request) async {
    return getAllCodes(call, await request);
  }

  $async.Future<$6.SpecialtyResponse> createSpecialty($grpc.ServiceCall call, $6.CreateSpecialtyRequest request);
  $async.Future<$6.SpecialtyResponse> updateSpecialty($grpc.ServiceCall call, $6.UpdateSpecialtyRequest request);
  $async.Future<$6.StatusResponse> deleteSpecialty($grpc.ServiceCall call, $6.DeleteRequest request);
  $async.Future<$6.SpecialtyResponse> getSpecialtyById($grpc.ServiceCall call, $6.GetByIdRequest request);
  $async.Future<$6.SpecialtyListResponse> getAllSpecialties($grpc.ServiceCall call, $6.SearchRequest request);
  $async.Future<$6.ClinicResponse> createClinic($grpc.ServiceCall call, $6.CreateClinicRequest request);
  $async.Future<$6.ClinicResponse> updateClinic($grpc.ServiceCall call, $6.UpdateClinicRequest request);
  $async.Future<$6.StatusResponse> deleteClinic($grpc.ServiceCall call, $6.DeleteRequest request);
  $async.Future<$6.ClinicResponse> getClinicById($grpc.ServiceCall call, $6.GetByIdRequest request);
  $async.Future<$6.ClinicListResponse> getAllClinics($grpc.ServiceCall call, $6.SearchRequest request);
  $async.Future<$6.RoomResponse> createRoom($grpc.ServiceCall call, $6.CreateRoomRequest request);
  $async.Future<$6.RoomResponse> updateRoom($grpc.ServiceCall call, $6.UpdateRoomRequest request);
  $async.Future<$6.StatusResponse> deleteRoom($grpc.ServiceCall call, $6.DeleteRequest request);
  $async.Future<$6.RoomResponse> getRoomById($grpc.ServiceCall call, $6.GetByIdRequest request);
  $async.Future<$6.RoomListResponse> getAllRooms($grpc.ServiceCall call, $6.RoomFilterRequest request);
  $async.Future<$6.RoomListResponse> getRoomsByClinicId($grpc.ServiceCall call, $6.GetByIdRequest request);
  $async.Future<$6.ServiceResponse> createService($grpc.ServiceCall call, $6.CreateServiceRequest request);
  $async.Future<$6.ServiceResponse> updateService($grpc.ServiceCall call, $6.UpdateServiceRequest request);
  $async.Future<$6.StatusResponse> deleteService($grpc.ServiceCall call, $6.DeleteRequest request);
  $async.Future<$6.ServiceResponse> getServiceById($grpc.ServiceCall call, $6.GetByIdRequest request);
  $async.Future<$6.ServiceListResponse> getAllServices($grpc.ServiceCall call, $6.SearchRequest request);
  $async.Future<$6.DoctorListByServiceResponse> getDoctorsByService($grpc.ServiceCall call, $6.GetByIdRequest request);
  $async.Future<$6.DoctorListByServiceResponse> getDoctorsByRoomId($grpc.ServiceCall call, $6.GetByIdRequest request);
  $async.Future<$6.DrugResponse> createDrug($grpc.ServiceCall call, $6.CreateDrugRequest request);
  $async.Future<$6.DrugResponse> updateDrug($grpc.ServiceCall call, $6.UpdateDrugRequest request);
  $async.Future<$6.StatusResponse> deleteDrug($grpc.ServiceCall call, $6.DeleteRequest request);
  $async.Future<$6.DrugResponse> getDrugById($grpc.ServiceCall call, $6.GetByIdRequest request);
  $async.Future<$6.DrugListResponse> getAllDrugs($grpc.ServiceCall call, $6.SearchRequest request);
  $async.Future<$6.AllCodeResponse> createAllCode($grpc.ServiceCall call, $6.CreateAllCodeRequest request);
  $async.Future<$6.AllCodeResponse> updateAllCode($grpc.ServiceCall call, $6.UpdateAllCodeRequest request);
  $async.Future<$6.StatusResponse> deleteAllCode($grpc.ServiceCall call, $6.DeleteRequest request);
  $async.Future<$6.AllCodeResponse> getAllCodeById($grpc.ServiceCall call, $6.GetByIdRequest request);
  $async.Future<$6.AllCodeListResponse> getAllCodes($grpc.ServiceCall call, $6.GetAllCodesRequest request);
}
