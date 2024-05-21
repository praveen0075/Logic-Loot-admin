import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';

class AddCategoryScreen extends StatefulWidget {
  const AddCategoryScreen({super.key});

  @override
  State<AddCategoryScreen> createState() => _AddCategoryScreenState();
}

class _AddCategoryScreenState extends State<AddCategoryScreen> {
  final formkeyAddCat = GlobalKey<FormState>();
  final categoryNameController = TextEditingController();
  final categoryDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Category"),
        centerTitle: true,
      ),
      // drawer: const SideBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formkeyAddCat,
          child: Column(
            children: [
              TextFormField(
                controller: categoryNameController,
                decoration: const InputDecoration(
                    hintText: "Category Name",
                    enabled: true,
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 212, 210, 234)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter the Category Name";
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
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                    hintText: "Category Name",
                    enabled: true,
                    focusedBorder: OutlineInputBorder(),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 212, 210, 234)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter the Description";
                  } else {
                    return null;
                  }
                },
              ),
              kheight20,
              BlocConsumer<CategoryBloc, CategoryState>(
                listener: (context, state) {
                  if (state.isAddcategoryHasError) {
                    snackBarWidget(
                        context: context, 
                        msg: state.messag ?? "Failed to add Category",
                        bgColor: Colors.red);
                  } else if (state.isAddCategorySuccess) {
                    snackBarWidget(
                        context: context,
                        msg: state.messag ?? "Successfully added the Category",
                        bgColor: Colors.green);
                  }
                },
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Container(
                      height: size.height / 17,
                      width: size.width,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color.fromARGB(255, 77, 87, 231),
                                Color.fromARGB(255, 237, 128, 243),
                              ])),
                      child: TextButton(
                          onPressed: () async {
                            if (formkeyAddCat.currentState!.validate()) {
                              context.read<CategoryBloc>().add(
                                  CategoryEvent.addCategory(
                                      categoryNameValue:
                                          categoryNameController.text.trim(),
                                      categoryDescriptionValue:
                                          categoryDescriptionController.text
                                              .trim()));
                              context
                                  .read<CategoryBloc>()
                                  .add(const CategoryEvent.getCategory());
                              categoryDescriptionController.clear();
                              categoryNameController.clear();
                              Navigator.pop(context);
                            }
                          },
                          child: const Text(
                            "Click Here To Add Category",
                            style: TextStyle(color: Colors.white),
                          )),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
