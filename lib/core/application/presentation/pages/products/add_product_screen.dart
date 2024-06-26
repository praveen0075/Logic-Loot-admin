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
import 'package:logic_loot_admin/core/application/presentation/utils/controllers/textediting_controllers.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/keys/keys.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/textformfield_for_adding.dart';
import 'package:logic_loot_admin/core/domain/model/body_model/product_model.dart';

// final TextEditingController productNameController = TextEditingController();
// final TextEditingController productPriceController = TextEditingController();
// final TextEditingController productQuantityController = TextEditingController();
// final TextEditingController productCategoryController = TextEditingController();
// final TextEditingController productSizeController = TextEditingController();
// final TextEditingController productSpecController = TextEditingController();
// final TextEditingController productDescriptionController =
//     TextEditingController();

// final formKeyforAddProduct = GlobalKey<FormState>();

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
    TxtEdtControllers.productNameController.clear();
    TxtEdtControllers.productPriceController.clear();
    TxtEdtControllers.productQuantityController.clear();
    TxtEdtControllers.productCategoryController.clear();
    TxtEdtControllers.productSizeController.clear();
    TxtEdtControllers.productSpecController.clear();
    TxtEdtControllers.productDescriptionController.clear();
    setState(() {
      _image = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<CategoryBloc>(context).add(const CategoryEvent.getCategory());
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: "Product",
            )),
        body: SingleChildScrollView(
            child: Form(
                key: AllKeys.formKeyforAddProduct,
                child: BlocConsumer<ProductBloc, ProductState>(
                  listener: (context, state) {
                    if (state is AddSuccess) {
                      snackBarWidget(
                          context: context,
                          msg: state.successmsg,
                          bgColor: Colors.green);
                      context
                          .read<ProductBloc>()
                          .add(const ProductEvent.getAllProductEvent());
                      clearValues();
                      Navigator.pop(context);
                    } else if (state is AddFailure) {
                      snackBarWidget(
                          context: context,
                          msg: state.failuremsg,
                          bgColor: Colors.red);
                    }
                  },
                  builder: (context, state) {
                    if (state is AddLoading) {
                      return SizedBox( 
                        height: size.height,
                        // width: size.width,
                        child: const Center(child: CircularProgressIndicator()),
                      );
                    }
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                cntrlr: TxtEdtControllers.productNameController,
                                errormsg: "Name is required",
                                name: "Product Name",
                              ),
                              kheight10,
                              AdminTextformFields.textFromFieldForAddProduct(
                                cntrlr:
                                    TxtEdtControllers.productPriceController,
                                errormsg: "Enter the Price",
                                name: "Price (eg:45000)",
                              ),
                              kheight10,
                              AdminTextformFields.textFromFieldForAddProduct(
                                cntrlr:
                                    TxtEdtControllers.productQuantityController,
                                errormsg: "Name is required",
                                name: "Quantity",
                              ),
                              kheight10,
                              BlocConsumer<CategoryBloc, CategoryState>(
                                listener: (context, state) {},
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
                                    categoryList
                                        .clear(); // Clear the list to avoid duplication
                                    for (var category in state.categories) {
                                      categoryList.add(DropDownValueModel(
                                          name: category.name,
                                          value: category.id));
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
                                      initialValue: "Select Category",
                                      clearOption: true,
                                      dropDownList: categoryList,
                                      onChanged: (value) async {
                                        selectedCategoryId = value.value;
                                      },
                                    );
                                  } else {
                                    return const Text(
                                        "No Categories Available");
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
                              AdminTextformFields.descriptionField(
                                errmsg: "Specification is required",
                                name: "Specifications",
                                mxLine: 3,
                                cntrlr: TxtEdtControllers.productSpecController,
                              ),
                              kheight10,
                              AdminTextformFields.descriptionField(
                                errmsg: "Description is required",
                                name: "Description",
                                mxLine: 5,
                                cntrlr: TxtEdtControllers
                                    .productDescriptionController,
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
                                                BorderSide(
                                                    color: appcolorblue)),
                                            foregroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.red)),
                                        onPressed: () {
                                          setState(() {
                                            AllKeys.formKeyforAddProduct
                                                .currentState!
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
                                                          color:
                                                              appcolorblue))),
                                              onPressed: () async {
                                                if (AllKeys.formKeyforAddProduct
                                                    .currentState!
                                                    .validate()) {
                                                  // if (selectedCategoryId == null) {
                                                  //   snackBarWidget(
                                                  //       context: context, msg: "Category is not selected", bgColor: Colors.red);
                                                  // } else if (selectedSize == null) {
                                                  //   snackBarWidget(
                                                  //       context: context, msg: "Product size is not selected", bgColor: Colors.red);

                                                  if (_image == null) {
                                                    snackBarWidget(
                                                        context: context,
                                                        msg:
                                                            "Please select image for the product",
                                                        bgColor: Colors.red);
                                                  } else {
                                                    final productPrice = num
                                                        .parse(TxtEdtControllers
                                                            .productPriceController
                                                            .text);
                                                    final productQuantity = int
                                                        .parse(TxtEdtControllers
                                                            .productQuantityController
                                                            .text);
                                                    final productImageFile =
                                                        _image;
                                                    final productModel =
                                                        AddproductModel(
                                                      name: TxtEdtControllers
                                                          .productNameController
                                                          .text
                                                          .trim(),
                                                      price: productPrice,
                                                      size: selectedSize ?? '',
                                                      specification:
                                                          TxtEdtControllers
                                                              .productSpecController
                                                              .text
                                                              .trim(),
                                                      quantity: productQuantity,
                                                      description: TxtEdtControllers
                                                          .productQuantityController
                                                          .text
                                                          .trim(),
                                                      categoryId:
                                                          selectedCategoryId!,
                                                      imageurl:
                                                          productImageFile!,
                                                    );
                                                    context
                                                        .read<ProductBloc>()
                                                        .add(ProductEvent
                                                            .addProductEvent(
                                                                productModel:
                                                                    productModel));
                                                  }
                                                  // Print the selected category ID and size for debugging
                                                  print(
                                                      "Selected Category ID: $selectedCategoryId");
                                                  print(
                                                      "Selected Size: $selectedSize");
                                                  // }
                                                }
                                              },
                                              child: const Text("Submit"))))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ))));
  }
}
//           ),
//         ),
//       ),
//     );
//   }
// }
