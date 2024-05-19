import 'package:flutter/material.dart';

Future<dynamic> showDialoguForDeleteCoupon({BuildContext? ctx, Size? size}) {
  return showDialog(
      context: ctx!,
      builder: (context) => AlertDialog(
            title: const Text("Delete Coupon?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            content: const Text("Do you want to delete this Coupon?"),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Delete",
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(onPressed: () {}, child: const Text("Cancel"))
            ],
          ));
}
