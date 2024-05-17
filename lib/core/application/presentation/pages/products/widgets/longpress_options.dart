import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/category_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/widgets/showdialogu_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/edit_product_screen.dart';

void showLongpressOptionsforProduct(
    {required BuildContext? ctx,required int? indext}) {
  var size = MediaQuery.of(ctx!).size;
  showModalBottomSheet(
    backgroundColor: Color(Color.getAlphaFromOpacity(1)),
    context: ctx,
    builder: (context) => SafeArea(
        child: SizedBox(
      height: size.height / 5.2,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              elevation: 10,
              child: ListTile(
                leading: const Icon(Icons.edit),
                title: const Text("Edit"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProductScreen(),));
                  // onTapFuction;
                  // showDialoguWidgetForEditCategory(
                  //     ctx: ctx,
                  //     size: size,
                  //     categoryDescriptionController:
                  //         categoryDescriptionController,
                  //     categoryNameController: categoryNameController);
                },
              ),
            ),
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
                      categoryDescriptionController:
                          categoryDescriptionController,
                      categoryNameController: categoryNameController,
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
