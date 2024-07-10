import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/orders/orders_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<OrdersBloc>(context).add(const OrdersEvent.getOrders());
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Orders"),
          centerTitle: true,
        ),
        drawer: const SideBarWidget(),
        body: MultiBlocListener(
            listeners: [
              BlocListener<OrdersBloc, OrdersState>(
                listener: (context, state) {
                  if (state is CancelOrderFailure) {
                    snackBarWidget(
                        context: context,
                        msg: state.errmsg,
                        bgColor: Colors.red);
                    Navigator.pop(context);
                  } else if (state is CancelOrderSuccess) {
                    context
                        .read<OrdersBloc>()
                        .add(const OrdersEvent.getOrders());
                    Navigator.pop(context);
                    snackBarWidget(
                        context: context,
                        msg: state.successmsg,
                        bgColor: Colors.green);
                  } else if (state is UpdateOrderFailure) {
                    snackBarWidget(
                        context: context,
                        msg: state.errormsg,
                        bgColor: Colors.red);
                  } else if (state is UpdateOrderSuccess) {
                    // snackBarWidget(context: context, msg: , bgColor: bgColor)
                    context
                        .read<OrdersBloc>()
                        .add(const OrdersEvent.getOrders());
                    // Navigator.pop(co/text);
                  }
                },
              )
            ],
            child: BlocBuilder<OrdersBloc, OrdersState>(
              builder: (context, state) {
                if (state is GetOrdersLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is GetOrdersFailure) {
                  return Center(
                    child: Text(state.errmsg),
                  );
                } else if (state is GetOrdersSuccess) {
                  return SingleChildScrollView(
                      child: Column(children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order Id",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Status",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    divider,
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ExpansionTile(
                          title: Text(
                            state.orders[index].orderid.toString(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          trailing: Text(state.orders[index].status,
                              style: state.orders[index].status == "Delivered"
                                  ? const TextStyle(
                                      color: Colors.green, fontSize: 16)
                                  : const TextStyle(
                                      color: Colors.black, fontSize: 16)),
                          children: [
                            ListTile(
                              title: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Products"),
                                      SizedBox(
                                        width: 150,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: 3,
                                          itemBuilder: (context, index) =>
                                              const Text(
                                            "product name",
                                            textAlign: TextAlign.end,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  kheight10,
                                  const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Shipping Adress"),
                                      SizedBox(
                                        width: 150,
                                        child: Text(
                                          "praveen C , cholayil house anakkara po , palakkad kerala, 679551",
                                          textAlign: TextAlign.end,
                                        ),
                                      )
                                    ],
                                  ),
                                  kheight10,
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Payment method"),
                                      Text(state.orders[index].paymentmethod)
                                    ],
                                  ),
                                  kheight10,
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Total amount"),
                                      Text(state.orders[index].total.toString())
                                    ],
                                  ),
                                  kheight10,
                                  const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Payment status"),
                                      Text("Pending")
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Update actions"),
                                      PopupMenuButton<String>(
                                          icon: const Icon(
                                              Icons.app_registration_rounded),
                                          onSelected: (value) {
                                            if (value == 'Shipped') {
                                              context.read<OrdersBloc>().add(
                                                  OrdersEvent.updateOrderStatus(
                                                      id: state.orders[index]
                                                          .orderid,
                                                      statuc: value));
                                            } else if (value == "Delivered") {
                                              context.read<OrdersBloc>().add(
                                                  OrdersEvent.updateOrderStatus(
                                                      id: state.orders[index]
                                                          .orderid,
                                                      statuc: value));
                                            } else if (value == "Pending") {
                                              context.read<OrdersBloc>().add(
                                                  OrdersEvent.updateOrderStatus(
                                                      id: state.orders[index]
                                                          .orderid,
                                                      statuc: value));
                                            } else if (value == 'Cancelled') {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      AlertDialog(
                                                        title: const Text(
                                                            "Cancel Order",
                                                            style: TextStyle(
                                                                fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        content: const Text(
                                                            "Do you want to Cancel this order?"),
                                                        actions: [
                                                          TextButton(
                                                              onPressed:
                                                                  () async {
                                                                context
                                                                    .read<
                                                                        OrdersBloc>()
                                                                    .add(OrdersEvent.cancelOrders(state
                                                                        .orders[
                                                                            index]
                                                                        .orderid));
                                                                // Navigator.pop(context);
                                                                // context
                                                                //     .read<ProductBloc>()
                                                                //     .add(ProductEvent
                                                                //         .deleteProductByid(
                                                                //             productId: state
                                                                //                 .products[
                                                                //                     index]
                                                                //                 .id));
                                                                // Navigator.pop(context);
                                                              },
                                                              child: const Text(
                                                                "Cancel order",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .red),
                                                              )),
                                                          TextButton(
                                                              onPressed: () {},
                                                              child: const Text(
                                                                  "Go back"))
                                                        ],
                                                      ));
                                            }
                                          },
                                          itemBuilder: (BuildContext context) {
                                            if (state.orders[index].status ==
                                                "Delivered") {
                                              return {
                                                "Shipped",
                                                "Pending",
                                                "Cancelled"
                                              }.map((String choice) {
                                                return PopupMenuItem<String>(
                                                  value: choice,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      choice == "Cancelled"
                                                          ? Text(
                                                              choice,
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )
                                                          : Text(choice)
                                                    ],
                                                  ),
                                                );
                                              }).toList();
                                            } else if (state
                                                    .orders[index].status ==
                                                "Shipped") {
                                              return {
                                                'Delivered',
                                                "Pending",
                                                "Cancelled"
                                              }.map((String choice) {
                                                return PopupMenuItem<String>(
                                                  value: choice,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      choice == "Cancelled"
                                                          ? Text(
                                                              choice,
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )
                                                          : Text(choice)
                                                    ],
                                                  ),
                                                );
                                              }).toList();
                                            } else if (state
                                                    .orders[index].status ==
                                                "pending") {
                                              return {
                                                'Delivered',
                                                "Shipped",
                                                "Cancelled"
                                              }.map((String choice) {
                                                return PopupMenuItem<String>(
                                                  value: choice,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      choice == "Cancelled"
                                                          ? Text(
                                                              choice,
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )
                                                          : Text(choice)
                                                    ],
                                                  ),
                                                );
                                              }).toList();
                                            } else {
                                              return {
                                                'Delivered',
                                                "Shipped",
                                                "Pending",
                                              }.map((String choice) {
                                                return PopupMenuItem<String>(
                                                  value: choice,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      choice == "Cancelled"
                                                          ? Text(
                                                              choice,
                                                              style: const TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            )
                                                          : Text(choice)
                                                    ],
                                                  ),
                                                );
                                              }).toList();
                                            }
                                          })
                                    ],
                                  )
                                ],
                              ),
                              // ),
                            ),
                          ],
                        );
                      },
                    )
                  ]));
                } else {
                  return SizedBox(
                      height: size.height,
                      child: const Center(
                        child: Text("Check your internet connection"),
                      ));
                }
              },
            )));
  }
}
