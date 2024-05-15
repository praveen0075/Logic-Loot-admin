import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product/product_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/functions/common_functions.dart';
import 'package:logic_loot_admin/core/domain/model/body_model/product_model.dart';

final _formkey = GlobalKey<FormState>();

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  TextEditingController productNameController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  TextEditingController productSizeContoller = TextEditingController();
  TextEditingController productSpecContoller = TextEditingController();
  TextEditingController productQuantityController = TextEditingController();
  TextEditingController productDescriptionControler = TextEditingController();
  TextEditingController productCategoryController = TextEditingController();
  String? imagePath;
  File? imageu;

  // @override
  // void initState() {
  //   super.initState();
  // }

  // @override
  @override
  Widget build(BuildContext context) {
    // int? categoryId;
    // String? categoryName;
    // TextEditingController categoryController = TextEditingController();

    BlocProvider.of<CategoryBloc>(context)
        .add(const CategoryEvent.getCategory());

    // var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add product"),
      ),
      body: SingleChildScrollView(
        child: BlocConsumer<ProductBloc, ProductState>(
          listener: (context, state) {
            if(state.isAddProductHasError){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message??"Failed to add product")));
            }else if(state.isAddProductSuccess){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message??"Product added successfully")));
            }
          },
          builder: (context, state) {
            if(state.isLoading){
              return const Center(child: CircularProgressIndicator());
            }else{
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Form(
                  key: _formkey,
                  child: BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () async {
                              final image = await CommonFunctions.getImage();
                              imageu = File(image!.path);
                              // if (image != null) {
                              setState(() {
                                imagePath = image.path;
                              });
                              // }
                            },
                            child: Container(
                                height: 250,
                                width: 250,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10),
                                  image: imagePath != null
                                      ? DecorationImage(
                                          image: FileImage(File(imagePath!)),
                                          fit: BoxFit.cover,
                                        )
                                      : null,
                                ),
                                child: const Center(
                                  child: Icon(Icons.add),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          // TextFormField(validator: (value) {
                          //   if(value == null){
                          //     return 'Enterr ';
                          //   }else{
                          //     return null;
                          //   }
                          // },),
                          adminTextformField(
                              text: "Product name",
                              cntrlr: productNameController,
                              errmsg: "Enter the product name"),
                          adminTextformField(
                              text: "product price",
                              cntrlr: productPriceController,
                              errmsg: "Enter the price"),
                          adminTextformField(
                              text: "product size",
                              cntrlr: productSizeContoller,
                              errmsg: "Enter the size"),
                          // BlocBuilder<CategoryBloc, CategoryState>(
                          //   builder: (context, state) {
                          //     if (state.isLoading) {
                          //       return const CircularProgressIndicator();
                          //     } else if (state.isGEtCategorySuccess) {
                          //           return PopupMenuButton<Category>(itemBuilder: (context) {
                          //             return state.getallCategory!.categories.map((Category category) {
                          //             return PopupMenuItem<Category>(
                          //               value: category,
                          //               child: Text(category.name),
                          //             );
                          //           }).toList();
                          //           },onSelected: (Category selectedCategory){
                          //             // setState(() {
                          //               categoryId = selectedCategory.id;
                          //               categoryName = selectedCategory.name;
                          //               // context.read<CategoryBloc>().add(const CategoryEvent.getCategory());
                          //             // });
                          //             print(categoryName);
                          //           },child: ListTile(
                          //             title: Text(categoryName??"Select Category"),
                          //             trailing: const Icon(Icons.arrow_drop_down,
                          //           ),));
                          //     }else{
                          //       return  DropdownButton(
                          //           items: const [DropdownMenuItem(child: Text("No Data"))],
                          //           onChanged: (val) {},);
                          //     }
                          //   },
                          // ),
                          adminTextformField(
                              text: "product sepecification",
                              cntrlr: productSpecContoller,
                              errmsg: "Enter the specifications"),
                          adminTextformField(
                              text: "Quantity",
                              cntrlr: productQuantityController,
                              errmsg: "Enter the product quantity"),
                          adminTextformField(
                              text: "description",
                              cntrlr: productDescriptionControler,
                              errmsg: "Enter the product description"),
                          adminTextformField(
                              text: "category",
                              cntrlr: productCategoryController,
                              errmsg: "Enter the product description"),
                          ElevatedButton(
                              onPressed: () async {
                                if (_formkey.currentState!.validate()) {
                                  final prize =
                                      num.parse(productPriceController.text);
                                  final category =
                                      int.parse(productCategoryController.text);
                                  final quantity =
                                      int.parse(productQuantityController.text);

                                  final prdctModel = AddproductModel(
                                      name: productNameController.text,
                                      price: prize,
                                      size: productSizeContoller.text,
                                      specification: productSpecContoller.text,
                                      quantity: quantity,
                                      description:
                                          productDescriptionControler.text,
                                      categoryId: category,
                                      imageurl: imageu!);

                                  context.read<ProductBloc>().add(
                                      ProductEvent.addProductEvent(
                                          productModel: prdctModel));
                                          imageu = null;
                                          imagePath = null;
                                          productCategoryController.clear();
                                          productDescriptionControler.clear();
                                          productNameController.clear();
                                          productPriceController.clear();
                                          productSizeContoller.clear();
                                          productQuantityController.clear();
                                          productSpecContoller.clear();
                                  print("block called");
                                }
                              },
                              child: const Text("Submit product"))
                        ],
                      );
                    },
                  ),
                ),
              ),
            );
            }
          },
        ),
      ),
    );
  }

  TextFormField adminTextformField(
      {String? text, TextEditingController? cntrlr, String? errmsg}) {
    return TextFormField(
      controller: cntrlr,
      decoration:
          InputDecoration(border: const OutlineInputBorder(), hintText: text),
      validator: (value) {
        if (value!.isEmpty) {
          return errmsg;
        } else {
          return null;
        }
      },
    );
  }
}

// // import 'package:flutter/material.dart';

// // class AddProductScreen extends StatelessWidget {
// //   const AddProductScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container();
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:logic_loot_admin/core/application/presentation/widgets/textformfield.dart';

// class AddProductScreen extends StatelessWidget {
//   const AddProductScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController productNameController = TextEditingController();
//     final TextEditingController productPriceController = TextEditingController();
//     final TextEditingController productSizeController = TextEditingController();
//     final TextEditingController productSpecController = TextEditingController();
//     final TextEditingController productQuantityController = TextEditingController();
//     final TextEditingController productDescriptionController = TextEditingController();
//     final formkey = GlobalKey<FormState>();
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Add product"),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Form(
//             key: formkey ,
//             child: Column(
//               children: [
//                 Container(decoration: BoxDecoration(border: Border.all()),height: 200,width: 200,),
//                 AdminCommonTextFormField(phnController:productNameController, label: "Product Name", errormsg: "Enter product name"),
//                 AdminCommonTextFormField(phnController:productPriceController, label: "Price", errormsg: "Enter product price"),
//                 AdminCommonTextFormField(phnController:productSizeController, label: "Storage size", errormsg: "Enter product size"),
//                 AdminCommonTextFormField(phnController:productSpecController, label: "Specifications", errormsg: "Enter product Spec"),
//                 AdminCommonTextFormField(phnController:productQuantityController, label: "Quantity", errormsg: "Enter product quantity"),
//                 AdminCommonTextFormField(phnController:productDescriptionController, label: "Description", errormsg: "Enter product Description"),
//                 ElevatedButton(onPressed: (){
//                   if(formkey.currentState!.validate()){
//                     print("oikk");
//                   }
//                 }, child: const Text("Submit"))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

// }
