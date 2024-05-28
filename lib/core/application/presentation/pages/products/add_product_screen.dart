import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product/product_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/textformfield_for_adding.dart';
import 'package:logic_loot_admin/core/domain/model/body_model/product_model.dart';

final TextEditingController productNameController = TextEditingController();
final TextEditingController productPriceController = TextEditingController();
final TextEditingController productQuantityController = TextEditingController();
final TextEditingController productCategoryController = TextEditingController();
final TextEditingController productSizeController = TextEditingController();
final TextEditingController productSpecController = TextEditingController();
final TextEditingController productDescriptionController =
    TextEditingController();

final formKeyforAddProduct = GlobalKey<FormState>();

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  int? selectedCategoryId;
  String? selectedSize;
  List<DropDownValueModel> categoryList = [];
  File? _image;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CategoryBloc>(context)
        .add(const CategoryEvent.getCategory());
  }

  void clearValues() {
    productNameController.clear();
    productPriceController.clear();
    productQuantityController.clear();
    productCategoryController.clear();
    productSizeController.clear();
    productSpecController.clear();
    productDescriptionController.clear();
    setState(() {
      _image = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(50), child: AppBarWidget(title: "Product",)) ,
      body: SingleChildScrollView(
        child: Form(
          key: formKeyforAddProduct,
          child: BlocConsumer<ProductBloc, ProductState>(
            listener: (context, state) {
              if (state.isAddProductSuccess) {
                snackBarWidget(
                    context: context,
                    msg: "Successfully added Product",
                    bgColor: Colors.green);
                clearValues();
                Navigator.pop(context);
              } else if (state.isAddProductHasError) {
                snackBarWidget(
                    context: context,
                    msg: state.message ?? "Failed to add Product",
                    bgColor: Colors.red);
              }
            },
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    kheight20,
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
                          } else {
                            print('No image selected.');
                          }
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
                                      Icons.image_outlined,
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
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    ),
                    kheight20,
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          AdminTextformFields.textFromFieldForAddProduct(
                            cntrlr: productNameController,
                            errormsg: "Name is required",
                            name: "Product Name",
                          ),
                          kheight10,
                          AdminTextformFields.textFromFieldForAddProduct(
                            cntrlr: productPriceController,
                            errormsg: "Enter the Price",
                            name: "Price (eg:45000)",
                          ),
                          kheight10,
                          AdminTextformFields.textFromFieldForAddProduct(
                            cntrlr: productQuantityController,
                            errormsg: "Name is required",
                            name: "Quantity",
                          ),
                          kheight10,
                          BlocBuilder<CategoryBloc, CategoryState>(
                            builder: (context, state) {
                              if (state.isGetCategoryHasError) {
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
                              } else if (state.isLoading) {
                                return const CircularProgressIndicator();
                              } else if (state.getallCategory != null &&
                                  state.getallCategory!.isNotEmpty) {
                                categoryList
                                    .clear(); // Clear the list to avoid duplication
                                for (var category in state.getallCategory!) {
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
                          AdminTextformFields.descriptionField(
                            errmsg: "Specification is required",
                            name: "Specifications",
                            mxLine: 3,
                            cntrlr: productSpecController,
                          ),
                          kheight10,
                          AdminTextformFields.descriptionField(
                            errmsg: "Description is required",
                            name: "Description",
                            mxLine: 5,
                            cntrlr: productDescriptionController,
                          ),
                          kheight10,
                          Row(
                            children: [
                              Expanded(
                                  child: SizedBox(
                                height: 50,
                                child: OutlinedButton(
                                    style: const ButtonStyle(
                                        side: MaterialStatePropertyAll(
                                            BorderSide(color: appcolorblue)),
                                        foregroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.red)),
                                    onPressed: () {
                                      setState(() {
                                        formKeyforAddProduct.currentState!
                                            .reset();
                                        clearValues();
                                      });
                                    },
                                    child: const Text("Clear")),
                              )),
                              kwidth15,
                              Expanded(
                                  child: SizedBox(
                                      height: 50,
                                      child: OutlinedButton(
                                          style: const ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      appcolorblue),
                                              foregroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.white),
                                              side: MaterialStatePropertyAll(
                                                  BorderSide(
                                                      color: appcolorblue))),
                                          onPressed: () {
                                            if (formKeyforAddProduct
                                                .currentState!
                                                .validate()) {
                                              // if (selectedCategoryId == null) {
                                              //   snackBarWidget(
                                              //       context: context, msg: "Category is not selected", bgColor: Colors.red);
                                              // } else if (selectedSize == null) {
                                              //   snackBarWidget(
                                              //       context: context, msg: "Product size is not selected", bgColor: Colors.red);
                                            }
                                            if (_image == null) {
                                              snackBarWidget(
                                                  context: context,
                                                  msg:
                                                      "Please select image for the product",
                                                  bgColor: Colors.red);
                                            } else {
                                              final productPrice = num.parse(
                                                  productPriceController.text);
                                              final productQuantity = int.parse(
                                                  productQuantityController
                                                      .text);
                                              final productImageFile = _image;
                                              final productModel =
                                                  AddproductModel(
                                                name: productNameController.text
                                                    .trim(),
                                                price: productPrice,
                                                size: selectedSize ?? '',
                                                specification:
                                                    productSpecController.text
                                                        .trim(),
                                                quantity: productQuantity,
                                                description:
                                                    productDescriptionController
                                                        .text
                                                        .trim(),
                                                categoryId: selectedCategoryId!,
                                                imageurl: productImageFile!,
                                              );
                                              context.read<ProductBloc>().add(
                                                  ProductEvent.addProductEvent(
                                                      productModel:
                                                          productModel));
                                              context.read<ProductBloc>().add(
                                                  const ProductEvent
                                                      .getAllProductEvent());
                                            }
                                            // Print the selected category ID and size for debugging
                                            print(
                                                "Selected Category ID: $selectedCategoryId");
                                            print(
                                                "Selected Size: $selectedSize");
                                            // }
                                          },
                                          child: const Text("Submit"))))
                            ],
                          ),
                          // KbuttonWidget(size: size, formKey: formKey, labeltxt: "Clear "),
                          // KbuttonWidget(size: size, formKey: formKey, labeltxt: "Submit"),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.end,
                          //   children: [
                          //     TextButton(
                          //       style: const ButtonStyle(),
                          //       onPressed: () {
                          //         // Clear logic here if needed
                          //       },
                          //       child: const Text(
                          //         "Clear",
                          //         style: TextStyle(color: Colors.red, fontSize: 20),
                          //       ),
                          //     ),
                          //     TextButton(
                          //       onPressed: ()async{
                          //         if (formKey.currentState!.validate()) {
                          //           if (selectedCategoryId == null) {
                          //             snackBarWidget(
                          //                 context: context, msg: "Category is not selected", bgColor: Colors.red);
                          //           } else if (selectedSize == null) {
                          //             snackBarWidget(
                          //                 context: context, msg: "Product size is not selected", bgColor: Colors.red);
                          //           } else if (_image == null) {
                          //             snackBarWidget(
                          //                 context: context, msg: "Please select image for the product", bgColor: Colors.red);
                          //           } else {
                          //             final productPrice = num.parse(productPriceController.text);
                          //             final productQuantity = int.parse(productQuantityController.text);
                          //             final productImageFile = _image;
                          //             final productModel = AddproductModel(
                          //               name: productNameController.text.trim(),
                          //               price: productPrice,
                          //               size: selectedSize ?? '',
                          //               specification: productSpecController.text.trim(),
                          //               quantity: productQuantity,
                          //               description: productDescriptionController.text.trim(),
                          //               categoryId: selectedCategoryId!,
                          //               imageurl: productImageFile!,
                          //             );
                          //             context.read<ProductBloc>().add(
                          //               ProductEvent.addProductEvent(productModel: productModel));
                          //               context.read<ProductBloc>().add(const ProductEvent.getAllProductEvent());
                          //           }
                          //           // Print the selected category ID and size for debugging
                          //           print("Selected Category ID: $selectedCategoryId");
                          //           print("Selected Size: $selectedSize");
                          //         }
                          //       },
                          //       child: const Text(
                          //         "Submit",
                          //         style: TextStyle(color: appcolorblue, fontSize: 20),
                          //       ),
                          //     ),
                          // ],
                          // ),
                        ],
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
