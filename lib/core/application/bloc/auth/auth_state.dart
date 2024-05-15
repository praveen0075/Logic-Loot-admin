part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isLogInhasError,
    required bool isLogInSuccess,
    String? message,
  }) = _AuthState;
  factory AuthState.initial(){
    return const AuthState(isLoading: false,isLogInSuccess: false,isLogInhasError: false);
  }
}