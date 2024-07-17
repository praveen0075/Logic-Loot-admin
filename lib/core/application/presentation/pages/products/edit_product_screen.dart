import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product/product_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/product_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/widgets/textformfields.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/controllers/textediting_controllers.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/keys/keys.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({super.key, required this.productId});

  final int productId;

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}
class _EditProductScreenState extends State<EditProductScreen> {
  late TextEditingController _productNameController;
  late TextEditingController _productPriceController;
  late TextEditingController _productQuantityController;
  late TextEditingController _productSpecController;
  late TextEditingController _productDescriptionController;

  File? _image;
  String? selectedSize;
  int? selectedCategoryId;
  List<DropDownValueModel> categoryList = [];

  @override
  void initState() {
    super.initState();

    _productNameController = TextEditingController();
    _productPriceController = TextEditingController();
    _productQuantityController = TextEditingController();
    _productSpecController = TextEditingController();
    _productDescriptionController = TextEditingController();
  }

  @override
  void dispose() {
    _productNameController.dispose();
    _productPriceController.dispose();
    _productQuantityController.dispose();
    _productSpecController.dispose();
    _productDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(ProductEvent.getProductById(productId: widget.productId));
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBarWidget(
          title: "Edit Product",
          prIcon: IconButton(
              onPressed: () async {
                context
                    .read<ProductBloc>()
                    .add(const ProductEvent.getAllProductEvent());
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductScreen(),
                    ),
                    (route) => false);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: AllKeys.formKeyForEditProduct,
            child: BlocConsumer<ProductBloc, ProductState>(
              listener: (context, state) {
                if (state is GetProductByIdSuccess) {
                  _productNameController.text = state.products.name;
                  _productPriceController.text = state.products.price.toString();
                  _productQuantityController.text = state.inventory.quantity.toString();
                  _productSpecController.text = state.productDetails.specification;
                  _productDescriptionController.text = state.productDetails.description;
                  _image = state.products.imageurl != null ? File(state.products.imageurl) : null;
                  selectedSize = state.products.size;
                  selectedCategoryId = state.products.category;
                }
              },
              builder: (context, state) {
                if (state is Loading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is GetProductByIdFailure) {
                  return Center(child: Text(state.errmsg));
                } else if (state is GetProductByIdSuccess) {
                  return Column(
                    children: [
                      kheight10,
                      DottedBorder(
                        borderType: BorderType.RRect,
                        radius: const Radius.circular(20),
                        strokeWidth: 1.3,
                        child: InkWell(
                          onTap: () async {
                            final picker = ImagePicker();
                            final pickedFile = await picker.pickImage(
                                source: ImageSource.gallery);

                            if (pickedFile != null) {
                              setState(() {
                                _image = File(pickedFile.path);
                              });
                            }
                          },
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            height: MediaQuery.of(context).size.height / 4.7,
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: _image == null
                                ? const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add_photo_alternate_outlined,
                                        size: 29,
                                      ),
                                      kheight10,
                                      Text(
                                        "Tap here to add an image",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  )
                                : Image(
                                    image: FileImage(_image!),
                                    fit: BoxFit.contain,
                                  ),
                          ),
                        ),
                      ),
                      kheight10,
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            TextFormFieldForEdit(
                              ctrlr: _productNameController,
                              name: "Product name",
                              errormsg: "Please Enter product name",
                            ),
                            kheight10,
                            TextFormFieldForEdit(
                              ctrlr: _productPriceController,
                              name: "Price (eg:45000)",
                              errormsg: "Please Enter product price",
                            ),
                            kheight10,
                            TextFormFieldForEdit(
                              ctrlr: _productQuantityController,
                              name: "Quantity",
                              errormsg: "Quantity is required",
                            ),
                            kheight10,
                            BlocBuilder<CategoryBloc, CategoryState>(
                              builder: (context, state) {
                                if (state is GetCategoryErrorst) {
                                  return DropDownTextField(
                                    dropdownColor: Colors.white,
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    dropDownIconProperty: IconProperty(
                                        icon: Icons.category_outlined),
                                    textFieldDecoration: InputDecoration(
                                      hintText: "No Data",
                                      hintStyle:
                                          const TextStyle(color: black),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5),
                                      ),
                                    ),
                                    searchDecoration: const InputDecoration(
                                      hintText: "Search here..",
                                    ),
                                    dropdownRadius: 2,
                                    enableSearch: true,
                                    initialValue: "No Category",
                                    clearOption: true,
                                    dropDownList: const [],
                                    onChanged: (value) {},
                                  );
                                } else if (state is CategoryLoading) {
                                  return const CircularProgressIndicator();
                                } else if (state is GetCategorySuccess) {
                                  categoryList.clear(); // Clear the list to avoid duplication
                                  for (var category in state.categories) {
                                    categoryList.add(DropDownValueModel(
                                        name: category.name,
                                        value: category.id));
                                  }
                                  return DropDownTextField(
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "Please select Category";
                                      } else {
                                        return null;
                                      }
                                    },
                                    dropdownColor: Colors.white,
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    dropDownIconProperty: IconProperty(
                                        icon: Icons.category_outlined),
                                    textFieldDecoration: InputDecoration(
                                      hintText: "Select Category",
                                      hintStyle:
                                          const TextStyle(color: black),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5),
                                      ),
                                    ),
                                    searchDecoration: const InputDecoration(
                                      hintText: "Search here..",
                                    ),
                                    dropdownRadius: 2,
                                    enableSearch: true,
                                    initialValue: selectedCategoryId?.toString(),
                                    clearOption: true,
                                    dropDownList: categoryList,
                                    onChanged: (value) async {
                                      selectedCategoryId = value.value;
                                    },
                                  );
                                } else {
                                  return const Text("No Categories Available");
                                }
                              },
                            ),
                            kheight10,
                            DropDownTextField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please select RAM";
                                } else {
                                  return null;
                                }
                              },
                              dropdownColor: Colors.white,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              dropDownIconProperty:
                                  IconProperty(icon: Icons.navigate_next),
                              textFieldDecoration: InputDecoration(
                                hintText: "Select the product RAM",
                                hintStyle: const TextStyle(color: black),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              searchDecoration: const InputDecoration(
                                hintText: "Search here..",
                              ),
                              dropdownRadius: 2,
                              enableSearch: true,
                              initialValue: selectedSize,
                              clearOption: true,
                              dropDownList: const [
                                DropDownValueModel(
                                    name: '128gb', value: "128gb"),
                                DropDownValueModel(
                                    name: '256gb', value: "256gb"),
                                DropDownValueModel(
                                    name: '512gb', value: "512gb"),
                                DropDownValueModel(name: '1tb', value: "1tb"),
                              ],
                              onChanged: (value) async {
                                selectedSize = value.value.toString();
                                print("Selected size: $selectedSize");
                              },
                            ),
                            kheight10,
                            DescriptionTextFormFieldForEdit(
                              cntrlr: _productSpecController,
                              name: "Product specifications",
                              errormsg: "Specification is required",
                              maxline: 3,
                            ),
                            kheight10,
                            DescriptionTextFormFieldForEdit(
                                cntrlr: _productDescriptionController,
                                name: "Description",
                                errormsg: "Description is required",
                                maxline: 5),
                            kheight10,
                            Row(
                              children: [
                                Expanded(
                                    child: Buttons.clearButton(
                                        onPressed: () {})),
                                kwidth10,
                                Expanded(
                                    child: Buttons.saveButton(
                                        context: context,
                                        onPressed: () {
                                          if (AllKeys.formKeyForEditProduct.currentState!
                                              .validate()) {

                                            // context
                                            //     .read<ProductBloc>()
                                            //     .add();
                                          }
                                        }))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

class DescriptionTextFormFieldForEdit extends StatelessWidget {
  const DescriptionTextFormFieldForEdit({
    super.key,
    required this.maxline,
    required this.name,
    required this.errormsg,
    required this.cntrlr,
  });

  final int maxline;
  final String name;
  final String errormsg;
  final TextEditingController cntrlr;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxline,
      // controller: cntrlr,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: name,
          hintStyle: const TextStyle(color: black),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          )),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errormsg;
        } else {
          return null;
        }
      },
    );
  }
}

class TextFormFieldForEdit extends StatelessWidget {
  const TextFormFieldForEdit({
    super.key,
    required this.name,
    required this.errormsg,
    required this.ctrlr,
  });

  final String name;
  final String errormsg;
  final TextEditingController ctrlr;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // onChanged: (value) {
      //   productName = value;
      // },
      controller: ctrlr,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          hintText: name,
          hintStyle: const TextStyle(color: black),
          // label: Text("Product Name"),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          )),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errormsg;
        } else {
          return null;
        }
      },
    );
  }
}
