// import 'package:dotted_border/dotted_border.dart';
// import 'package:dropdown_textfield/dropdown_textfield.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:logic_loot_admin/core/application/bloc/product/product_bloc.dart';
// import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
// import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
// import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
// import 'package:logic_loot_admin/core/application/presentation/widgets/textformfield_for_adding.dart';

// class ProductEditScreen extends StatefulWidget {
//   const ProductEditScreen({super.key, required this.productId});

//   final int productId;

//   @override
//   State<ProductEditScreen> createState() => _ProductEditScreenState();
// }

// class _ProductEditScreenState extends State<ProductEditScreen> {
//   late TextEditingController _nameController;
//   late TextEditingController _priceController;
//   late TextEditingController _sizeController;
//   late TextEditingController _specificationController;
//   late TextEditingController _quantityController;
//   late TextEditingController _descriptionController;

//   @override
//   void initState() {
//     super.initState();
//     BlocProvider.of<ProductBloc>(context)
//         .add(ProductEvent.getProductById(productId: widget.productId));
//   }

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _priceController.dispose();
//     _sizeController.dispose();
//     _specificationController.dispose();
//     _quantityController.dispose();
//     _descriptionController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: const PreferredSize(
//           preferredSize: Size.fromHeight(50),
//           child: AppBarWidget(
//             title: "Edit Product",
//           )),
//       body: BlocConsumer<ProductBloc, ProductState>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           if (state is GetProductByIdLoading) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (state is GetProductByIdFailure) {
//             return Center(
//               child: Text(state.errmsg),
//             );
//           } else if (state is GetProductByIdSuccess) {
//             _nameController = TextEditingController(text: state.products.name);
//             _priceController =
//                 TextEditingController(text: state.products.price.toString());
//             _sizeController = TextEditingController(text: state.products.size);
//             _specificationController =
//                 TextEditingController(text: state.productDetails.specification);
//             _quantityController = TextEditingController(
//                 text: state.inventory.quantity.toString());
//             _descriptionController =
//                 TextEditingController(text: state.productDetails.description);
//             return Padding(
//               padding: const EdgeInsets.all(10),
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     kheight10,
//                     DottedBorder(
//                       borderType: BorderType.RRect,
//                       radius: const Radius.circular(20),
//                       strokeWidth: 1.3,
//                       // dashPattern: [10, 18],
//                       child: Container(
//                         clipBehavior: Clip.hardEdge,
//                         height: size.height / 4.7,
//                         width: size.width / 2,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         // child: Image.network(product.imageurl),
//                       ),
//                     ),
//                     kheight20,
//                     AdminTextformFields.textFromFieldForEditProduct(
//                         // initValue: "hskjf",
//                         name: "",
//                         errormsg: "Please enter you name",
//                         cntrlr: _nameController),
//                     kheight20,
//                     AdminTextformFields.textFromFieldForEditProduct(
//                         // initValue: "jskdj",
//                         name: "Product name",
//                         errormsg: "Please enter you name",
//                         cntrlr: _priceController),
//                     kheight20,
//                     AdminTextformFields.textFromFieldForEditProduct(
//                         // initValue: "klsdf",
//                         name: "Product name",
//                         errormsg: "Please enter you name",
//                         cntrlr: _quantityController),
//                     kheight20,
//                     DropDownTextField(
//                       // controller: productCategoryController ,
//                       dropdownColor: Colors.white,
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       dropDownIconProperty:
//                           IconProperty(icon: Icons.category_outlined),
//                       textFieldDecoration: InputDecoration(
//                           hintText: "Select Category",
//                           hintStyle: const TextStyle(color: black),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5))),
//                       searchDecoration: const InputDecoration(
//                         hintText: "Search here..",
//                       ),
//                       dropdownRadius: 2,
//                       enableSearch: true,
//                       initialValue: "Select Category",
//                       clearOption: true,
//                       dropDownList: const [
//                         DropDownValueModel(name: 'name1', value: "value1"),
//                         DropDownValueModel(name: 'name2', value: "value2"),
//                         DropDownValueModel(name: 'name3', value: "value3"),
//                         DropDownValueModel(name: 'name4', value: "value4"),
//                         DropDownValueModel(name: 'name5', value: "value5"),
//                         DropDownValueModel(name: 'name6', value: "value6"),
//                         DropDownValueModel(name: 'name7', value: "value7"),
//                         DropDownValueModel(name: 'name8', value: "value8")
//                       ],
//                       onChanged: (value) {},
//                     ),
//                     kheight20,
//                     DropDownTextField(
//                       dropdownColor: Colors.white,
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       dropDownIconProperty:
//                           IconProperty(icon: Icons.navigate_next),
//                       textFieldDecoration: InputDecoration(
//                           hintText: "Select Product Size",
//                           hintStyle: const TextStyle(color: black),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5))),
//                       searchDecoration: const InputDecoration(
//                         hintText: "Search here..",
//                       ),
//                       dropdownRadius: 2,
//                       enableSearch: true,
//                       initialValue: "Select Category",
//                       clearOption: true,
//                       dropDownList: const [
//                         DropDownValueModel(name: '128gb', value: "128gb"),
//                         DropDownValueModel(name: '256gb', value: "256gb"),
//                         DropDownValueModel(name: '512gb', value: "512gb"),
//                         DropDownValueModel(name: '1tb', value: "1tb"),
//                       ],
//                       onChanged: (value) {},
//                     ),
//                     kheight20,
//                     AdminTextformFields.textFromFieldForEditProduct(
//                         // initValue: "ksdhf",
//                         name: "Product name",
//                         errormsg: "Please enter you name",
//                         cntrlr: _specificationController),
//                     kheight20,
//                     AdminTextformFields.textFromFieldForEditProduct(
//                         // initValue: "ksdf",
//                         name: "Product name",
//                         errormsg: "Please enter you name",
//                         cntrlr: _descriptionController),
//                     kheight20,
//                     Row(
//                       children: [
//                         Expanded(
//                             child: SizedBox(
//                           height: 50,
//                           child: OutlinedButton(
//                               style: const ButtonStyle(
//                                   side: MaterialStatePropertyAll(
//                                       BorderSide(color: appcolorblue)),
//                                   foregroundColor:
//                                       MaterialStatePropertyAll(Colors.red)),
//                               onPressed: () {},
//                               child: const Text("Clear")),
//                         )),
//                         kwidth15,
//                         Expanded(
//                             child: SizedBox(
//                                 height: 50,
//                                 child: OutlinedButton(
//                                     style: const ButtonStyle(
//                                         backgroundColor:
//                                             MaterialStatePropertyAll(
//                                                 appcolorblue),
//                                         foregroundColor:
//                                             MaterialStatePropertyAll(
//                                                 Colors.white),
//                                         side: MaterialStatePropertyAll(
//                                             BorderSide(color: appcolorblue))),
//                                     onPressed: () async {},
//                                     child: const Text("Submit"))))
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           } else if (state is Success) {
//             return Container();
//           } else {
//             return const Center(
//               child: Text("Something went wrong"),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
