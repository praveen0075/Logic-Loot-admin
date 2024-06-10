part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState.initial() = Initial;
  const factory CustomerState.loading() = Loading;
  const factory CustomerState.success(List<User> users) = Success;
  const factory CustomerState.errorst(String errmsg) = ErrorSt;
  const factory CustomerState.toggleLoading() = ToggleLoading;
  // const factory CustomerState.toggleSuccess() = ToggleSuccess;
  const factory CustomerState.toggleError(String errormsg) = ToggleError;
}
