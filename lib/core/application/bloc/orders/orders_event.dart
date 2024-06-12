part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.getOrders() = _GetOrders;
  const factory OrdersEvent.cancelOrders(int orderId) = _CancelOrders;
  const factory OrdersEvent.updateOrderStatus({required int id, required String statuc}) = _UpdateOrderStatus;
}