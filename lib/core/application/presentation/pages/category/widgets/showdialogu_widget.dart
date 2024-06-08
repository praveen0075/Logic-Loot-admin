import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';

Future<dynamic> showDialoguWidgetForDeleteCategory(
    {BuildContext? ctx, Size? size, required int ctId}) {
  return showDialog(
      context: ctx!,
      builder: (context) => AlertDialog(
            title: const Text("Delete Category",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            content: const Text("Do you want to delete this category?"),
            actions: [
              TextButton(
                  onPressed: () async {
                    context
                        .read<CategoryBloc>()
                        .add(CategoryEvent.deleteCategory(id: ctId));
                    // context.read<CategoryBloc>().add(CategoryEvent.deleteCategory(id: cId));
                    // context.read<CategoryBloc>().add(const CategoryEvent.getCategory());
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Delete",
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(onPressed: () {}, child: const Text("Cancel"))
            ],
          ));
}
