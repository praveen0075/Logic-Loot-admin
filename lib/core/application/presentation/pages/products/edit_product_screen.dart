import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product/product_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/product_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/widgets/textformfields.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/keys/keys.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({super.key, required this.productId});

  final int productId;

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  String? selectedSize;
  File? _image;
  String productName = "";
  int productPrice = 0;
  int productQuantity = 0;
  int quantityId = 0;
  String productStorage = "";
  String productDescription = "";
  String productSpec = "";
  List<DropDownValueModel> categoryList = [];
  int? selectedCategoryId;
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CategoryBloc>(context)
        .add(const CategoryEvent.getCategory());
    BlocProvider.of<ProductBloc>(context)
        .add(ProductEvent.getProductById(productId: widget.productId));
    var size = MediaQuery.of(context).size;
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
              listener: (context, state) {},
              builder: (context, state) {
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
                          } else {}
                        },
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          height: size.height / 4.7,
                          width: size.width / 2,
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
                          const TextFormFieldForEdit(
                            name: "Product name",
                            errormsg: "Please Enter product name",
                          ),
                          kheight10,
                          const TextFormFieldForEdit(
                            name: "Price (eg:45000)",
                            errormsg: "Please Enter product pricce",
                          ),
                          kheight10,
                          const TextFormFieldForEdit(
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
                                  initialValue: "No Category",
                                  clearOption: true,
                                  dropDownList: const [],
                                  onChanged: (value) {},
                                );
                              } else if (state is CategoryLoading) {
                                return const CircularProgressIndicator();
                              } else if (state is GetCategorySuccess) {
                                categoryList
                                    .clear(); // Clear the list to avoid duplication
                                for (var category in state.categories) {
                                  categoryList.add(DropDownValueModel(
                                      name: category.name, value: category.id));
                                }
                                return DropDownTextField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
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
                                  initialValue: "Select Category",
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
                              if (value!.isEmpty) {
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
                              hintText: "Select the prouct RAM",
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
                            clearOption: true,
                            dropDownList: const [
                              DropDownValueModel(name: '128gb', value: "128gb"),
                              DropDownValueModel(name: '256gb', value: "256gb"),
                              DropDownValueModel(name: '512gb', value: "512gb"),
                              DropDownValueModel(name: '1tb', value: "1tb"),
                            ],
                            onChanged: (value) async {
                              selectedSize = value.value.toString();
                              print("Selected size: $selectedSize");
                            },
                          ),
                          kheight10,
                          const DescriptionTextFormFieldForEdit(
                            name: "Product specifications",
                            errormsg: "Specification is required",
                            maxline: 3,
                          ),
                          kheight10,
                          const DescriptionTextFormFieldForEdit(
                              name: "Description",
                              errormsg: "Descritption is required",
                              maxline: 5),
                          kheight10,
                          Row(
                            children: [
                              Expanded(
                                  child: Buttons.clearButton(onPressed: () {})),
                              kwidth10,
                              Expanded(
                                  child: Buttons.saveButton(
                                      context: context,
                                      onPressed: () {
                                        if (AllKeys
                                            .formKeyForEditProduct.currentState!
                                            .validate()) {}
                                      }))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                );
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
  });

  final int maxline;
  final String name;
  final String errormsg;

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
  });

  final String name;
  final String errormsg;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // onChanged: (value) {
      //   productName = value;
      // },
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
