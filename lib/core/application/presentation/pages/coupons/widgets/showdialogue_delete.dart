import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/coupon/coupon_bloc.dart';

Future<dynamic> showDialoguForDeleteCoupon({BuildContext? ctx, Size? size,required String couponCode}) {
  return showDialog(
      context: ctx!,
      builder: (context) => AlertDialog(
            title: const Text("Delete Coupon?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            content: const Text("Do you want to delete this Coupon?"),
            actions: [
              TextButton(
                  onPressed: () {
                    context.read<CouponBloc>().add(CouponEvent.deleteCoupon(couponCode: couponCode));
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Delete",
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: const Text("Cancel"))
            ],
          ));
}
