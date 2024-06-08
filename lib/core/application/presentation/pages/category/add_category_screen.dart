import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/controllers/textediting_controllers.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/keys/keys.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/add_button.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/add_textformfield_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';

class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("build---->");
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: "Add Category")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: AllKeys.categoryAddFormKey,
          child: Column(
            children: [
              AddTextFormFieldWidget(
                txt: "Category Name",
                cntrlr: TxtEdtControllers.addCategoryNameController,
                errmsg: "Please Enter the Category name",
              ),
              kheight20,
              TextFormField(
                minLines: 6,
                maxLines: 50,
                controller: TxtEdtControllers.addCategoryDescriptioncontroller,
                decoration: const InputDecoration(
                  hintText: "Category Description",
                  enabled: true,
                  focusedBorder: OutlineInputBorder(),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 212, 210, 234),
                ),
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
                  if (state is AddCateSucces) {
                    print("success state");
                    TxtEdtControllers.addCategoryDescriptioncontroller.clear();
                    TxtEdtControllers.addCategoryNameController.clear();
                    snackBarWidget(
                        context: context,
                        msg: state.successmsg,
                        bgColor: Colors.green);
                        Navigator.pop(context);
                        context.read<CategoryBloc>().add(const CategoryEvent.getCategory());
                    // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const CategoryScreen(),), (route) => false);
                  } else if (state is AddCategoryFailure) {
                    snackBarWidget(
                        context: context,
                        msg: state.msg,
                        bgColor: Colors.red);
                  }
                },
                builder: (context, state) {
                  if (state is CategoryLoading) {
                    print("loadinggg");
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
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
                        ],
                      ),
                    ),
                    child: AddButton(
                      txt: "Add Category",
                      onpressed: () {
                        if (AllKeys.categoryAddFormKey.currentState!
                            .validate()) {
                          final ctName =
                              TxtEdtControllers.addCategoryNameController.text;
                          final ctDescription = TxtEdtControllers
                              .addCategoryDescriptioncontroller.text;
                          context.read<CategoryBloc>().add(
                                CategoryEvent.addCategory(
                                  categoryNameValue: ctName.trim(),
                                  categoryDescriptionValue:
                                      ctDescription.trim(),
                                ),
                              );
                              // context.read<CategoryBloc>().add(const CategoryEvent.getCategory());
                        }
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
