import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/category_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';

Future<dynamic> showDialoguWidget(
    BuildContext context,
    Size size,
    TextEditingController categoryNameController,
    TextEditingController categoryDescriptionController) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Add Category",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      content: SizedBox(
        // color: Colors.blue,
        height: size.height / 3.3,
        child: SingleChildScrollView(
          child: Form(
            key: formkeycat,
            child: Column(
              children: [
                TextFormField(
                  controller: categoryNameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      hintText: 'Category Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter the category name";
                    } else {
                      return null;
                    }
                  },
                ),
                kheight20,
                TextFormField(
                  minLines: 6,
                  maxLines: 50,
                  controller: categoryDescriptionController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      // prefixIcon: Icon(
                      //   Icons.category,
                      //   color: Color.fromARGB(255, 77, 87, 231),
                      // ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(15)),
                      //   borderSide: BorderSide(color: Colors.teal)
                      // ),
                      // enabledBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(15)),
                      //       borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 77, 87, 231)),
                      //     ),
                      // errorBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: 'Description....',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter the Description";
                    } else {
                      return null;
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
              //  color: ,
              borderRadius: BorderRadius.circular(10)),
          child: TextButton(
              onPressed: () {
                categoryNameController.clear();
                categoryDescriptionController.clear();
              },
              child: const Text(
                "Clear",
                style: TextStyle(color: Colors.red),
              )),
        ),
        TextButton(
            onPressed: ()async{
              if (formkeycat.currentState!.validate()) {
                context.read<CategoryBloc>().add(CategoryEvent.addCategory(
                    category: categoryNameController.text.trim(),
                    description: categoryDescriptionController.text.trim()));
                    context.read<CategoryBloc>().add(const CategoryEvent.getCategory());
                    
              }
                categoryDescriptionController.clear();
                    categoryNameController.clear();
            },
            child: const Text(
              "Click here to add category",
            )),
      ],
    ),
  );
}

Future<dynamic> showDialoguWidgetForEditCategory(
    {BuildContext? ctx,
    Size? size,
    TextEditingController? categoryNameController,
    TextEditingController? categoryDescriptionController}) {
  return showDialog(
    context: ctx!,
    builder: (context) => AlertDialog(
      title: const Text("Edit Category",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      content: SizedBox(
        // color: Colors.blue,
        height: size!.height / 3.3,
        child: SingleChildScrollView(
          child: Form(
            key: formkeycat,
            child: Column(
              children: [
                TextFormField(
                  controller: categoryNameController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      hintText: 'Category Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter the category name";
                    } else {
                      return null;
                    }
                  },
                ),
                kheight20,
                TextFormField(
                  minLines: 6,
                  maxLines: 50,
                  controller: categoryDescriptionController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      // prefixIcon: Icon(
                      //   Icons.category,
                      //   color: Color.fromARGB(255, 77, 87, 231),
                      // ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(15)),
                      //   borderSide: BorderSide(color: Colors.teal)
                      // ),
                      // enabledBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(15)),
                      //       borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 77, 87, 231)),
                      //     ),
                      // errorBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.all(Radius.circular(20))),
                      hintText: 'Description....',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter the Description";
                    } else {
                      return null;
                    }
                  },
                )
              ],
            ),  
          ),
        ),
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
              //  color: ,
              borderRadius: BorderRadius.circular(10)),
          child: TextButton(
              onPressed: () {
                categoryNameController!.clear();
                categoryDescriptionController!.clear();
              },
              child: const Text(
                "Clear",
                style: TextStyle(color: Colors.red),
              )),
        ),
        TextButton(
            onPressed: () {
              if (formkeycat.currentState!.validate()) {}
            },
            child: const Text(
              "Click here to Update category",
            )),
      ],
    ),
  );
}

Future<dynamic> showDialoguWidgetForDeleteCategory(
    {BuildContext? ctx,
    Size? size,
    TextEditingController? categoryNameController,
    TextEditingController? categoryDescriptionController}) {
  return showDialog(
      context: ctx!,
      builder: (context) => AlertDialog(
            title: const Text("Delete Category",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            content: const Text("Do you want to delete this category?"),
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
