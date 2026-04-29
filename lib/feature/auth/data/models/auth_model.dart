import 'package:lumi_care/core/network/domain/entities/entities.dart';
import 'package:lumi_care/core/network/data/models/generated/auth.pb.dart'
    as grpc;

class AuthModel extends AuthResponseEntity {
  AuthModel({
    required super.accessToken,
    required super.refreshToken,
    required super.user,
  });

  factory AuthModel.fromGrpc(grpc.AuthResponse res) {
    return AuthModel(
      accessToken: res.accessToken,
      refreshToken: res.refreshToken,
      user: UserInfoModel.fromGrpc(res.user),
    );
  }
}

class UserInfoModel extends UserInfoEntity {
  UserInfoModel({
    required super.id,
    required super.email,
    required super.role,
    required super.fullName,
    required super.avatar,
    required super.phone,
    required super.birthday,
  });

  factory UserInfoModel.fromGrpc(grpc.UserInfo res) {
    return UserInfoModel(
      id: res.id,
      email: res.email,
      role: res.role,
      fullName: res.fullName,
      avatar: res.avatar,
      phone: res.phone,
      birthday: res.birthday,
    );
  }
}

class AuthStatusModel {
  final bool success;
  final String message;

  AuthStatusModel({required this.success, required this.message});

  factory AuthStatusModel.fromGrpc(grpc.StatusResponse res) {
    return AuthStatusModel(success: res.success, message: res.message);
  }
}
