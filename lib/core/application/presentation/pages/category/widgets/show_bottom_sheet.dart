import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/widgets/showdialogu_widget.dart';

void showOptions(
    {required BuildContext? ctx,required int? indext,required int categoryId}) {
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
            // Card(
            //   elevation: 10,
            //   child: ListTile(
            //     leading: const Icon(Icons.edit),
            //     title: const Text("Edit"),
            //     onTap: () {
            //       // // onTapFuction;
            //       // showDialoguWidgetForEditCategory(
            //       //     ctx: ctx,
            //       //     size: size,
            //       //     categoryDescriptionController:
            //       //         categoryDescriptionController,
            //       //     categoryNameController: categoryNameController);
            //     },
            //   ),
            // ),
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
                  showDialoguWidgetForDeleteCategory(
                      ctx: ctx,
                      size: size,cId: categoryId);
                },
              ),
            )
          ],
        ),
      ),
    )),
  );
}
