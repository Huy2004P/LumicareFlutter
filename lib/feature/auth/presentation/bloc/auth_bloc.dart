import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  final LogoutUseCase logoutUseCase;
  final CheckLoginStatusUseCase checkLoginStatusUseCase;
  final ForgotPasswordUseCase forgotPasswordUseCase;
  final VerifyOTPUseCase verifyOTPUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;

  AuthBloc({
    required this.loginUseCase,
    required this.registerUseCase,
    required this.logoutUseCase,
    required this.checkLoginStatusUseCase,
    required this.forgotPasswordUseCase,
    required this.verifyOTPUseCase,
    required this.resetPasswordUseCase,
  }) : super(const AuthState()) {
    // 🚀 Check Login Status
    on<AuthCheckStatusStarted>((event, emit) {
      final isLoggedIn = checkLoginStatusUseCase.execute();
      emit(
        state.copyWith(
          status: isLoggedIn
              ? AuthStatus.authenticated
              : AuthStatus.unauthenticated,
        ),
      );
    });

    on<AuthLoginStarted>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.loading));
      try {
        final result = await loginUseCase.execute(event.email, event.password);
        emit(
          state.copyWith(status: AuthStatus.authenticated, authData: result),
        );
      } catch (e) {
        emit(
          state.copyWith(status: AuthStatus.error, errorMessage: e.toString()),
        );
      }
    });

    on<AuthRegisterStarted>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.loading));
      try {
        final result = await registerUseCase.execute(event.request);
        emit(
          state.copyWith(status: AuthStatus.authenticated, authData: result),
        );
      } catch (e) {
        emit(
          state.copyWith(status: AuthStatus.error, errorMessage: e.toString()),
        );
      }
    });

    on<AuthForgotPasswordStarted>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.loading));
      try {
        final result = await forgotPasswordUseCase.execute(event.email);
        if (result.success) {
          emit(
            state.copyWith(
              status: AuthStatus.otpSent,
              successMessage: result.message,
            ),
          );
        } else {
          emit(
            state.copyWith(
              status: AuthStatus.error,
              errorMessage: result.message,
            ),
          );
        }
      } catch (e) {
        emit(
          state.copyWith(status: AuthStatus.error, errorMessage: e.toString()),
        );
      }
    });

    on<AuthVerifyOTPStarted>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.loading));
      try {
        final result = await verifyOTPUseCase.execute(event.email, event.otp);

        if (result.success) {
          emit(state.copyWith(status: AuthStatus.otpVerified));
        } else {
          emit(
            state.copyWith(
              status: AuthStatus.error,
              errorMessage: result.message,
            ),
          );
        }
      } catch (e) {
        emit(
          state.copyWith(
            status: AuthStatus.error,
            errorMessage: "Xác thực không thành công. Vui lòng thử lại.",
          ),
        );
      }
    });

    on<AuthResetPasswordStarted>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.loading));
      try {
        final result = await resetPasswordUseCase.execute(event.request);
        if (result.success) {
          emit(
            state.copyWith(
              status: AuthStatus.resetSuccess,
              successMessage: result.message,
            ),
          );
        } else {
          emit(
            state.copyWith(
              status: AuthStatus.error,
              errorMessage: result.message,
            ),
          );
        }
      } catch (e) {
        emit(
          state.copyWith(status: AuthStatus.error, errorMessage: e.toString()),
        );
      }
    });

    on<AuthLogoutRequested>((event, emit) async {
      await logoutUseCase.execute();
      emit(state.copyWith(status: AuthStatus.unauthenticated, authData: null));
    });
  }
}
