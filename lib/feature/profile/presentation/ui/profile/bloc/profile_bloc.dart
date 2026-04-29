import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lumi_care/feature/profile/domain/repositories/profile_repository.dart';
import '../../../../domain/use_cases/profile_usecases.dart';
import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileDataPack dataPack;
  final ProfileRepository profileRepository;

  ProfileBloc({required this.dataPack, required this.profileRepository})
    : super(const ProfileState()) {
    on<GetProfileStarted>(_onGetProfileStarted);
    on<UpdateProfileStarted>(_onUpdateProfileStarted);
    on<RequestPasswordOTPStarted>(_onRequestPasswordOTPStarted);
    on<ChangePasswordStarted>(_onChangePasswordStarted);
  }

  Future<void> _onGetProfileStarted(
    GetProfileStarted event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: ProfileStatus.loading));
    try {
      final user = await profileRepository.getProfile();
      emit(state.copyWith(status: ProfileStatus.loaded, user: user));
    } catch (e) {
      final errorStr = e.toString().toLowerCase();
      if (errorStr.contains("16") || errorStr.contains("unauthenticated")) {
        emit(state.copyWith(status: ProfileStatus.refreshing));
        add(GetProfileStarted());
      } else {
        emit(
          state.copyWith(
            status: ProfileStatus.error,
            errorMessage: "Không thể tải hồ sơ. Vui lòng thử lại!",
          ),
        );
      }
    }
  }

  Future<void> _onUpdateProfileStarted(
    UpdateProfileStarted event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: ProfileStatus.loading));
    try {
      final updatedUser = await dataPack.updateProfile.execute(
        event.user,
        avatarBytes: event.avatarBytes,
      );
      emit(state.copyWith(status: ProfileStatus.success, user: updatedUser));
    } catch (e) {
      final errorStr = e.toString().toLowerCase();
      if (errorStr.contains("16") || errorStr.contains("unauthenticated")) {
        emit(state.copyWith(status: ProfileStatus.refreshing));
        add(
          UpdateProfileStarted(
            user: event.user,
            avatarBytes: event.avatarBytes,
          ),
        );
      } else {
        emit(
          state.copyWith(
            status: ProfileStatus.error,
            errorMessage: "Cập nhật thất bại: ${e.toString()}",
          ),
        );
      }
    }
  }

  Future<void> _onRequestPasswordOTPStarted(
    RequestPasswordOTPStarted event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: ProfileStatus.loading));
    try {
      await profileRepository.requestChangePasswordOTP();
      emit(state.copyWith(status: ProfileStatus.otpSent));
    } catch (e) {
      emit(
        state.copyWith(
          status: ProfileStatus.error,
          errorMessage: "Gửi mã OTP thất bại: ${e.toString()}",
        ),
      );
    }
  }

  Future<void> _onChangePasswordStarted(
    ChangePasswordStarted event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: ProfileStatus.loading));
    try {
      await profileRepository.changePassword(
        oldPassword: event.oldPassword,
        newPassword: event.newPassword,
        otp: event.otp,
      );
      emit(state.copyWith(status: ProfileStatus.passwordChanged));
    } catch (e) {
      emit(
        state.copyWith(
          status: ProfileStatus.error,
          errorMessage: "Đổi mật khẩu thất bại: ${e.toString()}",
        ),
      );
    }
  }
}
