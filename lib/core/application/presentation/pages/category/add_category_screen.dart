import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/category_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';

final formkeyAddCat = GlobalKey<FormState>();

class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool hasShownSnackbar = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Category"),
        centerTitle: true,
      ),
      // drawer: const SideBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocConsumer<CategoryBloc, CategoryState>(
          listener: (context, state) {
             if (!hasShownSnackbar) {
              if (state.isAddcateHasError) {
                snackBarWidget(context: context, msg: state.messag ?? "Failed to add Category", bgColor: Colors.red);
                categoryDescriptionController.clear();
                categoryNameController.clear();
                hasShownSnackbar = true;
              } else if (state.isAddCategorySuccess) {
                snackBarWidget(context: context, msg: state.messag ?? "Category Successfully added", bgColor: Colors.green);
                Navigator.pop(context);
                hasShownSnackbar = true;
              }
            }
          },
          builder: (context, state) {
            return Form(
              key: formkeyAddCat,
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            categoryNameController.clear();
                            categoryDescriptionController.clear();
                          },
                          child: const Text(
                            "Clear",
                            style: TextStyle(color: Colors.red),
                          )),
                      TextButton(
                          onPressed: () {
                            if (formkeyAddCat.currentState!.validate()) {
                              context.read<CategoryBloc>().add(
                                  CategoryEvent.addCategory(
                                      category:
                                          categoryNameController.text.trim(),
                                      description: categoryDescriptionController
                                          .text
                                          .trim()));
                                          hasShownSnackbar = false;
                                          categoryNameController.clear();
                                          categoryDescriptionController.clear();
                            }
                          },
                          child: const Text(
                            "Click here to Update category",
                          )),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
