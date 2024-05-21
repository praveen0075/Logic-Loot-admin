import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product/product_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/edit_product_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';

void showLongpressOptionsforProduct(
    {required BuildContext? ctx,
    required int? indext,
    required int prdouctId}) {
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProductScreen(
                          productId: prdouctId,
                        ),
                      ));
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
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Delete Product?"),
                      content:
                          const Text("Do you want to delete this product?"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              context.read<ProductBloc>().add(
                                  ProductEvent.deleteProductByid(
                                      productId: prdouctId));
                              context.read<ProductBloc>().add(
                                  const ProductEvent.getAllProductEvent());
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Delete",
                              style: TextStyle(color: Colors.red),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel"))
                      ],
                    ),
                  );
                  // Navigator.pop(context);
                  // showDialoguWidgetForDeleteCategory(
                  //     categoryDescriptionController:
                  //         categoryDescriptionController,
                  //     categoryNameController: categoryNameController,
                  //     ctx: ctx,
                  //     size: size);
                },
              ),
            )
          ],
        ),
      ),
    )),
  );
}
