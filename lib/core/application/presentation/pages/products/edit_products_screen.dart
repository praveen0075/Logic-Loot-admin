import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product/product_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product_by_id/product_by_id_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/widgets/textformfields.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/domain/model/body_model/product_model.dart';

class EditProductScreen extends StatefulWidget {
  const EditProductScreen({super.key, required this.productID});

  final int productID;

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  File? _image;
  String? productName;
  String? proudctPrice;
  int? productQuantity;
  int? productCategory;
  String? productsize;
  String? productSpec;
  String? productDescription;
  String? imageURltemp;
  // File? _imagetemp;
  String? productNametemp;
  String? proudctPricetemp;
  int? productQuantitytemp;
  int? productCategorytemp;
  String? productsizetemp;
  String? productSpectemp;
  String? productDescriptiontemp;
  List<DropDownValueModel> categoryList = [];
  int? selectedCategoryId;
  String? selectedSize;
  int? categoryId;
  String? ram;
  String? imageURl;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProductByIdBloc>(context)
        .add(ProductByIdEvent.getProductById(productId: widget.productID));
    BlocProvider.of<CategoryBloc>(context)
        .add(const CategoryEvent.getCategory());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: "Edit Product")),
      body: Center(
        child: BlocBuilder<ProductByIdBloc, ProductByIdState>(
          builder: (context, state) {
            if (state is GetProductByIdSuccess) {

              // _image = File(state.products.imageurl);
              // category = state.inventory.productCategory
              imageURltemp = state.products.imageurl;
              productNametemp = state.products.name;
              productDescriptiontemp = state.productDetails.description;
              productQuantitytemp = state.inventory.quantity;
              productSpectemp = state.productDetails.specification;
              productsizetemp = state.products.size;
              proudctPricetemp = state.products.price.toString();
              
              // imageURl = state.products.imageurl;
              return SingleChildScrollView(
                child: Column(children: [
                  kheight10,
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    strokeWidth: 1.3,
                    child: InkWell(
                      onTap: () async {
                        final picker = ImagePicker();
                        final pickedFile =
                            await picker.pickImage(source: ImageSource.gallery);

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
                          // image: DecorationImage(image: NetworkImage())
                        ),
                        child: _image == null
                            ? Image(
                              image: NetworkImage(imageURltemp!),
                                fit: BoxFit.contain,
                              )
                            : Image(
                                image: FileImage(_image!),
                                fit: BoxFit.contain,
                              ),
                      ),
                    ),
                  ),
                  kheight10,
                  editFormField(
                      reValue: productName,
                      label: "Product Name",
                      errormsg: "Please enter the product name",
                      controllerValue: state.products.name),
                  editFormField(
                      type: TextInputType.phone,
                      reValue: proudctPrice.toString(),
                      label: "Price(eg:45000)",
                      errormsg: "Please enter the product Price",
                      controllerValue: state.products.price.toString()),
                  editFormField(
                      type: TextInputType.number,
                      reValue: productQuantity.toString(),
                      label: "Quantity",
                      errormsg: "Enter the quantity of product",
                      controllerValue: state.inventory.quantity.toString()),
                  BlocConsumer<CategoryBloc, CategoryState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      if (state is GetCategoryErrorst) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: DropDownTextField(
                            dropdownColor: Colors.white,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            dropDownIconProperty:
                                IconProperty(icon: Icons.category_outlined),
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
                          ),
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
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: DropDownTextField(
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
                            dropDownIconProperty:
                                IconProperty(icon: Icons.category_outlined),
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
                            // initialValue: category,
                            clearOption: true,
                            dropDownList: categoryList,
                            onChanged: (value) async {
                              selectedCategoryId = value.value;
                            },
                          ),
                        );
                      } else {
                        return const Text("No Categories Available");
                      }
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: DropDownTextField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please select RAM";
                        } else {
                          return null;
                        }
                      },
                      initialValue: state.products.size,
                      dropdownColor: Colors.white,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  ),
                  editDescriFormField(
                      reValue: productSpec,
                      maxlin: 3,
                      controllerValue: state.productDetails.specification,
                      errormsg: "Please enter the specifications",
                      label: "Specifications"),
                  editDescriFormField(
                      reValue: productDescription,
                      maxlin: 4,
                      controllerValue: state.productDetails.description,
                      errormsg: "Please enter the description",
                      label: "Description"),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(child: Buttons.clearButton(onPressed: () {})),
                        kwidth15,
                        Expanded(
                            child: BlocConsumer<ProductBloc, ProductState>(
                          listener: (context, state) {
                          },
                          builder: (context, state) {
                            if(state is Loading){
                              return const Center(child: CircularProgressIndicator(),);
                            }else{
                            return Buttons.saveButton(
                                context: context,
                                onPressed: () {
                                  final price = int.parse(proudctPrice ??
                                      proudctPricetemp!);
                                  final model = AddproductModel(
                                      name: productName ?? productNametemp!,
                                      price: price,
                                      size: productsize ?? productsizetemp!,
                                      specification: productSpec ??
                                          productSpectemp!,
                                      quantity: productQuantity ??
                                          productQuantitytemp!,
                                      description: productDescription ??
                                          productDescriptiontemp!,
                                      categoryId: productCategory ?? 1,
                                      imageurl: _image ?? File(imageURl!));
                                  context.read<ProductBloc>().add(
                                      ProductEvent.editProductById(
                                          productModel: model,
                                          productId: widget.productID));
                                });
                            }
                          },
                        )),
                      ],
                    ),
                  ),
                  kheight10,
                ]),
              );
            } else if (state is GetProductByIdFailure) {
              return Text(state.errmsg);
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }

  Widget editFormField(
      {String? label,
      String? errormsg,
      String? reValue,
      String? controllerValue,
      TextInputType? type}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          keyboardType: type,
          initialValue: controllerValue,
          // controller: TextEditingController(text: controllerValue),
          onChanged: (value) {
            reValue = value;
          },
          decoration: InputDecoration(
            label: Text(label ?? ""),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return errormsg;
            } else {
              return null;
            }
          }),
    );
  }

  Widget editDescriFormField(
      {String? label,
      String? errormsg,
      String? reValue,
      String? controllerValue,
      int? maxlin,
      TextInputType? type}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          maxLines: maxlin,
          initialValue: controllerValue,
          // controller: TextEditingController(text: controllerValue),
          onChanged: (value) {
            productName = value;
          },
          decoration: InputDecoration(
            label: Text(label ?? ""),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return errormsg;
            } else {
              return null;
            }
          }),
    );
  }
}
