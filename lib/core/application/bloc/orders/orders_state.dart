part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  const factory OrdersState.initial() = initial;
  const factory OrdersState.loading() = GetOrdersLoading;
  const factory OrdersState.getSuccess(List<Orderlist> orders) = GetOrdersSuccess;
  const factory OrdersState.getFailure(String errmsg) = GetOrdersFailure;
  const factory OrdersState.cancelOrderSucces(String successmsg) = CancelOrderSuccess; 
  const factory OrdersState.cancelOrderFailure(String errmsg) = CancelOrderFailure;
  const factory OrdersState.updateOrderSuccess() = UpdateOrderSuccess;
  const factory OrdersState.updateOrderFailure(String errormsg) = UpdateOrderFailure;
}
