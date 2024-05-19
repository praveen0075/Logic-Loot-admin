
import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/coupons/widgets/showdialogue_delete.dart';

void showDeleteOption(
    {required BuildContext? ctx,required int? indext}) {
  var size = MediaQuery.of(ctx!).size;
  showModalBottomSheet(
    backgroundColor: Color(Color.getAlphaFromOpacity(1)),
    context: ctx,
    builder: (context) => SafeArea(
        child: SizedBox(
      height: size.height / 8,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: ListTile(
                leading: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                title: const Text(
                  "Delete",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  showDialoguForDeleteCoupon(
                      ctx: ctx,
                      size: size);
                },
              ),
            )
          ],
        ),
      ),
    )),
  );
}
