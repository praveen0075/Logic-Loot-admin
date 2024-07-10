import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:logic_loot_admin/core/application/bloc/coupon/coupon_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/coupons/add_coupon_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/coupons/widgets/showdialogue_delete.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({super.key});

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CouponBloc>(context).add(const CouponEvent.getCoupons());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Coupons",
          )),
      floatingActionButton: FloatingActionButton(
          backgroundColor: appcolorRose,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddCouponScreen(),
                ));
          },
          child: const Icon(Icons.add)),
      drawer: const SideBarWidget(),
      body: MultiBlocListener(
        listeners: [
          BlocListener<CouponBloc, CouponState>(
            listener: (context, state) {
              if (state is DeleteFailure) {
                snackBarWidget(
                    context: context,
                    msg: state.failuremsg,
                    bgColor: Colors.red);
              } else if (state is DeleteSuccess) {
                context.read<CouponBloc>().add(const CouponEvent.getCoupons());
                snackBarWidget(
                    context: context,
                    msg: state.successmsg,
                    bgColor: Colors.green);
              }
            },
          )
        ],
        child: BlocBuilder<CouponBloc, CouponState>(
          builder: (context, state) {
            if (state is GetLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is GertErrorSt) {
              return Center(
                child: Text(state.errmsg),
              );
            } else if (state is GetSuccess) {
              if (state.avialableCoupons.isNotEmpty) {
                return ListView.separated(
                    itemBuilder: (context, index) {
                      final validity =
                          state.avialableCoupons[index].validUntil.toString();
                      String formatedValidity = DateFormat('dd/MM/yyyy')
                          .format(DateTime.parse(validity));
                      return ExpansionTile(
                        trailing: PopupMenuButton<String>(
                          onSelected: (value) async {
                            if (value == 'Edit') {
                            } else if (value == 'Delete') {
                              await showDialoguForDeleteCoupon(
                                  ctx: context,
                                  couponCode:
                                      state.avialableCoupons[index].code);
                            }
                          },
                          itemBuilder: (BuildContext context) {
                            return {'Delete'}.map((String choice) {
                              return PopupMenuItem<String>(
                                value: choice,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      choice,
                                      style: const TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              );
                            }).toList();
                          },
                        ),
                        title: Row(
                          children: [
                            const Icon(Icons.yard,
                                size: 16, color: Colors.grey),
                            kwidth10,
                            Text(
                              state.avialableCoupons[index].code,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        children: [
                          ListTile(
                            title: Column(
                              children: [
                                CouponDetailsTile(
                                  keyName: "Amount",
                                  value:
                                      "₹${state.avialableCoupons[index].amount}"
                                          .toString(),
                                ),
                                CouponDetailsTile(
                                    keyName: "Usage limit",
                                    value: state
                                        .avialableCoupons[index].usageLimit
                                        .toString()),
                                CouponDetailsTile(
                                    keyName: "Used Count",
                                    value: state
                                        .avialableCoupons[index].usedcount
                                        .toString()),
                                CouponDetailsTile(
                                    keyName: "Valid Until",
                                    value: formatedValidity),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => kheight10,
                    itemCount: state.avialableCoupons.length);
              } else {
                return const Center(
                  child: Text("Coupon is Empty"),
                );
              }
            } else {
              return const Center(
                child: Text("NO Data available"),
              );
            }
          },
        ),
      ),
    );
  }
}

class CouponDetailsTile extends StatelessWidget {
  const CouponDetailsTile({
    super.key,
    required this.keyName,
    required this.value,
  });

  final String keyName;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          keyName,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        Text(
          value,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
        )
      ],
    );
  }
}
