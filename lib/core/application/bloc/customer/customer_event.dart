part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.getAllCustomer() = _GetAllCustomer;
  const factory CustomerEvent.toggleUserBlkAndUnblk(bool toggleValue) = _ToggleUserBlkAndUnblk;
}