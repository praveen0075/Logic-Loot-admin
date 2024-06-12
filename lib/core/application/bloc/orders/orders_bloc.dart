import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic_loot_admin/core/data/services/order_services.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_all_orders_response.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrderServices orderRepo;
  OrdersBloc(this.orderRepo) : super(const OrdersState.initial()) {
    on<_GetOrders>((event, emit) async {
      emit(const OrdersState.loading());
      final result = await orderRepo.getAllOrders();
      result.fold((failure) => emit(OrdersState.getFailure(failure)),
          (success) => emit(OrdersState.getSuccess(success)));
    });

    on<_CancelOrders>((event, emit) async {
      emit(const OrdersState.loading());
      final result = await orderRepo.orderCancel(event.orderId);
      result.fold((failure) => emit(OrdersState.cancelOrderFailure(failure)),
          (success) => emit(OrdersState.cancelOrderSucces(success)));
    });

    on<_UpdateOrderStatus>((event, emit) async {
      emit(const OrdersState.loading());
      final result = await orderRepo.updateOrder(
          orderId: event.id, newStatus: event.statuc);
      result.fold((failure) => emit(OrdersState.updateOrderFailure(failure)),
          (success) => emit(const OrdersState.updateOrderSuccess()));
    });
  }
}
